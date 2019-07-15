import 'dart:async';

import 'package:firedart/auth/firebase_auth.dart';
import 'package:firedart/generated/google/firestore/v1/common.pb.dart';
import 'package:firedart/generated/google/firestore/v1/document.pb.dart' as FS;
import 'package:firedart/generated/google/firestore/v1/firestore.pbgrpc.dart';
import 'package:firedart/generated/google/protobuf/struct.pbenum.dart';
import 'package:firedart/generated/google/protobuf/timestamp.pb.dart';
import 'package:firedart/generated/google/type/latlng.pb.dart';
import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';

class Firestore {
  /* Singleton interface */
  static Firestore _instance;

  static Firestore initialize(String projectId, {String databaseId}) {
    if (_instance != null) {
      throw Exception("Firestore instance was already initialized");
    }
    FirebaseAuth auth;
    try {
      auth = FirebaseAuth.instance;
    } catch (e) {
      // FirebaseAuth isn't initialized
    }
    _instance = Firestore(projectId, databaseId: databaseId, auth: auth);
    return _instance;
  }

  static Firestore get instance {
    if (_instance == null) {
      throw Exception(
          "Firestore hasn't been initialized. Please call Firestore.initialize() before using it.");
    }
    return _instance;
  }

  /* Instance interface */
  final FirestoreClient _gateway;
  final String _database;
  _RTGateway _rtGateway;

  Firestore(String projectId, {String databaseId, FirebaseAuth auth})
      : _gateway = FirestoreClient(ClientChannel('firestore.googleapis.com'),
            options: _TokenAuthenticator.from(auth)?.toCallOptions),
        _database =
            "projects/$projectId/databases/${databaseId ?? "(default)"}/documents",
        assert(projectId.isNotEmpty) {
    _rtGateway = _RTGateway(_gateway, _database);
  }

  CollectionReference collection(String path) {
    path = _sanitizePath(path);
    if (path.split("/").length % 2 == 0) {
      throw Exception("Path is not a collection: $path");
    }
    return CollectionReference._internal(
        _gateway, _rtGateway, "$_database/$path");
  }

  DocumentReference document(String path) {
    path = _sanitizePath(path);
    if (path.split("/").length % 2 == 1) {
      throw Exception("Path is not a document: $path");
    }
    return DocumentReference._internal(
        _gateway, _rtGateway, "$_database/$path");
  }

  String _sanitizePath(String path) {
    return path.startsWith("/") ? path.substring(1) : path;
  }
}

class _TokenAuthenticator {
  factory _TokenAuthenticator.from(FirebaseAuth auth) {
    return auth != null ? _TokenAuthenticator._internal(auth) : null;
  }

  final FirebaseAuth auth;

  _TokenAuthenticator._internal(this.auth);

  Future<void> authenticate(Map<String, String> metadata, String uri) async {
    var idToken = await auth.tokenProvider.idToken;
    metadata['authorization'] = "Bearer ${idToken}";
  }

  CallOptions get toCallOptions => CallOptions(providers: [authenticate]);
}

class _RTGateway {
  final FirestoreClient gateway;
  final String database;
  final streamController = StreamController<ListenRequest>();
  Stream<ListenResponse> stream;

  _RTGateway(this.gateway, this.database);

  Stream<Document> subscribe(String path) {
    stream ??= gateway
        .listen(streamController.stream,
            options: CallOptions(
                metadata: {'google-cloud-resource-prefix': database}))
        .asBroadcastStream();

    final documentsTarget = Target_DocumentsTarget()..documents.add(path);
    final target = Target()..documents = documentsTarget;
    final request = ListenRequest()
      ..database = database
      ..addTarget = target;

    streamController.add(request);

    return stream
        .where((response) => (response.hasDocumentChange() &&
                response.documentChange.document.name == path ||
            (response.hasDocumentDelete() || response.hasDocumentRemove()) &&
                response.documentDelete.document == path))
        .map((response) => response.hasDocumentChange()
            ? Document._internal(
                gateway, this, response.documentChange.document)
            : null);
  }
}

abstract class _Reference {
  final FirestoreClient _gateway;
  final _RTGateway _rtGateway;
  final String _fullPath;

  _Reference(this._gateway, this._rtGateway, this._fullPath);

  @override
  bool operator ==(other) {
    return runtimeType == other.runtimeType && _fullPath == other._fullPath;
  }

  @override
  String toString() {
    return "$runtimeType: $_fullPath";
  }

  FS.Document _encodeMap(Map<String, dynamic> map) {
    var document = FS.Document();
    map.forEach((key, value) {
      document.fields[key] = _encode(value);
    });
    return document;
  }
}

class CollectionReference extends _Reference {
  CollectionReference._internal(
      FirestoreClient gateway, _RTGateway rtGateway, String path)
      : super(gateway, rtGateway, path);

  DocumentReference document(String id) {
    return DocumentReference._internal(_gateway, _rtGateway, "$_fullPath/$id");
  }

  Future<List<Document>> get() async {
    var request = ListDocumentsRequest()
      ..parent = _fullPath.substring(0, _fullPath.lastIndexOf("/"))
      ..collectionId = _fullPath.substring(_fullPath.lastIndexOf("/") + 1);
    var response = await _gateway.listDocuments(request);
    return response.documents
        .map((rawDocument) =>
            Document._internal(_gateway, _rtGateway, rawDocument))
        .toList(growable: false);
  }

  /// Create a document with a random id.
  Future<Document> add(Map<String, dynamic> map) async {
    var split = _fullPath.split("/");
    var parent = split.sublist(0, split.length - 1).join("/");
    var collectionId = split.last;
    var document = _encodeMap(map);

    var request = CreateDocumentRequest()
      ..parent = parent
      ..collectionId = collectionId
      ..document = document;

    var response = await _gateway.createDocument(request);
    return Document._internal(_gateway, _rtGateway, response);
  }
}

class DocumentReference extends _Reference {
  DocumentReference._internal(
      FirestoreClient gateway, _RTGateway rtGateway, String path)
      : super(gateway, rtGateway, path);

  CollectionReference collection(String id) {
    return CollectionReference._internal(
        _gateway, _rtGateway, "$_fullPath/$id");
  }

  Future<Document> get() async {
    var rawDocument =
        await _gateway.getDocument(GetDocumentRequest()..name = _fullPath);
    return Document._internal(_gateway, _rtGateway, rawDocument);
  }

  Stream subscribe() {
    return _rtGateway.subscribe(_fullPath);
  }

  /// Check if a document exists.
  Future<bool> exists() async {
    try {
      await get();
      return true;
    } catch (_) {
      return false;
    }
  }

  /// Create a document if it doesn't exist, otherwise throw exception.
  Future<Document> create(Map<String, dynamic> map) async {
    var split = _fullPath.split("/");
    var parent = split.sublist(0, split.length - 2).join("/");
    var collectionId = split[split.length - 2];
    var documentId = split.last;
    var document = _encodeMap(map);

    var request = CreateDocumentRequest()
      ..parent = parent
      ..collectionId = collectionId
      ..documentId = documentId
      ..document = document;

    var response = await _gateway.createDocument(request);
    return Document._internal(_gateway, _rtGateway, response);
  }

  /// Create or update a document.
  /// In the case of an update, any fields not referenced in the payload will be deleted.
  Future<void> set(Map<String, dynamic> map) async {
    var document = _encodeMap(map)..name = _fullPath;

    var request = UpdateDocumentRequest()..document = document;

    await _gateway.updateDocument(request);
  }

  /// Create or update a document.
  /// In case of an update, fields not referenced in the payload will remain unchanged.
  Future<void> update(Map<String, dynamic> map) async {
    var document = _encodeMap(map)..name = _fullPath;

    var mask = DocumentMask();
    map.keys.forEach((key) => mask.fieldPaths.add(key));

    var request = UpdateDocumentRequest()
      ..updateMask = mask
      ..document = document;

    await _gateway.updateDocument(request);
  }

  /// Deletes a document.
  Future<void> delete() async =>
      await _gateway.deleteDocument(DeleteDocumentRequest()..name = _fullPath);
}

class Document {
  final FirestoreClient _gateway;
  final _RTGateway _rtGateway;
  final FS.Document _rawDocument;

  Document._internal(this._gateway, this._rtGateway, this._rawDocument);

  String get id => path.substring(path.lastIndexOf("/") + 1);

  String get path =>
      _rawDocument.name.substring(_rawDocument.name.indexOf("/documents") + 10);

  dynamic operator [](String key) {
    if (!_rawDocument.fields.containsKey(key)) return null;
    return _decode(_rawDocument.fields[key], _gateway, _rtGateway);
  }

  @override
  String toString() {
    var output = StringBuffer("$path {");
    var first = true;
    _rawDocument.fields.keys.forEach((key) {
      output.write("${first ? "" : ", "}$key: ${this[key]}");
      first = false;
    });
    output.write("}");
    return output.toString();
  }
}

class GeoPoint {
  final double latitude;
  final double longitude;

  GeoPoint(this.latitude, this.longitude);

  GeoPoint._internal(LatLng value) : this(value.latitude, value.longitude);

  @override
  bool operator ==(other) {
    return runtimeType == other.runtimeType &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  String toString() {
    return "lat: $latitude, lon: $longitude";
  }

  LatLng _toLatLng() {
    return LatLng()
      ..latitude = latitude
      ..longitude = longitude;
  }
}

FS.Value _encode(dynamic value) {
  if (value == null) return FS.Value()..nullValue = NullValue.NULL_VALUE;

  var type = value.runtimeType;

  if (type.toString().startsWith("List")) {
    var array = FS.ArrayValue();
    (value as List).forEach((element) => array.values.add(_encode(element)));
    return FS.Value()..arrayValue = array;
  }

  if (type.toString().contains("Map")) {
    var map = FS.MapValue();
    (value as Map).forEach((key, val) => map.fields[key] = _encode(val));
    return FS.Value()..mapValue = map;
  }

  if (type.toString() == "Uint8List") {
    return FS.Value()..bytesValue = value;
  }

  switch (type) {
    case bool:
      return FS.Value()..booleanValue = value;
    case int:
      return FS.Value()..integerValue = Int64(value);
    case double:
      return FS.Value()..doubleValue = value;
    case DateTime:
      return FS.Value()..timestampValue = Timestamp.fromDateTime(value);
    case String:
      return FS.Value()..stringValue = value;
    case DocumentReference:
      return FS.Value()..referenceValue = value._fullPath;
    case GeoPoint:
      return FS.Value()..geoPointValue = value._toLatLng();
    default:
      throw Exception("Unknown type: ${type}");
  }
}

dynamic _decode(FS.Value value, FirestoreClient gateway, _RTGateway rtGateway) {
  switch (value.whichValueType()) {
    case FS.Value_ValueType.nullValue:
      return null;
    case FS.Value_ValueType.booleanValue:
      return value.booleanValue;
    case FS.Value_ValueType.doubleValue:
      return value.doubleValue;
    case FS.Value_ValueType.stringValue:
      return value.stringValue;
    case FS.Value_ValueType.integerValue:
      return value.integerValue.toInt();
    case FS.Value_ValueType.timestampValue:
      return value.timestampValue.toDateTime().toLocal();
    case FS.Value_ValueType.bytesValue:
      return value.bytesValue;
    case FS.Value_ValueType.referenceValue:
      return DocumentReference._internal(
          gateway, rtGateway, value.referenceValue);
    case FS.Value_ValueType.geoPointValue:
      return GeoPoint._internal(value.geoPointValue);
    case FS.Value_ValueType.arrayValue:
      return value.arrayValue.values
          .map((item) => _decode(item, gateway, rtGateway))
          .toList(growable: false);
    case FS.Value_ValueType.mapValue:
      return value.mapValue.fields.map(
          (key, value) => MapEntry(key, _decode(value, gateway, rtGateway)));
    default:
      throw Exception("Unrecognized type: ${value}");
  }
}

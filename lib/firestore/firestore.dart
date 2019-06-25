import 'dart:convert';

import 'package:firedart/util/client.dart';
import 'package:firedart/auth/firebase_auth.dart';
import 'package:firedart/firestore/firestore_gateway.dart';
import 'package:http/http.dart' as http;

class Firestore {
  /* Singleton interface */
  static Firestore _instance;

  static Firestore initialize(String projectId) {
    if (_instance != null)
      throw Exception("Firestore instance was already initialized");
    FirebaseAuth auth = null;
    try {
      auth = FirebaseAuth.instance;
    } catch (e) {
      // FirebaseAuth isn't initialized
    }
    _instance = Firestore(projectId, auth: auth);
    return _instance;
  }

  static Firestore get instance {
    if (_instance == null)
      throw Exception(
          "Firestore hasn't been initialized. Please call Firestore.initialize() before using it.");
    return _instance;
  }

  /* Instance interface */
  FirestoreGateway _gateway;

  Firestore(String projectId, {http.Client httpClient, FirebaseAuth auth})
      : assert(projectId.isNotEmpty) {
    var client = httpClient ?? auth?.httpClient ?? http.Client();
    var authClient = AuthClient(client, auth?.tokenProvider);
    _gateway = FirestoreGateway(authClient, projectId);
  }

  CollectionReference collection(String id) {
    return CollectionReference._internal(_gateway, null, id);
  }
}

abstract class _Reference {
  final FirestoreGateway _gateway;
  final _Reference _parent;
  String _id;
  final String basePath;

  _Reference(this._gateway, this._parent, this._id)
      : basePath =
            "projects/${_gateway.projectId}/databases/(default)/documents" {
    if (_id.startsWith(basePath)) {
      this._id = _id.substring(basePath.length + 1);
    }
  }

  String get id => _id;

  String get path {
    return "${_parent?.path ?? basePath}/$_id";
  }

  Future<Map<String, dynamic>> _get() {
    return _gateway.get(path);
  }

  @override
  bool operator ==(other) {
    return runtimeType == other.runtimeType && path == other.path;
  }

  @override
  String toString() {
    return "$runtimeType: $path";
  }
}

class CollectionReference extends _Reference {
  CollectionReference._internal(
      FirestoreGateway gateway, _Reference parent, String name)
      : super(gateway, parent, name);

  DocumentReference document(String id) {
    return DocumentReference._internal(_gateway, this, id);
  }

  Future<List<Map<String, dynamic>>> get() async {
    var map = await _get();
    return (map["documents"] as List<dynamic>)
        .cast()
        .map<Map<String, dynamic>>((item) => item["fields"])
        .toList(growable: false);
  }

  /// Create a document with a random id.
  Future<String> add(Map<String, dynamic> document) =>
      _gateway.add(path, document);
}

class DocumentReference extends _Reference {
  DocumentReference._internal(
      FirestoreGateway gateway, _Reference parent, String name)
      : super(gateway, parent, name);

  CollectionReference collection(String name) {
    return CollectionReference._internal(_gateway, this, name);
  }

  Future<Document> get() async {
    var map = await _get();
    return Document._internal(_gateway, map["fields"]);
  }

  /// Create a document if it doesn't exist.
  Future<void> create(Map<String, dynamic> document) async {
    var parentPath = path.substring(0, path.lastIndexOf("/"));
    await _gateway.add(parentPath, document, id: id);
  }

  Future<bool> exists() => _gateway.exists(path);

  /// Create or update a document.
  /// In the case of an update, any fields not referenced in the payload will be deleted.
  Future<void> set(Map<String, dynamic> document) async {
    await _gateway.set(path, document, false);
  }

  /// Create or update a document.
  /// In case of an update, fields not referenced in the payload will remain unchanged.
  Future<void> update(Map<String, dynamic> document) async {
    await _gateway.set(path, document, true);
  }

  Future<void> delete() => _gateway.delete(path);
}

class Document {
  final FirestoreGateway _gateway;
  final Map<String, dynamic> _map;

  Document._internal(this._gateway, this._map);

  dynamic operator [](String key) {
    if (!_map.containsKey(key)) return null;
    return _decode(_map[key]);
  }

  dynamic _decode(Map<String, dynamic> map) {
    var type = map.keys.first;
    var value = map[type];

    switch (type) {
      case "nullValue":
      case "booleanValue":
      case "doubleValue":
      case "stringValue":
        return value;
      case "integerValue":
        return int.parse(value);
      case "timestampValue":
        return DateTime.parse(value).toLocal();
      case "bytesValue":
        return base64Decode(value);
      case "referenceValue":
        return DocumentReference._internal(_gateway, null, value);
      case "geoPointValue":
        return GeoPoint(
            value["latitude"].toDouble(), value["longitude"].toDouble());
      case "arrayValue":
        List values = value["values"];
        return values.map((item) => _decode(item)).toList(growable: false);
      case "mapValue":
        Map m = value["fields"];
        return m.map((key, value) => MapEntry(key, _decode(value)));
      default:
        throw Exception("Unrecognized type: $type");
    }
  }
}

class GeoPoint {
  final double latitude;
  final double longitude;

  GeoPoint(this.latitude, this.longitude);

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
}

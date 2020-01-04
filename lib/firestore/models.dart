import 'package:firedart/generated/google/firestore/v1/document.pb.dart' as fs;
import 'package:firedart/generated/google/protobuf/struct.pbenum.dart';
import 'package:firedart/generated/google/protobuf/timestamp.pb.dart';
import 'package:firedart/generated/google/type/latlng.pb.dart';
import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';

import 'firestore_gateway.dart';

abstract class Reference {
  final FirestoreGateway _gateway;
  final String path;

  String get id => path.substring(path.lastIndexOf('/') + 1);

  String get _fullPath => '${_gateway.database}/$path';

  Reference(this._gateway, String path)
      : path = _trimSlashes(path.startsWith(_gateway.database)
            ? path.substring(_gateway.database.length + 1)
            : path);

  factory Reference.create(FirestoreGateway gateway, String path) {
    return _trimSlashes(path).split('/').length % 2 == 0
        ? DocumentReference(gateway, path)
        : CollectionReference(gateway, path);
  }

  @override
  bool operator ==(other) {
    return runtimeType == other.runtimeType && _fullPath == other._fullPath;
  }

  @override
  String toString() {
    return '$runtimeType: $path';
  }

  fs.Document _encodeMap(Map<String, dynamic> map) {
    var document = fs.Document();
    map.forEach((key, value) {
      document.fields[key] = _encode(value);
    });
    return document;
  }

  static String _trimSlashes(String path) {
    path = path.startsWith('/') ? path.substring(1) : path;
    return path.endsWith('/') ? path.substring(0, path.length - 2) : path;
  }
}

class CollectionReference extends Reference {
  CollectionReference(FirestoreGateway gateway, String path)
      : super(gateway, path) {
    if (_fullPath.split('/').length % 2 == 1) {
      throw Exception('Path is not a collection: $path');
    }
  }

  DocumentReference document(String id) {
    return DocumentReference(_gateway, '$path/$id');
  }

  Future<List<Document>> get() => _gateway.getCollection(_fullPath);

  Stream<List<Document>> get stream => _gateway.streamCollection(_fullPath);

  /// Create a document with a random id.
  Future<Document> add(Map<String, dynamic> map) =>
      _gateway.createDocument(_fullPath, null, _encodeMap(map));
}

class DocumentReference extends Reference {
  DocumentReference(FirestoreGateway gateway, String path)
      : super(gateway, path) {
    if (_fullPath.split('/').length % 2 == 0) {
      throw Exception('Path is not a document: $path');
    }
  }

  CollectionReference collection(String id) {
    return CollectionReference(_gateway, '$path/$id');
  }

  Future<Document> get() => _gateway.getDocument(_fullPath);

  @Deprecated('Use the stream getter instead')
  Stream<Document> subscribe() => stream;

  Stream<Document> get stream => _gateway.streamDocument(_fullPath);

  /// Check if a document exists.
  Future<bool> get exists async {
    try {
      await get();
      return true;
    } on GrpcError catch (e) {
      if (e.code == StatusCode.notFound) {
        return false;
      } else {
        rethrow;
      }
    }
  }

  /// Create a document if it doesn't exist, otherwise throw exception.
  Future<Document> create(Map<String, dynamic> map) => _gateway.createDocument(
      _fullPath.substring(0, _fullPath.lastIndexOf('/')), id, _encodeMap(map));

  /// Create or update a document.
  /// In the case of an update, any fields not referenced in the payload will be deleted.
  Future<void> set(Map<String, dynamic> map) async =>
      _gateway.updateDocument(_fullPath, _encodeMap(map), false);

  /// Create or update a document.
  /// In case of an update, fields not referenced in the payload will remain unchanged.
  Future<void> update(Map<String, dynamic> map) =>
      _gateway.updateDocument(_fullPath, _encodeMap(map), true);

  /// Deletes a document.
  Future<void> delete() async => await _gateway.deleteDocument(_fullPath);
}

class Document {
  final FirestoreGateway _gateway;
  final fs.Document _rawDocument;

  Document(this._gateway, this._rawDocument);

  String get id => path.substring(path.lastIndexOf('/') + 1);

  String get path =>
      _rawDocument.name.substring(_rawDocument.name.indexOf('/documents') + 10);

  Map<String, dynamic> get map =>
      _rawDocument.fields.map((key, _) => MapEntry(key, this[key]));

  DocumentReference get reference => DocumentReference(_gateway, path);

  dynamic operator [](String key) {
    if (!_rawDocument.fields.containsKey(key)) return null;
    return _decode(_rawDocument.fields[key], _gateway);
  }

  @override
  String toString() => '$path $map';
}

class GeoPoint {
  final double latitude;
  final double longitude;

  GeoPoint(this.latitude, this.longitude);

  GeoPoint._internal(LatLng value) : this(value.latitude, value.longitude);

  @override
  bool operator ==(other) =>
      runtimeType == other.runtimeType &&
      latitude == other.latitude &&
      longitude == other.longitude;

  @override
  String toString() => 'lat: $latitude, lon: $longitude';

  LatLng _toLatLng() => LatLng()
    ..latitude = latitude
    ..longitude = longitude;
}

fs.Value _encode(dynamic value) {
  if (value == null) return fs.Value()..nullValue = NullValue.NULL_VALUE;

  var type = value.runtimeType;

  if (type.toString().startsWith('List')) {
    var array = fs.ArrayValue();
    (value as List).forEach((element) => array.values.add(_encode(element)));
    return fs.Value()..arrayValue = array;
  }

  if (type.toString().contains('Map')) {
    var map = fs.MapValue();
    (value as Map).forEach((key, val) => map.fields[key] = _encode(val));
    return fs.Value()..mapValue = map;
  }

  if (type.toString() == 'Uint8List') {
    return fs.Value()..bytesValue = value;
  }

  switch (type) {
    case bool:
      return fs.Value()..booleanValue = value;
    case int:
      return fs.Value()..integerValue = Int64(value);
    case double:
      return fs.Value()..doubleValue = value;
    case DateTime:
      return fs.Value()..timestampValue = Timestamp.fromDateTime(value);
    case String:
      return fs.Value()..stringValue = value;
    case DocumentReference:
      return fs.Value()..referenceValue = value._fullPath;
    case GeoPoint:
      return fs.Value()..geoPointValue = (value as GeoPoint)._toLatLng();
    default:
      throw Exception('Unknown type: ${type}');
  }
}

dynamic _decode(fs.Value value, FirestoreGateway gateway) {
  switch (value.whichValueType()) {
    case fs.Value_ValueType.nullValue:
      return null;
    case fs.Value_ValueType.booleanValue:
      return value.booleanValue;
    case fs.Value_ValueType.doubleValue:
      return value.doubleValue;
    case fs.Value_ValueType.stringValue:
      return value.stringValue;
    case fs.Value_ValueType.integerValue:
      return value.integerValue.toInt();
    case fs.Value_ValueType.timestampValue:
      return value.timestampValue.toDateTime().toLocal();
    case fs.Value_ValueType.bytesValue:
      return value.bytesValue;
    case fs.Value_ValueType.referenceValue:
      return DocumentReference(gateway, value.referenceValue);
    case fs.Value_ValueType.geoPointValue:
      return GeoPoint._internal(value.geoPointValue);
    case fs.Value_ValueType.arrayValue:
      return value.arrayValue.values
          .map((item) => _decode(item, gateway))
          .toList(growable: false);
    case fs.Value_ValueType.mapValue:
      return value.mapValue.fields
          .map((key, value) => MapEntry(key, _decode(value, gateway)));
    default:
      throw Exception('Unrecognized type: ${value}');
  }
}

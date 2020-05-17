import 'dart:collection';

import 'package:firedart/generated/google/firestore/v1/document.pb.dart' as fs;
import 'package:firedart/generated/google/firestore/v1/query.pb.dart';
import 'package:firedart/generated/google/protobuf/struct.pb.dart';
import 'package:firedart/generated/google/protobuf/struct.pbenum.dart';
import 'package:firedart/generated/google/protobuf/timestamp.pb.dart';
import 'package:firedart/generated/google/protobuf/wrappers.pb.dart';
import 'package:firedart/generated/google/type/latlng.pb.dart';
import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';

import 'firestore_encoding.dart';
import 'firestore_gateway.dart';

abstract class Reference {
  final FirestoreGateway _gateway;
  final String path;

  String get id => path.substring(path.lastIndexOf('/') + 1);

  String get _fullPath => '${_gateway.database}/$path';

  Reference(this._gateway, String path)
      : path = _trimSlashes(path.startsWith(_gateway.database) ? path.substring(_gateway.database.length + 1) : path);

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
  final FirestoreGateway gateway;

  /// Constructs a [CollectionReference] using [FirestoreGateway] and path.
  ///
  /// Throws [Exception] if path contains odd amount of '/'.
  CollectionReference(this.gateway, String path) : super(gateway, path) {
    if (_fullPath.split('/').length % 2 == 1) {
      throw Exception('Path is not a collection: $path');
    }
  }

  QueryReference where(
    String fieldPath, {
    dynamic isEqualTo,
    dynamic isLessThan,
    dynamic isLessThanOrEqualTo,
    dynamic isGreaterThan,
    dynamic isGreaterThanOrEqualTo,
    dynamic arrayContains,
    List<dynamic> arrayContainsAny,
    List<dynamic> whereIn,
    bool isNull = false,
  }) {
    return QueryReference(gateway, path).where(fieldPath,
        isEqualTo: isEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        isNull: isNull);
  }

  /// Returns [CollectionReference] that's additionally sorted by the specified
  /// [fieldPath].
  ///
  /// The field is a [String] representing a single field name.
  /// After a [CollectionReference] order by call, you cannot add any more [orderBy]
  /// calls.
  QueryReference orderBy(String fieldPath, {bool descending = false}) =>
      QueryReference(gateway, path).orderBy(fieldPath, descending: descending);

  /// Returns [CollectionReference] that's additionally limited to only return up
  /// to the specified number of documents.
  QueryReference limit(int count) => QueryReference(gateway, path).limit(count);

  DocumentReference document(String id) => DocumentReference(_gateway, '$path/$id');

  Future<Page<Document>> get({int pageSize = 1024, String nextPageToken = ''}) =>
      _gateway.getCollection(_fullPath, pageSize, nextPageToken);

  Stream<List<Document>> get stream => _gateway.streamCollection(_fullPath);

  /// Create a document with a random id.
  Future<Document> add(Map<String, dynamic> map) => _gateway.createDocument(_fullPath, null, _encodeMap(map));
}

class DocumentReference extends Reference {
  DocumentReference(FirestoreGateway gateway, String path) : super(gateway, path) {
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
  Future<Document> create(Map<String, dynamic> map) =>
      _gateway.createDocument(_fullPath.substring(0, _fullPath.lastIndexOf('/')), id, _encodeMap(map));

  /// Create or update a document.
  /// In the case of an update, any fields not referenced in the payload will be deleted.
  Future<void> set(Map<String, dynamic> map) async => _gateway.updateDocument(_fullPath, _encodeMap(map), false);

  /// Create or update a document.
  /// In case of an update, fields not referenced in the payload will remain unchanged.
  Future<void> update(Map<String, dynamic> map) => _gateway.updateDocument(_fullPath, _encodeMap(map), true);

  /// Deletes a document.
  Future<void> delete() async => await _gateway.deleteDocument(_fullPath);
}

class Document {
  final FirestoreGateway _gateway;
  final fs.Document _rawDocument;

  Document(this._gateway, this._rawDocument);

  String get id => path.substring(path.lastIndexOf('/') + 1);

  String get path => _rawDocument.name.substring(_rawDocument.name.indexOf('/documents') + 10);

  DateTime get createTime => _rawDocument.createTime.toDateTime();

  DateTime get updateTime => _rawDocument.updateTime.toDateTime();

  Map<String, dynamic> get map => _rawDocument.fields.map((key, _) => MapEntry(key, this[key]));

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

  const GeoPoint(this.latitude, this.longitude);

  /// Creates the [GeoPoint] instance using [LatLng].
  GeoPoint.fromLatLng(LatLng value) : this(value.latitude, value.longitude);

  @override
  String toString() => 'lat: $latitude, lon: $longitude';

  /// Creates the [LatLng] instance corresponding this geo point.
  LatLng toLatLng() => LatLng()
    ..latitude = latitude
    ..longitude = longitude;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GeoPoint && runtimeType == other.runtimeType && latitude == other.latitude && longitude == other.longitude;

  @override
  int get hashCode => latitude.hashCode ^ longitude.hashCode;
}

class Page<T> extends ListBase<T> {
  final _list = <T>[];
  final String nextPageToken;

  bool get hasNextPage => nextPageToken.isNotEmpty;

  @override
  int get length => _list.length;

  @override
  set length(int newLength) => _list.length = newLength;

  @override
  T operator [](int index) => _list[index];

  @override
  void operator []=(int index, T value) => _list[index] = value;

  Page(Iterable<T> iterable, this.nextPageToken) {
    _list.addAll(iterable);
  }
}

class QueryReference extends Reference {
  final StructuredQuery _structuredQuery = StructuredQuery();

  QueryReference(FirestoreGateway gateway, String path) : super(gateway, path) {
    _structuredQuery..from.add(StructuredQuery_CollectionSelector()..collectionId = id);
  }

  QueryReference where(
    String fieldPath, {
    dynamic isEqualTo,
    dynamic isLessThan,
    dynamic isLessThanOrEqualTo,
    dynamic isGreaterThan,
    dynamic isGreaterThanOrEqualTo,
    dynamic arrayContains,
    List<dynamic> arrayContainsAny,
    List<dynamic> whereIn,
    bool isNull = false,
  }) {
    if (isEqualTo != null) {
      _addFilter(fieldPath, isEqualTo, operator: StructuredQuery_FieldFilter_Operator.EQUAL);
    }
    if (isLessThan != null) {
      _addFilter(fieldPath, isLessThan, operator: StructuredQuery_FieldFilter_Operator.LESS_THAN);
    }
    if (isLessThanOrEqualTo != null) {
      _addFilter(fieldPath, isLessThanOrEqualTo, operator: StructuredQuery_FieldFilter_Operator.LESS_THAN_OR_EQUAL);
    }
    if (isGreaterThan != null) {
      _addFilter(fieldPath, isGreaterThan, operator: StructuredQuery_FieldFilter_Operator.GREATER_THAN);
    }
    if (isGreaterThanOrEqualTo != null) {
      _addFilter(fieldPath, isGreaterThanOrEqualTo, operator: StructuredQuery_FieldFilter_Operator.GREATER_THAN_OR_EQUAL);
    }
    if (arrayContains != null) {
      _addFilter(fieldPath, arrayContains, operator: StructuredQuery_FieldFilter_Operator.ARRAY_CONTAINS);
    }
    if (arrayContainsAny != null) {
      _addFilter(fieldPath, arrayContainsAny, operator: StructuredQuery_FieldFilter_Operator.ARRAY_CONTAINS_ANY);
    }
    if (whereIn != null) {
      _addFilter(fieldPath, whereIn, operator: StructuredQuery_FieldFilter_Operator.IN);
    }
    if (isNull) {
      _addFilter(fieldPath, null);
    }

    return this;
  }

  /// Returns [QueryReference] that's additionally sorted by the specified
  /// [fieldPath].
  ///
  /// The field is a [String] representing a single field name.
  /// After a [QueryReference] order by call, you cannot add any more [orderBy]
  /// calls.
  QueryReference orderBy(
    String fieldPath, {
    bool descending = false,
  }) {
    final order = StructuredQuery_Order();
    order.field_1 = StructuredQuery_FieldReference()..fieldPath = fieldPath;
    order.direction = descending ? StructuredQuery_Direction.DESCENDING : StructuredQuery_Direction.ASCENDING;
    _structuredQuery.orderBy.add(order);
    return this;
  }

  /// Returns [QueryReference] that's additionally limited to only return up
  /// to the specified number of documents.
  QueryReference limit(int count) {
    _structuredQuery.limit = Int32Value()..value = count;
    return this;
  }

  Future<List<Document>> get() => _gateway.runQuery(_structuredQuery, _fullPath);

  void _addFilter(String fieldPath, dynamic value, {StructuredQuery_FieldFilter_Operator operator}) {
    var queryFilter = StructuredQuery_Filter();
    if (value == null || operator == null) {
      var filter = StructuredQuery_UnaryFilter();
      filter.op = StructuredQuery_UnaryFilter_Operator.IS_NULL;
      filter.field_2 = StructuredQuery_FieldReference()..fieldPath = fieldPath;

      queryFilter.unaryFilter = filter;
    } else {
      var filter = StructuredQuery_FieldFilter();
      filter.op = operator;
      filter.value = _encode(value);

      final fieldReference = StructuredQuery_FieldReference()..fieldPath = fieldPath;
      filter.field_1 = fieldReference;

      queryFilter.fieldFilter = filter;
    }
    _addToComposite(queryFilter);
  }

  void _addToComposite(StructuredQuery_Filter filter) {
    StructuredQuery_CompositeFilter compositeFilter;
    if (_structuredQuery.hasWhere() && _structuredQuery.where.hasCompositeFilter()) {
      compositeFilter = _structuredQuery.where.compositeFilter;
    } else {
      compositeFilter = StructuredQuery_CompositeFilter()..op = StructuredQuery_CompositeFilter_Operator.AND;
    }

    compositeFilter.filters.add(filter);
    _structuredQuery.where = StructuredQuery_Filter()..compositeFilter = compositeFilter;
  }

  /// Delegates encoding the given [value] to [FirebaseEncoding.encode].
  fs.Value _encode(dynamic value) {
    return FirestoreEncoding.encode(value);
  }
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
      return fs.Value()..geoPointValue = (value as GeoPoint).toLatLng();
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
      return GeoPoint.fromLatLng(value.geoPointValue);
    case fs.Value_ValueType.arrayValue:
      return value.arrayValue.values.map((item) => _decode(item, gateway)).toList(growable: false);
    case fs.Value_ValueType.mapValue:
      return value.mapValue.fields.map((key, value) => MapEntry(key, _decode(value, gateway)));
    default:
      throw Exception('Unrecognized type: ${value}');
  }
}

///
//  Generated code. Do not modify.
//  source: google/firestore/v1/document.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core
    show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import '../../protobuf/timestamp.pb.dart' as $0;
import '../../type/latlng.pb.dart' as $1;

import '../../protobuf/struct.pbenum.dart' as $2;

class Document extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Document',
      package: const $pb.PackageName('google.firestore.v1'))
    ..aOS(1, 'name')
    ..m<$core.String, Value>(
        2,
        'fields',
        'Document.FieldsEntry',
        $pb.PbFieldType.OS,
        $pb.PbFieldType.OM,
        Value.create,
        null,
        null,
        const $pb.PackageName('google.firestore.v1'))
    ..a<$0.Timestamp>(3, 'createTime', $pb.PbFieldType.OM,
        $0.Timestamp.getDefault, $0.Timestamp.create)
    ..a<$0.Timestamp>(4, 'updateTime', $pb.PbFieldType.OM,
        $0.Timestamp.getDefault, $0.Timestamp.create)
    ..hasRequiredFields = false;

  Document._() : super();
  factory Document() => create();
  factory Document.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Document.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Document clone() => Document()..mergeFromMessage(this);
  Document copyWith(void Function(Document) updates) =>
      super.copyWith((message) => updates(message as Document));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Document create() => Document._();
  Document createEmptyInstance() => create();
  static $pb.PbList<Document> createRepeated() => $pb.PbList<Document>();
  static Document getDefault() => _defaultInstance ??= create()..freeze();
  static Document _defaultInstance;

  $core.String get name => $_getS(0, '');
  set name($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasName() => $_has(0);
  void clearName() => clearField(1);

  $core.Map<$core.String, Value> get fields => $_getMap(1);

  $0.Timestamp get createTime => $_getN(2);
  set createTime($0.Timestamp v) {
    setField(3, v);
  }

  $core.bool hasCreateTime() => $_has(2);
  void clearCreateTime() => clearField(3);

  $0.Timestamp get updateTime => $_getN(3);
  set updateTime($0.Timestamp v) {
    setField(4, v);
  }

  $core.bool hasUpdateTime() => $_has(3);
  void clearUpdateTime() => clearField(4);
}

enum Value_ValueType {
  booleanValue,
  integerValue,
  doubleValue,
  referenceValue,
  mapValue,
  geoPointValue,
  arrayValue,
  timestampValue,
  nullValue,
  stringValue,
  bytesValue,
  notSet
}

class Value extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Value_ValueType> _Value_ValueTypeByTag = {
    1: Value_ValueType.booleanValue,
    2: Value_ValueType.integerValue,
    3: Value_ValueType.doubleValue,
    5: Value_ValueType.referenceValue,
    6: Value_ValueType.mapValue,
    8: Value_ValueType.geoPointValue,
    9: Value_ValueType.arrayValue,
    10: Value_ValueType.timestampValue,
    11: Value_ValueType.nullValue,
    17: Value_ValueType.stringValue,
    18: Value_ValueType.bytesValue,
    0: Value_ValueType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Value',
      package: const $pb.PackageName('google.firestore.v1'))
    ..oo(0, [1, 2, 3, 5, 6, 8, 9, 10, 11, 17, 18])
    ..aOB(1, 'booleanValue')
    ..aInt64(2, 'integerValue')
    ..a<$core.double>(3, 'doubleValue', $pb.PbFieldType.OD)
    ..aOS(5, 'referenceValue')
    ..a<MapValue>(
        6, 'mapValue', $pb.PbFieldType.OM, MapValue.getDefault, MapValue.create)
    ..a<$1.LatLng>(8, 'geoPointValue', $pb.PbFieldType.OM, $1.LatLng.getDefault,
        $1.LatLng.create)
    ..a<ArrayValue>(9, 'arrayValue', $pb.PbFieldType.OM, ArrayValue.getDefault,
        ArrayValue.create)
    ..a<$0.Timestamp>(10, 'timestampValue', $pb.PbFieldType.OM,
        $0.Timestamp.getDefault, $0.Timestamp.create)
    ..e<$2.NullValue>(11, 'nullValue', $pb.PbFieldType.OE,
        $2.NullValue.NULL_VALUE, $2.NullValue.valueOf, $2.NullValue.values)
    ..aOS(17, 'stringValue')
    ..a<$core.List<$core.int>>(18, 'bytesValue', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  Value._() : super();
  factory Value() => create();
  factory Value.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Value.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Value clone() => Value()..mergeFromMessage(this);
  Value copyWith(void Function(Value) updates) =>
      super.copyWith((message) => updates(message as Value));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Value create() => Value._();
  Value createEmptyInstance() => create();
  static $pb.PbList<Value> createRepeated() => $pb.PbList<Value>();
  static Value getDefault() => _defaultInstance ??= create()..freeze();
  static Value _defaultInstance;

  Value_ValueType whichValueType() => _Value_ValueTypeByTag[$_whichOneof(0)];
  void clearValueType() => clearField($_whichOneof(0));

  $core.bool get booleanValue => $_get(0, false);
  set booleanValue($core.bool v) {
    $_setBool(0, v);
  }

  $core.bool hasBooleanValue() => $_has(0);
  void clearBooleanValue() => clearField(1);

  Int64 get integerValue => $_getI64(1);
  set integerValue(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasIntegerValue() => $_has(1);
  void clearIntegerValue() => clearField(2);

  $core.double get doubleValue => $_getN(2);
  set doubleValue($core.double v) {
    $_setDouble(2, v);
  }

  $core.bool hasDoubleValue() => $_has(2);
  void clearDoubleValue() => clearField(3);

  $core.String get referenceValue => $_getS(3, '');
  set referenceValue($core.String v) {
    $_setString(3, v);
  }

  $core.bool hasReferenceValue() => $_has(3);
  void clearReferenceValue() => clearField(5);

  MapValue get mapValue => $_getN(4);
  set mapValue(MapValue v) {
    setField(6, v);
  }

  $core.bool hasMapValue() => $_has(4);
  void clearMapValue() => clearField(6);

  $1.LatLng get geoPointValue => $_getN(5);
  set geoPointValue($1.LatLng v) {
    setField(8, v);
  }

  $core.bool hasGeoPointValue() => $_has(5);
  void clearGeoPointValue() => clearField(8);

  ArrayValue get arrayValue => $_getN(6);
  set arrayValue(ArrayValue v) {
    setField(9, v);
  }

  $core.bool hasArrayValue() => $_has(6);
  void clearArrayValue() => clearField(9);

  $0.Timestamp get timestampValue => $_getN(7);
  set timestampValue($0.Timestamp v) {
    setField(10, v);
  }

  $core.bool hasTimestampValue() => $_has(7);
  void clearTimestampValue() => clearField(10);

  $2.NullValue get nullValue => $_getN(8);
  set nullValue($2.NullValue v) {
    setField(11, v);
  }

  $core.bool hasNullValue() => $_has(8);
  void clearNullValue() => clearField(11);

  $core.String get stringValue => $_getS(9, '');
  set stringValue($core.String v) {
    $_setString(9, v);
  }

  $core.bool hasStringValue() => $_has(9);
  void clearStringValue() => clearField(17);

  $core.List<$core.int> get bytesValue => $_getN(10);
  set bytesValue($core.List<$core.int> v) {
    $_setBytes(10, v);
  }

  $core.bool hasBytesValue() => $_has(10);
  void clearBytesValue() => clearField(18);
}

class ArrayValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ArrayValue',
      package: const $pb.PackageName('google.firestore.v1'))
    ..pc<Value>(1, 'values', $pb.PbFieldType.PM, Value.create)
    ..hasRequiredFields = false;

  ArrayValue._() : super();
  factory ArrayValue() => create();
  factory ArrayValue.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ArrayValue.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ArrayValue clone() => ArrayValue()..mergeFromMessage(this);
  ArrayValue copyWith(void Function(ArrayValue) updates) =>
      super.copyWith((message) => updates(message as ArrayValue));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ArrayValue create() => ArrayValue._();
  ArrayValue createEmptyInstance() => create();
  static $pb.PbList<ArrayValue> createRepeated() => $pb.PbList<ArrayValue>();
  static ArrayValue getDefault() => _defaultInstance ??= create()..freeze();
  static ArrayValue _defaultInstance;

  $core.List<Value> get values => $_getList(0);
}

class MapValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MapValue',
      package: const $pb.PackageName('google.firestore.v1'))
    ..m<$core.String, Value>(
        1,
        'fields',
        'MapValue.FieldsEntry',
        $pb.PbFieldType.OS,
        $pb.PbFieldType.OM,
        Value.create,
        null,
        null,
        const $pb.PackageName('google.firestore.v1'))
    ..hasRequiredFields = false;

  MapValue._() : super();
  factory MapValue() => create();
  factory MapValue.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MapValue.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  MapValue clone() => MapValue()..mergeFromMessage(this);
  MapValue copyWith(void Function(MapValue) updates) =>
      super.copyWith((message) => updates(message as MapValue));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MapValue create() => MapValue._();
  MapValue createEmptyInstance() => create();
  static $pb.PbList<MapValue> createRepeated() => $pb.PbList<MapValue>();
  static MapValue getDefault() => _defaultInstance ??= create()..freeze();
  static MapValue _defaultInstance;

  $core.Map<$core.String, Value> get fields => $_getMap(0);
}

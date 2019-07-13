///
//  Generated code. Do not modify.
//  source: google/firestore/v1/query.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core
    show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../protobuf/wrappers.pb.dart' as $0;
import 'document.pb.dart' as $1;

import 'query.pbenum.dart';

export 'query.pbenum.dart';

class StructuredQuery_CollectionSelector extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'StructuredQuery.CollectionSelector',
      package: const $pb.PackageName('google.firestore.v1'))
    ..aOS(2, 'collectionId')
    ..aOB(3, 'allDescendants')
    ..hasRequiredFields = false;

  StructuredQuery_CollectionSelector._() : super();
  factory StructuredQuery_CollectionSelector() => create();
  factory StructuredQuery_CollectionSelector.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredQuery_CollectionSelector.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  StructuredQuery_CollectionSelector clone() =>
      StructuredQuery_CollectionSelector()..mergeFromMessage(this);
  StructuredQuery_CollectionSelector copyWith(
          void Function(StructuredQuery_CollectionSelector) updates) =>
      super.copyWith(
          (message) => updates(message as StructuredQuery_CollectionSelector));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StructuredQuery_CollectionSelector create() =>
      StructuredQuery_CollectionSelector._();
  StructuredQuery_CollectionSelector createEmptyInstance() => create();
  static $pb.PbList<StructuredQuery_CollectionSelector> createRepeated() =>
      $pb.PbList<StructuredQuery_CollectionSelector>();
  static StructuredQuery_CollectionSelector getDefault() =>
      _defaultInstance ??= create()..freeze();
  static StructuredQuery_CollectionSelector _defaultInstance;

  $core.String get collectionId => $_getS(0, '');
  set collectionId($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasCollectionId() => $_has(0);
  void clearCollectionId() => clearField(2);

  $core.bool get allDescendants => $_get(1, false);
  set allDescendants($core.bool v) {
    $_setBool(1, v);
  }

  $core.bool hasAllDescendants() => $_has(1);
  void clearAllDescendants() => clearField(3);
}

enum StructuredQuery_Filter_FilterType {
  compositeFilter,
  fieldFilter,
  unaryFilter,
  notSet
}

class StructuredQuery_Filter extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, StructuredQuery_Filter_FilterType>
      _StructuredQuery_Filter_FilterTypeByTag = {
    1: StructuredQuery_Filter_FilterType.compositeFilter,
    2: StructuredQuery_Filter_FilterType.fieldFilter,
    3: StructuredQuery_Filter_FilterType.unaryFilter,
    0: StructuredQuery_Filter_FilterType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StructuredQuery.Filter',
      package: const $pb.PackageName('google.firestore.v1'))
    ..oo(0, [1, 2, 3])
    ..a<StructuredQuery_CompositeFilter>(
        1,
        'compositeFilter',
        $pb.PbFieldType.OM,
        StructuredQuery_CompositeFilter.getDefault,
        StructuredQuery_CompositeFilter.create)
    ..a<StructuredQuery_FieldFilter>(
        2,
        'fieldFilter',
        $pb.PbFieldType.OM,
        StructuredQuery_FieldFilter.getDefault,
        StructuredQuery_FieldFilter.create)
    ..a<StructuredQuery_UnaryFilter>(
        3,
        'unaryFilter',
        $pb.PbFieldType.OM,
        StructuredQuery_UnaryFilter.getDefault,
        StructuredQuery_UnaryFilter.create)
    ..hasRequiredFields = false;

  StructuredQuery_Filter._() : super();
  factory StructuredQuery_Filter() => create();
  factory StructuredQuery_Filter.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredQuery_Filter.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  StructuredQuery_Filter clone() =>
      StructuredQuery_Filter()..mergeFromMessage(this);
  StructuredQuery_Filter copyWith(
          void Function(StructuredQuery_Filter) updates) =>
      super.copyWith((message) => updates(message as StructuredQuery_Filter));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StructuredQuery_Filter create() => StructuredQuery_Filter._();
  StructuredQuery_Filter createEmptyInstance() => create();
  static $pb.PbList<StructuredQuery_Filter> createRepeated() =>
      $pb.PbList<StructuredQuery_Filter>();
  static StructuredQuery_Filter getDefault() =>
      _defaultInstance ??= create()..freeze();
  static StructuredQuery_Filter _defaultInstance;

  StructuredQuery_Filter_FilterType whichFilterType() =>
      _StructuredQuery_Filter_FilterTypeByTag[$_whichOneof(0)];
  void clearFilterType() => clearField($_whichOneof(0));

  StructuredQuery_CompositeFilter get compositeFilter => $_getN(0);
  set compositeFilter(StructuredQuery_CompositeFilter v) {
    setField(1, v);
  }

  $core.bool hasCompositeFilter() => $_has(0);
  void clearCompositeFilter() => clearField(1);

  StructuredQuery_FieldFilter get fieldFilter => $_getN(1);
  set fieldFilter(StructuredQuery_FieldFilter v) {
    setField(2, v);
  }

  $core.bool hasFieldFilter() => $_has(1);
  void clearFieldFilter() => clearField(2);

  StructuredQuery_UnaryFilter get unaryFilter => $_getN(2);
  set unaryFilter(StructuredQuery_UnaryFilter v) {
    setField(3, v);
  }

  $core.bool hasUnaryFilter() => $_has(2);
  void clearUnaryFilter() => clearField(3);
}

class StructuredQuery_CompositeFilter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'StructuredQuery.CompositeFilter',
      package: const $pb.PackageName('google.firestore.v1'))
    ..e<StructuredQuery_CompositeFilter_Operator>(
        1,
        'op',
        $pb.PbFieldType.OE,
        StructuredQuery_CompositeFilter_Operator.OPERATOR_UNSPECIFIED,
        StructuredQuery_CompositeFilter_Operator.valueOf,
        StructuredQuery_CompositeFilter_Operator.values)
    ..pc<StructuredQuery_Filter>(
        2, 'filters', $pb.PbFieldType.PM, StructuredQuery_Filter.create)
    ..hasRequiredFields = false;

  StructuredQuery_CompositeFilter._() : super();
  factory StructuredQuery_CompositeFilter() => create();
  factory StructuredQuery_CompositeFilter.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredQuery_CompositeFilter.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  StructuredQuery_CompositeFilter clone() =>
      StructuredQuery_CompositeFilter()..mergeFromMessage(this);
  StructuredQuery_CompositeFilter copyWith(
          void Function(StructuredQuery_CompositeFilter) updates) =>
      super.copyWith(
          (message) => updates(message as StructuredQuery_CompositeFilter));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StructuredQuery_CompositeFilter create() =>
      StructuredQuery_CompositeFilter._();
  StructuredQuery_CompositeFilter createEmptyInstance() => create();
  static $pb.PbList<StructuredQuery_CompositeFilter> createRepeated() =>
      $pb.PbList<StructuredQuery_CompositeFilter>();
  static StructuredQuery_CompositeFilter getDefault() =>
      _defaultInstance ??= create()..freeze();
  static StructuredQuery_CompositeFilter _defaultInstance;

  StructuredQuery_CompositeFilter_Operator get op => $_getN(0);
  set op(StructuredQuery_CompositeFilter_Operator v) {
    setField(1, v);
  }

  $core.bool hasOp() => $_has(0);
  void clearOp() => clearField(1);

  $core.List<StructuredQuery_Filter> get filters => $_getList(1);
}

class StructuredQuery_FieldFilter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'StructuredQuery.FieldFilter',
      package: const $pb.PackageName('google.firestore.v1'))
    ..a<StructuredQuery_FieldReference>(
        1,
        'field_1',
        $pb.PbFieldType.OM,
        StructuredQuery_FieldReference.getDefault,
        StructuredQuery_FieldReference.create)
    ..e<StructuredQuery_FieldFilter_Operator>(
        2,
        'op',
        $pb.PbFieldType.OE,
        StructuredQuery_FieldFilter_Operator.OPERATOR_UNSPECIFIED,
        StructuredQuery_FieldFilter_Operator.valueOf,
        StructuredQuery_FieldFilter_Operator.values)
    ..a<$1.Value>(
        3, 'value', $pb.PbFieldType.OM, $1.Value.getDefault, $1.Value.create)
    ..hasRequiredFields = false;

  StructuredQuery_FieldFilter._() : super();
  factory StructuredQuery_FieldFilter() => create();
  factory StructuredQuery_FieldFilter.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredQuery_FieldFilter.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  StructuredQuery_FieldFilter clone() =>
      StructuredQuery_FieldFilter()..mergeFromMessage(this);
  StructuredQuery_FieldFilter copyWith(
          void Function(StructuredQuery_FieldFilter) updates) =>
      super.copyWith(
          (message) => updates(message as StructuredQuery_FieldFilter));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StructuredQuery_FieldFilter create() =>
      StructuredQuery_FieldFilter._();
  StructuredQuery_FieldFilter createEmptyInstance() => create();
  static $pb.PbList<StructuredQuery_FieldFilter> createRepeated() =>
      $pb.PbList<StructuredQuery_FieldFilter>();
  static StructuredQuery_FieldFilter getDefault() =>
      _defaultInstance ??= create()..freeze();
  static StructuredQuery_FieldFilter _defaultInstance;

  StructuredQuery_FieldReference get field_1 => $_getN(0);
  set field_1(StructuredQuery_FieldReference v) {
    setField(1, v);
  }

  $core.bool hasField_1() => $_has(0);
  void clearField_1() => clearField(1);

  StructuredQuery_FieldFilter_Operator get op => $_getN(1);
  set op(StructuredQuery_FieldFilter_Operator v) {
    setField(2, v);
  }

  $core.bool hasOp() => $_has(1);
  void clearOp() => clearField(2);

  $1.Value get value => $_getN(2);
  set value($1.Value v) {
    setField(3, v);
  }

  $core.bool hasValue() => $_has(2);
  void clearValue() => clearField(3);
}

enum StructuredQuery_UnaryFilter_OperandType { field_2, notSet }

class StructuredQuery_UnaryFilter extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, StructuredQuery_UnaryFilter_OperandType>
      _StructuredQuery_UnaryFilter_OperandTypeByTag = {
    2: StructuredQuery_UnaryFilter_OperandType.field_2,
    0: StructuredQuery_UnaryFilter_OperandType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'StructuredQuery.UnaryFilter',
      package: const $pb.PackageName('google.firestore.v1'))
    ..oo(0, [2])
    ..e<StructuredQuery_UnaryFilter_Operator>(
        1,
        'op',
        $pb.PbFieldType.OE,
        StructuredQuery_UnaryFilter_Operator.OPERATOR_UNSPECIFIED,
        StructuredQuery_UnaryFilter_Operator.valueOf,
        StructuredQuery_UnaryFilter_Operator.values)
    ..a<StructuredQuery_FieldReference>(
        2,
        'field_2',
        $pb.PbFieldType.OM,
        StructuredQuery_FieldReference.getDefault,
        StructuredQuery_FieldReference.create)
    ..hasRequiredFields = false;

  StructuredQuery_UnaryFilter._() : super();
  factory StructuredQuery_UnaryFilter() => create();
  factory StructuredQuery_UnaryFilter.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredQuery_UnaryFilter.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  StructuredQuery_UnaryFilter clone() =>
      StructuredQuery_UnaryFilter()..mergeFromMessage(this);
  StructuredQuery_UnaryFilter copyWith(
          void Function(StructuredQuery_UnaryFilter) updates) =>
      super.copyWith(
          (message) => updates(message as StructuredQuery_UnaryFilter));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StructuredQuery_UnaryFilter create() =>
      StructuredQuery_UnaryFilter._();
  StructuredQuery_UnaryFilter createEmptyInstance() => create();
  static $pb.PbList<StructuredQuery_UnaryFilter> createRepeated() =>
      $pb.PbList<StructuredQuery_UnaryFilter>();
  static StructuredQuery_UnaryFilter getDefault() =>
      _defaultInstance ??= create()..freeze();
  static StructuredQuery_UnaryFilter _defaultInstance;

  StructuredQuery_UnaryFilter_OperandType whichOperandType() =>
      _StructuredQuery_UnaryFilter_OperandTypeByTag[$_whichOneof(0)];
  void clearOperandType() => clearField($_whichOneof(0));

  StructuredQuery_UnaryFilter_Operator get op => $_getN(0);
  set op(StructuredQuery_UnaryFilter_Operator v) {
    setField(1, v);
  }

  $core.bool hasOp() => $_has(0);
  void clearOp() => clearField(1);

  StructuredQuery_FieldReference get field_2 => $_getN(1);
  set field_2(StructuredQuery_FieldReference v) {
    setField(2, v);
  }

  $core.bool hasField_2() => $_has(1);
  void clearField_2() => clearField(2);
}

class StructuredQuery_FieldReference extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'StructuredQuery.FieldReference',
      package: const $pb.PackageName('google.firestore.v1'))
    ..aOS(2, 'fieldPath')
    ..hasRequiredFields = false;

  StructuredQuery_FieldReference._() : super();
  factory StructuredQuery_FieldReference() => create();
  factory StructuredQuery_FieldReference.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredQuery_FieldReference.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  StructuredQuery_FieldReference clone() =>
      StructuredQuery_FieldReference()..mergeFromMessage(this);
  StructuredQuery_FieldReference copyWith(
          void Function(StructuredQuery_FieldReference) updates) =>
      super.copyWith(
          (message) => updates(message as StructuredQuery_FieldReference));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StructuredQuery_FieldReference create() =>
      StructuredQuery_FieldReference._();
  StructuredQuery_FieldReference createEmptyInstance() => create();
  static $pb.PbList<StructuredQuery_FieldReference> createRepeated() =>
      $pb.PbList<StructuredQuery_FieldReference>();
  static StructuredQuery_FieldReference getDefault() =>
      _defaultInstance ??= create()..freeze();
  static StructuredQuery_FieldReference _defaultInstance;

  $core.String get fieldPath => $_getS(0, '');
  set fieldPath($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasFieldPath() => $_has(0);
  void clearFieldPath() => clearField(2);
}

class StructuredQuery_Order extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StructuredQuery.Order',
      package: const $pb.PackageName('google.firestore.v1'))
    ..a<StructuredQuery_FieldReference>(
        1,
        'field_1',
        $pb.PbFieldType.OM,
        StructuredQuery_FieldReference.getDefault,
        StructuredQuery_FieldReference.create)
    ..e<StructuredQuery_Direction>(
        2,
        'direction',
        $pb.PbFieldType.OE,
        StructuredQuery_Direction.DIRECTION_UNSPECIFIED,
        StructuredQuery_Direction.valueOf,
        StructuredQuery_Direction.values)
    ..hasRequiredFields = false;

  StructuredQuery_Order._() : super();
  factory StructuredQuery_Order() => create();
  factory StructuredQuery_Order.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredQuery_Order.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  StructuredQuery_Order clone() =>
      StructuredQuery_Order()..mergeFromMessage(this);
  StructuredQuery_Order copyWith(
          void Function(StructuredQuery_Order) updates) =>
      super.copyWith((message) => updates(message as StructuredQuery_Order));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StructuredQuery_Order create() => StructuredQuery_Order._();
  StructuredQuery_Order createEmptyInstance() => create();
  static $pb.PbList<StructuredQuery_Order> createRepeated() =>
      $pb.PbList<StructuredQuery_Order>();
  static StructuredQuery_Order getDefault() =>
      _defaultInstance ??= create()..freeze();
  static StructuredQuery_Order _defaultInstance;

  StructuredQuery_FieldReference get field_1 => $_getN(0);
  set field_1(StructuredQuery_FieldReference v) {
    setField(1, v);
  }

  $core.bool hasField_1() => $_has(0);
  void clearField_1() => clearField(1);

  StructuredQuery_Direction get direction => $_getN(1);
  set direction(StructuredQuery_Direction v) {
    setField(2, v);
  }

  $core.bool hasDirection() => $_has(1);
  void clearDirection() => clearField(2);
}

class StructuredQuery_Projection extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'StructuredQuery.Projection',
      package: const $pb.PackageName('google.firestore.v1'))
    ..pc<StructuredQuery_FieldReference>(
        2, 'fields', $pb.PbFieldType.PM, StructuredQuery_FieldReference.create)
    ..hasRequiredFields = false;

  StructuredQuery_Projection._() : super();
  factory StructuredQuery_Projection() => create();
  factory StructuredQuery_Projection.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredQuery_Projection.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  StructuredQuery_Projection clone() =>
      StructuredQuery_Projection()..mergeFromMessage(this);
  StructuredQuery_Projection copyWith(
          void Function(StructuredQuery_Projection) updates) =>
      super.copyWith(
          (message) => updates(message as StructuredQuery_Projection));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StructuredQuery_Projection create() => StructuredQuery_Projection._();
  StructuredQuery_Projection createEmptyInstance() => create();
  static $pb.PbList<StructuredQuery_Projection> createRepeated() =>
      $pb.PbList<StructuredQuery_Projection>();
  static StructuredQuery_Projection getDefault() =>
      _defaultInstance ??= create()..freeze();
  static StructuredQuery_Projection _defaultInstance;

  $core.List<StructuredQuery_FieldReference> get fields => $_getList(0);
}

class StructuredQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StructuredQuery',
      package: const $pb.PackageName('google.firestore.v1'))
    ..a<StructuredQuery_Projection>(
        1,
        'select',
        $pb.PbFieldType.OM,
        StructuredQuery_Projection.getDefault,
        StructuredQuery_Projection.create)
    ..pc<StructuredQuery_CollectionSelector>(2, 'from', $pb.PbFieldType.PM,
        StructuredQuery_CollectionSelector.create)
    ..a<StructuredQuery_Filter>(3, 'where', $pb.PbFieldType.OM,
        StructuredQuery_Filter.getDefault, StructuredQuery_Filter.create)
    ..pc<StructuredQuery_Order>(
        4, 'orderBy', $pb.PbFieldType.PM, StructuredQuery_Order.create)
    ..a<$0.Int32Value>(5, 'limit', $pb.PbFieldType.OM, $0.Int32Value.getDefault,
        $0.Int32Value.create)
    ..a<$core.int>(6, 'offset', $pb.PbFieldType.O3)
    ..a<Cursor>(
        7, 'startAt', $pb.PbFieldType.OM, Cursor.getDefault, Cursor.create)
    ..a<Cursor>(
        8, 'endAt', $pb.PbFieldType.OM, Cursor.getDefault, Cursor.create)
    ..hasRequiredFields = false;

  StructuredQuery._() : super();
  factory StructuredQuery() => create();
  factory StructuredQuery.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredQuery.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  StructuredQuery clone() => StructuredQuery()..mergeFromMessage(this);
  StructuredQuery copyWith(void Function(StructuredQuery) updates) =>
      super.copyWith((message) => updates(message as StructuredQuery));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StructuredQuery create() => StructuredQuery._();
  StructuredQuery createEmptyInstance() => create();
  static $pb.PbList<StructuredQuery> createRepeated() =>
      $pb.PbList<StructuredQuery>();
  static StructuredQuery getDefault() =>
      _defaultInstance ??= create()..freeze();
  static StructuredQuery _defaultInstance;

  StructuredQuery_Projection get select => $_getN(0);
  set select(StructuredQuery_Projection v) {
    setField(1, v);
  }

  $core.bool hasSelect() => $_has(0);
  void clearSelect() => clearField(1);

  $core.List<StructuredQuery_CollectionSelector> get from => $_getList(1);

  StructuredQuery_Filter get where => $_getN(2);
  set where(StructuredQuery_Filter v) {
    setField(3, v);
  }

  $core.bool hasWhere() => $_has(2);
  void clearWhere() => clearField(3);

  $core.List<StructuredQuery_Order> get orderBy => $_getList(3);

  $0.Int32Value get limit => $_getN(4);
  set limit($0.Int32Value v) {
    setField(5, v);
  }

  $core.bool hasLimit() => $_has(4);
  void clearLimit() => clearField(5);

  $core.int get offset => $_get(5, 0);
  set offset($core.int v) {
    $_setSignedInt32(5, v);
  }

  $core.bool hasOffset() => $_has(5);
  void clearOffset() => clearField(6);

  Cursor get startAt => $_getN(6);
  set startAt(Cursor v) {
    setField(7, v);
  }

  $core.bool hasStartAt() => $_has(6);
  void clearStartAt() => clearField(7);

  Cursor get endAt => $_getN(7);
  set endAt(Cursor v) {
    setField(8, v);
  }

  $core.bool hasEndAt() => $_has(7);
  void clearEndAt() => clearField(8);
}

class Cursor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Cursor',
      package: const $pb.PackageName('google.firestore.v1'))
    ..pc<$1.Value>(1, 'values', $pb.PbFieldType.PM, $1.Value.create)
    ..aOB(2, 'before')
    ..hasRequiredFields = false;

  Cursor._() : super();
  factory Cursor() => create();
  factory Cursor.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Cursor.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Cursor clone() => Cursor()..mergeFromMessage(this);
  Cursor copyWith(void Function(Cursor) updates) =>
      super.copyWith((message) => updates(message as Cursor));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Cursor create() => Cursor._();
  Cursor createEmptyInstance() => create();
  static $pb.PbList<Cursor> createRepeated() => $pb.PbList<Cursor>();
  static Cursor getDefault() => _defaultInstance ??= create()..freeze();
  static Cursor _defaultInstance;

  $core.List<$1.Value> get values => $_getList(0);

  $core.bool get before => $_get(1, false);
  set before($core.bool v) {
    $_setBool(1, v);
  }

  $core.bool hasBefore() => $_has(1);
  void clearBefore() => clearField(2);
}

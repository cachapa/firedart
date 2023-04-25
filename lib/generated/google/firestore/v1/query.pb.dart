///
//  Generated code. Do not modify.
//  source: google/firestore/v1/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../protobuf/wrappers.pb.dart' as $0;
import 'document.pb.dart' as $1;

import 'query.pbenum.dart';

export 'query.pbenum.dart';

class StructuredQuery_CollectionSelector extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'StructuredQuery.CollectionSelector',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'collectionId')
    ..aOB(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'allDescendants')
    ..hasRequiredFields = false;

  StructuredQuery_CollectionSelector._() : super();
  factory StructuredQuery_CollectionSelector({
    $core.String? collectionId,
    $core.bool? allDescendants,
  }) {
    final _result = create();
    if (collectionId != null) {
      _result.collectionId = collectionId;
    }
    if (allDescendants != null) {
      _result.allDescendants = allDescendants;
    }
    return _result;
  }
  factory StructuredQuery_CollectionSelector.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredQuery_CollectionSelector.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StructuredQuery_CollectionSelector clone() =>
      StructuredQuery_CollectionSelector()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StructuredQuery_CollectionSelector copyWith(
          void Function(StructuredQuery_CollectionSelector) updates) =>
      super.copyWith((message) =>
              updates(message as StructuredQuery_CollectionSelector))
          as StructuredQuery_CollectionSelector; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StructuredQuery_CollectionSelector create() =>
      StructuredQuery_CollectionSelector._();
  StructuredQuery_CollectionSelector createEmptyInstance() => create();
  static $pb.PbList<StructuredQuery_CollectionSelector> createRepeated() =>
      $pb.PbList<StructuredQuery_CollectionSelector>();
  @$core.pragma('dart2js:noInline')
  static StructuredQuery_CollectionSelector getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StructuredQuery_CollectionSelector>(
          create);
  static StructuredQuery_CollectionSelector? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get collectionId => $_getSZ(0);
  @$pb.TagNumber(2)
  set collectionId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCollectionId() => $_has(0);
  @$pb.TagNumber(2)
  void clearCollectionId() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get allDescendants => $_getBF(1);
  @$pb.TagNumber(3)
  set allDescendants($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAllDescendants() => $_has(1);
  @$pb.TagNumber(3)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'StructuredQuery.Filter',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<StructuredQuery_CompositeFilter>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'compositeFilter',
        subBuilder: StructuredQuery_CompositeFilter.create)
    ..aOM<StructuredQuery_FieldFilter>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fieldFilter',
        subBuilder: StructuredQuery_FieldFilter.create)
    ..aOM<StructuredQuery_UnaryFilter>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'unaryFilter',
        subBuilder: StructuredQuery_UnaryFilter.create)
    ..hasRequiredFields = false;

  StructuredQuery_Filter._() : super();
  factory StructuredQuery_Filter({
    StructuredQuery_CompositeFilter? compositeFilter,
    StructuredQuery_FieldFilter? fieldFilter,
    StructuredQuery_UnaryFilter? unaryFilter,
  }) {
    final _result = create();
    if (compositeFilter != null) {
      _result.compositeFilter = compositeFilter;
    }
    if (fieldFilter != null) {
      _result.fieldFilter = fieldFilter;
    }
    if (unaryFilter != null) {
      _result.unaryFilter = unaryFilter;
    }
    return _result;
  }
  factory StructuredQuery_Filter.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredQuery_Filter.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StructuredQuery_Filter clone() =>
      StructuredQuery_Filter()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StructuredQuery_Filter copyWith(
          void Function(StructuredQuery_Filter) updates) =>
      super.copyWith((message) => updates(message as StructuredQuery_Filter))
          as StructuredQuery_Filter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StructuredQuery_Filter create() => StructuredQuery_Filter._();
  StructuredQuery_Filter createEmptyInstance() => create();
  static $pb.PbList<StructuredQuery_Filter> createRepeated() =>
      $pb.PbList<StructuredQuery_Filter>();
  @$core.pragma('dart2js:noInline')
  static StructuredQuery_Filter getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StructuredQuery_Filter>(create);
  static StructuredQuery_Filter? _defaultInstance;

  StructuredQuery_Filter_FilterType whichFilterType() =>
      _StructuredQuery_Filter_FilterTypeByTag[$_whichOneof(0)]!;
  void clearFilterType() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  StructuredQuery_CompositeFilter get compositeFilter => $_getN(0);
  @$pb.TagNumber(1)
  set compositeFilter(StructuredQuery_CompositeFilter v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCompositeFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearCompositeFilter() => clearField(1);
  @$pb.TagNumber(1)
  StructuredQuery_CompositeFilter ensureCompositeFilter() => $_ensure(0);

  @$pb.TagNumber(2)
  StructuredQuery_FieldFilter get fieldFilter => $_getN(1);
  @$pb.TagNumber(2)
  set fieldFilter(StructuredQuery_FieldFilter v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFieldFilter() => $_has(1);
  @$pb.TagNumber(2)
  void clearFieldFilter() => clearField(2);
  @$pb.TagNumber(2)
  StructuredQuery_FieldFilter ensureFieldFilter() => $_ensure(1);

  @$pb.TagNumber(3)
  StructuredQuery_UnaryFilter get unaryFilter => $_getN(2);
  @$pb.TagNumber(3)
  set unaryFilter(StructuredQuery_UnaryFilter v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUnaryFilter() => $_has(2);
  @$pb.TagNumber(3)
  void clearUnaryFilter() => clearField(3);
  @$pb.TagNumber(3)
  StructuredQuery_UnaryFilter ensureUnaryFilter() => $_ensure(2);
}

class StructuredQuery_CompositeFilter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'StructuredQuery.CompositeFilter',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..e<StructuredQuery_CompositeFilter_Operator>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'op',
        $pb.PbFieldType.OE,
        defaultOrMaker:
            StructuredQuery_CompositeFilter_Operator.OPERATOR_UNSPECIFIED,
        valueOf: StructuredQuery_CompositeFilter_Operator.valueOf,
        enumValues: StructuredQuery_CompositeFilter_Operator.values)
    ..pc<StructuredQuery_Filter>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'filters',
        $pb.PbFieldType.PM,
        subBuilder: StructuredQuery_Filter.create)
    ..hasRequiredFields = false;

  StructuredQuery_CompositeFilter._() : super();
  factory StructuredQuery_CompositeFilter({
    StructuredQuery_CompositeFilter_Operator? op,
    $core.Iterable<StructuredQuery_Filter>? filters,
  }) {
    final _result = create();
    if (op != null) {
      _result.op = op;
    }
    if (filters != null) {
      _result.filters.addAll(filters);
    }
    return _result;
  }
  factory StructuredQuery_CompositeFilter.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredQuery_CompositeFilter.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StructuredQuery_CompositeFilter clone() =>
      StructuredQuery_CompositeFilter()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StructuredQuery_CompositeFilter copyWith(
          void Function(StructuredQuery_CompositeFilter) updates) =>
      super.copyWith(
              (message) => updates(message as StructuredQuery_CompositeFilter))
          as StructuredQuery_CompositeFilter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StructuredQuery_CompositeFilter create() =>
      StructuredQuery_CompositeFilter._();
  StructuredQuery_CompositeFilter createEmptyInstance() => create();
  static $pb.PbList<StructuredQuery_CompositeFilter> createRepeated() =>
      $pb.PbList<StructuredQuery_CompositeFilter>();
  @$core.pragma('dart2js:noInline')
  static StructuredQuery_CompositeFilter getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StructuredQuery_CompositeFilter>(
          create);
  static StructuredQuery_CompositeFilter? _defaultInstance;

  @$pb.TagNumber(1)
  StructuredQuery_CompositeFilter_Operator get op => $_getN(0);
  @$pb.TagNumber(1)
  set op(StructuredQuery_CompositeFilter_Operator v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasOp() => $_has(0);
  @$pb.TagNumber(1)
  void clearOp() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<StructuredQuery_Filter> get filters => $_getList(1);
}

class StructuredQuery_FieldFilter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'StructuredQuery.FieldFilter',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOM<StructuredQuery_FieldReference>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'field',
        subBuilder: StructuredQuery_FieldReference.create)
    ..e<StructuredQuery_FieldFilter_Operator>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'op',
        $pb.PbFieldType.OE,
        defaultOrMaker:
            StructuredQuery_FieldFilter_Operator.OPERATOR_UNSPECIFIED,
        valueOf: StructuredQuery_FieldFilter_Operator.valueOf,
        enumValues: StructuredQuery_FieldFilter_Operator.values)
    ..aOM<$1.Value>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'value',
        subBuilder: $1.Value.create)
    ..hasRequiredFields = false;

  StructuredQuery_FieldFilter._() : super();
  factory StructuredQuery_FieldFilter({
    StructuredQuery_FieldReference? field_1,
    StructuredQuery_FieldFilter_Operator? op,
    $1.Value? value,
  }) {
    final _result = create();
    if (field_1 != null) {
      _result.field_1 = field_1;
    }
    if (op != null) {
      _result.op = op;
    }
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory StructuredQuery_FieldFilter.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredQuery_FieldFilter.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StructuredQuery_FieldFilter clone() =>
      StructuredQuery_FieldFilter()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StructuredQuery_FieldFilter copyWith(
          void Function(StructuredQuery_FieldFilter) updates) =>
      super.copyWith(
              (message) => updates(message as StructuredQuery_FieldFilter))
          as StructuredQuery_FieldFilter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StructuredQuery_FieldFilter create() =>
      StructuredQuery_FieldFilter._();
  StructuredQuery_FieldFilter createEmptyInstance() => create();
  static $pb.PbList<StructuredQuery_FieldFilter> createRepeated() =>
      $pb.PbList<StructuredQuery_FieldFilter>();
  @$core.pragma('dart2js:noInline')
  static StructuredQuery_FieldFilter getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StructuredQuery_FieldFilter>(create);
  static StructuredQuery_FieldFilter? _defaultInstance;

  @$pb.TagNumber(1)
  StructuredQuery_FieldReference get field_1 => $_getN(0);
  @$pb.TagNumber(1)
  set field_1(StructuredQuery_FieldReference v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasField_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearField_1() => clearField(1);
  @$pb.TagNumber(1)
  StructuredQuery_FieldReference ensureField_1() => $_ensure(0);

  @$pb.TagNumber(2)
  StructuredQuery_FieldFilter_Operator get op => $_getN(1);
  @$pb.TagNumber(2)
  set op(StructuredQuery_FieldFilter_Operator v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOp() => $_has(1);
  @$pb.TagNumber(2)
  void clearOp() => clearField(2);

  @$pb.TagNumber(3)
  $1.Value get value => $_getN(2);
  @$pb.TagNumber(3)
  set value($1.Value v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);
  @$pb.TagNumber(3)
  $1.Value ensureValue() => $_ensure(2);
}

enum StructuredQuery_UnaryFilter_OperandType { field_2, notSet }

class StructuredQuery_UnaryFilter extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, StructuredQuery_UnaryFilter_OperandType>
      _StructuredQuery_UnaryFilter_OperandTypeByTag = {
    2: StructuredQuery_UnaryFilter_OperandType.field_2,
    0: StructuredQuery_UnaryFilter_OperandType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'StructuredQuery.UnaryFilter',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [2])
    ..e<StructuredQuery_UnaryFilter_Operator>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'op',
        $pb.PbFieldType.OE,
        defaultOrMaker:
            StructuredQuery_UnaryFilter_Operator.OPERATOR_UNSPECIFIED,
        valueOf: StructuredQuery_UnaryFilter_Operator.valueOf,
        enumValues: StructuredQuery_UnaryFilter_Operator.values)
    ..aOM<StructuredQuery_FieldReference>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'field',
        subBuilder: StructuredQuery_FieldReference.create)
    ..hasRequiredFields = false;

  StructuredQuery_UnaryFilter._() : super();
  factory StructuredQuery_UnaryFilter({
    StructuredQuery_UnaryFilter_Operator? op,
    StructuredQuery_FieldReference? field_2,
  }) {
    final _result = create();
    if (op != null) {
      _result.op = op;
    }
    if (field_2 != null) {
      _result.field_2 = field_2;
    }
    return _result;
  }
  factory StructuredQuery_UnaryFilter.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredQuery_UnaryFilter.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StructuredQuery_UnaryFilter clone() =>
      StructuredQuery_UnaryFilter()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StructuredQuery_UnaryFilter copyWith(
          void Function(StructuredQuery_UnaryFilter) updates) =>
      super.copyWith(
              (message) => updates(message as StructuredQuery_UnaryFilter))
          as StructuredQuery_UnaryFilter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StructuredQuery_UnaryFilter create() =>
      StructuredQuery_UnaryFilter._();
  StructuredQuery_UnaryFilter createEmptyInstance() => create();
  static $pb.PbList<StructuredQuery_UnaryFilter> createRepeated() =>
      $pb.PbList<StructuredQuery_UnaryFilter>();
  @$core.pragma('dart2js:noInline')
  static StructuredQuery_UnaryFilter getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StructuredQuery_UnaryFilter>(create);
  static StructuredQuery_UnaryFilter? _defaultInstance;

  StructuredQuery_UnaryFilter_OperandType whichOperandType() =>
      _StructuredQuery_UnaryFilter_OperandTypeByTag[$_whichOneof(0)]!;
  void clearOperandType() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  StructuredQuery_UnaryFilter_Operator get op => $_getN(0);
  @$pb.TagNumber(1)
  set op(StructuredQuery_UnaryFilter_Operator v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasOp() => $_has(0);
  @$pb.TagNumber(1)
  void clearOp() => clearField(1);

  @$pb.TagNumber(2)
  StructuredQuery_FieldReference get field_2 => $_getN(1);
  @$pb.TagNumber(2)
  set field_2(StructuredQuery_FieldReference v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasField_2() => $_has(1);
  @$pb.TagNumber(2)
  void clearField_2() => clearField(2);
  @$pb.TagNumber(2)
  StructuredQuery_FieldReference ensureField_2() => $_ensure(1);
}

class StructuredQuery_Order extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'StructuredQuery.Order',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOM<StructuredQuery_FieldReference>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'field',
        subBuilder: StructuredQuery_FieldReference.create)
    ..e<StructuredQuery_Direction>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'direction',
        $pb.PbFieldType.OE,
        defaultOrMaker: StructuredQuery_Direction.DIRECTION_UNSPECIFIED,
        valueOf: StructuredQuery_Direction.valueOf,
        enumValues: StructuredQuery_Direction.values)
    ..hasRequiredFields = false;

  StructuredQuery_Order._() : super();
  factory StructuredQuery_Order({
    StructuredQuery_FieldReference? field_1,
    StructuredQuery_Direction? direction,
  }) {
    final _result = create();
    if (field_1 != null) {
      _result.field_1 = field_1;
    }
    if (direction != null) {
      _result.direction = direction;
    }
    return _result;
  }
  factory StructuredQuery_Order.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredQuery_Order.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StructuredQuery_Order clone() =>
      StructuredQuery_Order()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StructuredQuery_Order copyWith(
          void Function(StructuredQuery_Order) updates) =>
      super.copyWith((message) => updates(message as StructuredQuery_Order))
          as StructuredQuery_Order; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StructuredQuery_Order create() => StructuredQuery_Order._();
  StructuredQuery_Order createEmptyInstance() => create();
  static $pb.PbList<StructuredQuery_Order> createRepeated() =>
      $pb.PbList<StructuredQuery_Order>();
  @$core.pragma('dart2js:noInline')
  static StructuredQuery_Order getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StructuredQuery_Order>(create);
  static StructuredQuery_Order? _defaultInstance;

  @$pb.TagNumber(1)
  StructuredQuery_FieldReference get field_1 => $_getN(0);
  @$pb.TagNumber(1)
  set field_1(StructuredQuery_FieldReference v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasField_1() => $_has(0);
  @$pb.TagNumber(1)
  void clearField_1() => clearField(1);
  @$pb.TagNumber(1)
  StructuredQuery_FieldReference ensureField_1() => $_ensure(0);

  @$pb.TagNumber(2)
  StructuredQuery_Direction get direction => $_getN(1);
  @$pb.TagNumber(2)
  set direction(StructuredQuery_Direction v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDirection() => $_has(1);
  @$pb.TagNumber(2)
  void clearDirection() => clearField(2);
}

class StructuredQuery_FieldReference extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'StructuredQuery.FieldReference',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fieldPath')
    ..hasRequiredFields = false;

  StructuredQuery_FieldReference._() : super();
  factory StructuredQuery_FieldReference({
    $core.String? fieldPath,
  }) {
    final _result = create();
    if (fieldPath != null) {
      _result.fieldPath = fieldPath;
    }
    return _result;
  }
  factory StructuredQuery_FieldReference.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredQuery_FieldReference.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StructuredQuery_FieldReference clone() =>
      StructuredQuery_FieldReference()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StructuredQuery_FieldReference copyWith(
          void Function(StructuredQuery_FieldReference) updates) =>
      super.copyWith(
              (message) => updates(message as StructuredQuery_FieldReference))
          as StructuredQuery_FieldReference; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StructuredQuery_FieldReference create() =>
      StructuredQuery_FieldReference._();
  StructuredQuery_FieldReference createEmptyInstance() => create();
  static $pb.PbList<StructuredQuery_FieldReference> createRepeated() =>
      $pb.PbList<StructuredQuery_FieldReference>();
  @$core.pragma('dart2js:noInline')
  static StructuredQuery_FieldReference getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StructuredQuery_FieldReference>(create);
  static StructuredQuery_FieldReference? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get fieldPath => $_getSZ(0);
  @$pb.TagNumber(2)
  set fieldPath($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFieldPath() => $_has(0);
  @$pb.TagNumber(2)
  void clearFieldPath() => clearField(2);
}

class StructuredQuery_Projection extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'StructuredQuery.Projection',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..pc<StructuredQuery_FieldReference>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fields',
        $pb.PbFieldType.PM,
        subBuilder: StructuredQuery_FieldReference.create)
    ..hasRequiredFields = false;

  StructuredQuery_Projection._() : super();
  factory StructuredQuery_Projection({
    $core.Iterable<StructuredQuery_FieldReference>? fields,
  }) {
    final _result = create();
    if (fields != null) {
      _result.fields.addAll(fields);
    }
    return _result;
  }
  factory StructuredQuery_Projection.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredQuery_Projection.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StructuredQuery_Projection clone() =>
      StructuredQuery_Projection()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StructuredQuery_Projection copyWith(
          void Function(StructuredQuery_Projection) updates) =>
      super.copyWith(
              (message) => updates(message as StructuredQuery_Projection))
          as StructuredQuery_Projection; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StructuredQuery_Projection create() => StructuredQuery_Projection._();
  StructuredQuery_Projection createEmptyInstance() => create();
  static $pb.PbList<StructuredQuery_Projection> createRepeated() =>
      $pb.PbList<StructuredQuery_Projection>();
  @$core.pragma('dart2js:noInline')
  static StructuredQuery_Projection getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StructuredQuery_Projection>(create);
  static StructuredQuery_Projection? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<StructuredQuery_FieldReference> get fields => $_getList(0);
}

class StructuredQuery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'StructuredQuery',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOM<StructuredQuery_Projection>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'select',
        subBuilder: StructuredQuery_Projection.create)
    ..pc<StructuredQuery_CollectionSelector>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'from',
        $pb.PbFieldType.PM,
        subBuilder: StructuredQuery_CollectionSelector.create)
    ..aOM<StructuredQuery_Filter>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'where',
        subBuilder: StructuredQuery_Filter.create)
    ..pc<StructuredQuery_Order>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'orderBy',
        $pb.PbFieldType.PM,
        subBuilder: StructuredQuery_Order.create)
    ..aOM<$0.Int32Value>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'limit',
        subBuilder: $0.Int32Value.create)
    ..a<$core.int>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'offset',
        $pb.PbFieldType.O3)
    ..aOM<Cursor>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'startAt',
        subBuilder: Cursor.create)
    ..aOM<Cursor>(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'endAt',
        subBuilder: Cursor.create)
    ..hasRequiredFields = false;

  StructuredQuery._() : super();
  factory StructuredQuery({
    StructuredQuery_Projection? select,
    $core.Iterable<StructuredQuery_CollectionSelector>? from,
    StructuredQuery_Filter? where,
    $core.Iterable<StructuredQuery_Order>? orderBy,
    $0.Int32Value? limit,
    $core.int? offset,
    Cursor? startAt,
    Cursor? endAt,
  }) {
    final _result = create();
    if (select != null) {
      _result.select = select;
    }
    if (from != null) {
      _result.from.addAll(from);
    }
    if (where != null) {
      _result.where = where;
    }
    if (orderBy != null) {
      _result.orderBy.addAll(orderBy);
    }
    if (limit != null) {
      _result.limit = limit;
    }
    if (offset != null) {
      _result.offset = offset;
    }
    if (startAt != null) {
      _result.startAt = startAt;
    }
    if (endAt != null) {
      _result.endAt = endAt;
    }
    return _result;
  }
  factory StructuredQuery.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredQuery.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StructuredQuery clone() => StructuredQuery()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StructuredQuery copyWith(void Function(StructuredQuery) updates) =>
      super.copyWith((message) => updates(message as StructuredQuery))
          as StructuredQuery; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StructuredQuery create() => StructuredQuery._();
  StructuredQuery createEmptyInstance() => create();
  static $pb.PbList<StructuredQuery> createRepeated() =>
      $pb.PbList<StructuredQuery>();
  @$core.pragma('dart2js:noInline')
  static StructuredQuery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StructuredQuery>(create);
  static StructuredQuery? _defaultInstance;

  @$pb.TagNumber(1)
  StructuredQuery_Projection get select => $_getN(0);
  @$pb.TagNumber(1)
  set select(StructuredQuery_Projection v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSelect() => $_has(0);
  @$pb.TagNumber(1)
  void clearSelect() => clearField(1);
  @$pb.TagNumber(1)
  StructuredQuery_Projection ensureSelect() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<StructuredQuery_CollectionSelector> get from => $_getList(1);

  @$pb.TagNumber(3)
  StructuredQuery_Filter get where => $_getN(2);
  @$pb.TagNumber(3)
  set where(StructuredQuery_Filter v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasWhere() => $_has(2);
  @$pb.TagNumber(3)
  void clearWhere() => clearField(3);
  @$pb.TagNumber(3)
  StructuredQuery_Filter ensureWhere() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<StructuredQuery_Order> get orderBy => $_getList(3);

  @$pb.TagNumber(5)
  $0.Int32Value get limit => $_getN(4);
  @$pb.TagNumber(5)
  set limit($0.Int32Value v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasLimit() => $_has(4);
  @$pb.TagNumber(5)
  void clearLimit() => clearField(5);
  @$pb.TagNumber(5)
  $0.Int32Value ensureLimit() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.int get offset => $_getIZ(5);
  @$pb.TagNumber(6)
  set offset($core.int v) {
    $_setSignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasOffset() => $_has(5);
  @$pb.TagNumber(6)
  void clearOffset() => clearField(6);

  @$pb.TagNumber(7)
  Cursor get startAt => $_getN(6);
  @$pb.TagNumber(7)
  set startAt(Cursor v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasStartAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearStartAt() => clearField(7);
  @$pb.TagNumber(7)
  Cursor ensureStartAt() => $_ensure(6);

  @$pb.TagNumber(8)
  Cursor get endAt => $_getN(7);
  @$pb.TagNumber(8)
  set endAt(Cursor v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasEndAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearEndAt() => clearField(8);
  @$pb.TagNumber(8)
  Cursor ensureEndAt() => $_ensure(7);
}

class Cursor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Cursor',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..pc<$1.Value>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'values',
        $pb.PbFieldType.PM,
        subBuilder: $1.Value.create)
    ..aOB(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'before')
    ..hasRequiredFields = false;

  Cursor._() : super();
  factory Cursor({
    $core.Iterable<$1.Value>? values,
    $core.bool? before,
  }) {
    final _result = create();
    if (values != null) {
      _result.values.addAll(values);
    }
    if (before != null) {
      _result.before = before;
    }
    return _result;
  }
  factory Cursor.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Cursor.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Cursor clone() => Cursor()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Cursor copyWith(void Function(Cursor) updates) =>
      super.copyWith((message) => updates(message as Cursor))
          as Cursor; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Cursor create() => Cursor._();
  Cursor createEmptyInstance() => create();
  static $pb.PbList<Cursor> createRepeated() => $pb.PbList<Cursor>();
  @$core.pragma('dart2js:noInline')
  static Cursor getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Cursor>(create);
  static Cursor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.Value> get values => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get before => $_getBF(1);
  @$pb.TagNumber(2)
  set before($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasBefore() => $_has(1);
  @$pb.TagNumber(2)
  void clearBefore() => clearField(2);
}

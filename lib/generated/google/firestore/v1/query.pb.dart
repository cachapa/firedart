//
//  Generated code. Do not modify.
//  source: google/firestore/v1/query.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../protobuf/wrappers.pb.dart' as $0;
import 'document.pb.dart' as $1;
import 'query.pbenum.dart';

export 'query.pbenum.dart';

/// A selection of a collection, such as `messages as m1`.
class StructuredQuery_CollectionSelector extends $pb.GeneratedMessage {
  factory StructuredQuery_CollectionSelector({
    $core.String? collectionId,
    $core.bool? allDescendants,
  }) {
    final $result = create();
    if (collectionId != null) {
      $result.collectionId = collectionId;
    }
    if (allDescendants != null) {
      $result.allDescendants = allDescendants;
    }
    return $result;
  }
  StructuredQuery_CollectionSelector._() : super();
  factory StructuredQuery_CollectionSelector.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredQuery_CollectionSelector.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StructuredQuery.CollectionSelector',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'collectionId')
    ..aOB(3, _omitFieldNames ? '' : 'allDescendants')
    ..hasRequiredFields = false;

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
          as StructuredQuery_CollectionSelector;

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

  /// The collection ID.
  /// When set, selects only collections with this ID.
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

  /// When false, selects only collections that are immediate children of
  /// the `parent` specified in the containing `RunQueryRequest`.
  /// When true, selects all descendant collections.
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

/// A filter.
class StructuredQuery_Filter extends $pb.GeneratedMessage {
  factory StructuredQuery_Filter({
    StructuredQuery_CompositeFilter? compositeFilter,
    StructuredQuery_FieldFilter? fieldFilter,
    StructuredQuery_UnaryFilter? unaryFilter,
  }) {
    final $result = create();
    if (compositeFilter != null) {
      $result.compositeFilter = compositeFilter;
    }
    if (fieldFilter != null) {
      $result.fieldFilter = fieldFilter;
    }
    if (unaryFilter != null) {
      $result.unaryFilter = unaryFilter;
    }
    return $result;
  }
  StructuredQuery_Filter._() : super();
  factory StructuredQuery_Filter.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredQuery_Filter.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, StructuredQuery_Filter_FilterType>
      _StructuredQuery_Filter_FilterTypeByTag = {
    1: StructuredQuery_Filter_FilterType.compositeFilter,
    2: StructuredQuery_Filter_FilterType.fieldFilter,
    3: StructuredQuery_Filter_FilterType.unaryFilter,
    0: StructuredQuery_Filter_FilterType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StructuredQuery.Filter',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<StructuredQuery_CompositeFilter>(
        1, _omitFieldNames ? '' : 'compositeFilter',
        subBuilder: StructuredQuery_CompositeFilter.create)
    ..aOM<StructuredQuery_FieldFilter>(2, _omitFieldNames ? '' : 'fieldFilter',
        subBuilder: StructuredQuery_FieldFilter.create)
    ..aOM<StructuredQuery_UnaryFilter>(3, _omitFieldNames ? '' : 'unaryFilter',
        subBuilder: StructuredQuery_UnaryFilter.create)
    ..hasRequiredFields = false;

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
          as StructuredQuery_Filter;

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

  /// A composite filter.
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

  /// A filter on a document field.
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

  /// A filter that takes exactly one argument.
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

/// A filter that merges multiple other filters using the given operator.
class StructuredQuery_CompositeFilter extends $pb.GeneratedMessage {
  factory StructuredQuery_CompositeFilter({
    StructuredQuery_CompositeFilter_Operator? op,
    $core.Iterable<StructuredQuery_Filter>? filters,
  }) {
    final $result = create();
    if (op != null) {
      $result.op = op;
    }
    if (filters != null) {
      $result.filters.addAll(filters);
    }
    return $result;
  }
  StructuredQuery_CompositeFilter._() : super();
  factory StructuredQuery_CompositeFilter.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredQuery_CompositeFilter.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StructuredQuery.CompositeFilter',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..e<StructuredQuery_CompositeFilter_Operator>(
        1, _omitFieldNames ? '' : 'op', $pb.PbFieldType.OE,
        defaultOrMaker:
            StructuredQuery_CompositeFilter_Operator.OPERATOR_UNSPECIFIED,
        valueOf: StructuredQuery_CompositeFilter_Operator.valueOf,
        enumValues: StructuredQuery_CompositeFilter_Operator.values)
    ..pc<StructuredQuery_Filter>(
        2, _omitFieldNames ? '' : 'filters', $pb.PbFieldType.PM,
        subBuilder: StructuredQuery_Filter.create)
    ..hasRequiredFields = false;

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
          as StructuredQuery_CompositeFilter;

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

  /// The operator for combining multiple filters.
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

  ///  The list of filters to combine.
  ///
  ///  Requires:
  ///
  ///  * At least one filter is present.
  @$pb.TagNumber(2)
  $core.List<StructuredQuery_Filter> get filters => $_getList(1);
}

/// A filter on a specific field.
class StructuredQuery_FieldFilter extends $pb.GeneratedMessage {
  factory StructuredQuery_FieldFilter({
    StructuredQuery_FieldReference? field_1,
    StructuredQuery_FieldFilter_Operator? op,
    $1.Value? value,
  }) {
    final $result = create();
    if (field_1 != null) {
      $result.field_1 = field_1;
    }
    if (op != null) {
      $result.op = op;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  StructuredQuery_FieldFilter._() : super();
  factory StructuredQuery_FieldFilter.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredQuery_FieldFilter.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StructuredQuery.FieldFilter',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOM<StructuredQuery_FieldReference>(1, _omitFieldNames ? '' : 'field',
        subBuilder: StructuredQuery_FieldReference.create)
    ..e<StructuredQuery_FieldFilter_Operator>(
        2, _omitFieldNames ? '' : 'op', $pb.PbFieldType.OE,
        defaultOrMaker:
            StructuredQuery_FieldFilter_Operator.OPERATOR_UNSPECIFIED,
        valueOf: StructuredQuery_FieldFilter_Operator.valueOf,
        enumValues: StructuredQuery_FieldFilter_Operator.values)
    ..aOM<$1.Value>(3, _omitFieldNames ? '' : 'value',
        subBuilder: $1.Value.create)
    ..hasRequiredFields = false;

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
          as StructuredQuery_FieldFilter;

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

  /// The field to filter by.
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

  /// The operator to filter by.
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

  /// The value to compare to.
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

/// A filter with a single operand.
class StructuredQuery_UnaryFilter extends $pb.GeneratedMessage {
  factory StructuredQuery_UnaryFilter({
    StructuredQuery_UnaryFilter_Operator? op,
    StructuredQuery_FieldReference? field_2,
  }) {
    final $result = create();
    if (op != null) {
      $result.op = op;
    }
    if (field_2 != null) {
      $result.field_2 = field_2;
    }
    return $result;
  }
  StructuredQuery_UnaryFilter._() : super();
  factory StructuredQuery_UnaryFilter.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredQuery_UnaryFilter.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, StructuredQuery_UnaryFilter_OperandType>
      _StructuredQuery_UnaryFilter_OperandTypeByTag = {
    2: StructuredQuery_UnaryFilter_OperandType.field_2,
    0: StructuredQuery_UnaryFilter_OperandType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StructuredQuery.UnaryFilter',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [2])
    ..e<StructuredQuery_UnaryFilter_Operator>(
        1, _omitFieldNames ? '' : 'op', $pb.PbFieldType.OE,
        defaultOrMaker:
            StructuredQuery_UnaryFilter_Operator.OPERATOR_UNSPECIFIED,
        valueOf: StructuredQuery_UnaryFilter_Operator.valueOf,
        enumValues: StructuredQuery_UnaryFilter_Operator.values)
    ..aOM<StructuredQuery_FieldReference>(2, _omitFieldNames ? '' : 'field',
        subBuilder: StructuredQuery_FieldReference.create)
    ..hasRequiredFields = false;

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
          as StructuredQuery_UnaryFilter;

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

  /// The unary operator to apply.
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

  /// The field to which to apply the operator.
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

/// An order on a field.
class StructuredQuery_Order extends $pb.GeneratedMessage {
  factory StructuredQuery_Order({
    StructuredQuery_FieldReference? field_1,
    StructuredQuery_Direction? direction,
  }) {
    final $result = create();
    if (field_1 != null) {
      $result.field_1 = field_1;
    }
    if (direction != null) {
      $result.direction = direction;
    }
    return $result;
  }
  StructuredQuery_Order._() : super();
  factory StructuredQuery_Order.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredQuery_Order.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StructuredQuery.Order',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOM<StructuredQuery_FieldReference>(1, _omitFieldNames ? '' : 'field',
        subBuilder: StructuredQuery_FieldReference.create)
    ..e<StructuredQuery_Direction>(
        2, _omitFieldNames ? '' : 'direction', $pb.PbFieldType.OE,
        defaultOrMaker: StructuredQuery_Direction.DIRECTION_UNSPECIFIED,
        valueOf: StructuredQuery_Direction.valueOf,
        enumValues: StructuredQuery_Direction.values)
    ..hasRequiredFields = false;

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
          as StructuredQuery_Order;

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

  /// The field to order by.
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

  /// The direction to order by. Defaults to `ASCENDING`.
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

/// A reference to a field in a document, ex: `stats.operations`.
class StructuredQuery_FieldReference extends $pb.GeneratedMessage {
  factory StructuredQuery_FieldReference({
    $core.String? fieldPath,
  }) {
    final $result = create();
    if (fieldPath != null) {
      $result.fieldPath = fieldPath;
    }
    return $result;
  }
  StructuredQuery_FieldReference._() : super();
  factory StructuredQuery_FieldReference.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredQuery_FieldReference.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StructuredQuery.FieldReference',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'fieldPath')
    ..hasRequiredFields = false;

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
          as StructuredQuery_FieldReference;

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

  ///  A reference to a field in a document.
  ///
  ///  Requires:
  ///
  ///  * MUST be a dot-delimited (`.`) string of segments, where each segment
  ///  conforms to [document field name][google.firestore.v1.Document.fields]
  ///  limitations.
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

/// The projection of document's fields to return.
class StructuredQuery_Projection extends $pb.GeneratedMessage {
  factory StructuredQuery_Projection({
    $core.Iterable<StructuredQuery_FieldReference>? fields,
  }) {
    final $result = create();
    if (fields != null) {
      $result.fields.addAll(fields);
    }
    return $result;
  }
  StructuredQuery_Projection._() : super();
  factory StructuredQuery_Projection.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredQuery_Projection.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StructuredQuery.Projection',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..pc<StructuredQuery_FieldReference>(
        2, _omitFieldNames ? '' : 'fields', $pb.PbFieldType.PM,
        subBuilder: StructuredQuery_FieldReference.create)
    ..hasRequiredFields = false;

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
          as StructuredQuery_Projection;

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

  ///  The fields to return.
  ///
  ///  If empty, all fields are returned. To only return the name
  ///  of the document, use `['__name__']`.
  @$pb.TagNumber(2)
  $core.List<StructuredQuery_FieldReference> get fields => $_getList(0);
}

///  A Firestore query.
///
///  The query stages are executed in the following order:
///  1. from
///  2. where
///  3. select
///  4. order_by + start_at + end_at
///  5. offset
///  6. limit
class StructuredQuery extends $pb.GeneratedMessage {
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
    final $result = create();
    if (select != null) {
      $result.select = select;
    }
    if (from != null) {
      $result.from.addAll(from);
    }
    if (where != null) {
      $result.where = where;
    }
    if (orderBy != null) {
      $result.orderBy.addAll(orderBy);
    }
    if (limit != null) {
      $result.limit = limit;
    }
    if (offset != null) {
      $result.offset = offset;
    }
    if (startAt != null) {
      $result.startAt = startAt;
    }
    if (endAt != null) {
      $result.endAt = endAt;
    }
    return $result;
  }
  StructuredQuery._() : super();
  factory StructuredQuery.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredQuery.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StructuredQuery',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOM<StructuredQuery_Projection>(1, _omitFieldNames ? '' : 'select',
        subBuilder: StructuredQuery_Projection.create)
    ..pc<StructuredQuery_CollectionSelector>(
        2, _omitFieldNames ? '' : 'from', $pb.PbFieldType.PM,
        subBuilder: StructuredQuery_CollectionSelector.create)
    ..aOM<StructuredQuery_Filter>(3, _omitFieldNames ? '' : 'where',
        subBuilder: StructuredQuery_Filter.create)
    ..pc<StructuredQuery_Order>(
        4, _omitFieldNames ? '' : 'orderBy', $pb.PbFieldType.PM,
        subBuilder: StructuredQuery_Order.create)
    ..aOM<$0.Int32Value>(5, _omitFieldNames ? '' : 'limit',
        subBuilder: $0.Int32Value.create)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'offset', $pb.PbFieldType.O3)
    ..aOM<Cursor>(7, _omitFieldNames ? '' : 'startAt',
        subBuilder: Cursor.create)
    ..aOM<Cursor>(8, _omitFieldNames ? '' : 'endAt', subBuilder: Cursor.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StructuredQuery clone() => StructuredQuery()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StructuredQuery copyWith(void Function(StructuredQuery) updates) =>
      super.copyWith((message) => updates(message as StructuredQuery))
          as StructuredQuery;

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

  ///  Optional sub-set of the fields to return.
  ///
  ///  This acts as a [DocumentMask][google.firestore.v1.DocumentMask] over the
  ///  documents returned from a query. When not set, assumes that the caller
  ///  wants all fields returned.
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

  /// The collections to query.
  @$pb.TagNumber(2)
  $core.List<StructuredQuery_CollectionSelector> get from => $_getList(1);

  /// The filter to apply.
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

  ///  The order to apply to the query results.
  ///
  ///  Firestore allows callers to provide a full ordering, a partial ordering, or
  ///  no ordering at all. In all cases, Firestore guarantees a stable ordering
  ///  through the following rules:
  ///
  ///   * The `order_by` is required to reference all fields used with an
  ///     inequality filter.
  ///   * All fields that are required to be in the `order_by` but are not already
  ///     present are appended in lexicographical ordering of the field name.
  ///   * If an order on `__name__` is not specified, it is appended by default.
  ///
  ///  Fields are appended with the same sort direction as the last order
  ///  specified, or 'ASCENDING' if no order was specified. For example:
  ///
  ///   * `ORDER BY a` becomes `ORDER BY a ASC, __name__ ASC`
  ///   * `ORDER BY a DESC` becomes `ORDER BY a DESC, __name__ DESC`
  ///   * `WHERE a > 1` becomes `WHERE a > 1 ORDER BY a ASC, __name__ ASC`
  ///   * `WHERE __name__ > ... AND a > 1` becomes
  ///      `WHERE __name__ > ... AND a > 1 ORDER BY a ASC, __name__ ASC`
  @$pb.TagNumber(4)
  $core.List<StructuredQuery_Order> get orderBy => $_getList(3);

  ///  The maximum number of results to return.
  ///
  ///  Applies after all other constraints.
  ///
  ///  Requires:
  ///
  ///  * The value must be greater than or equal to zero if specified.
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

  ///  The number of documents to skip before returning the first result.
  ///
  ///  This applies after the constraints specified by the `WHERE`, `START AT`, &
  ///  `END AT` but before the `LIMIT` clause.
  ///
  ///  Requires:
  ///
  ///  * The value must be greater than or equal to zero if specified.
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

  ///  A potential prefix of a position in the result set to start the query at.
  ///
  ///  The ordering of the result set is based on the `ORDER BY` clause of the
  ///  original query.
  ///
  ///  ```
  ///  SELECT * FROM k WHERE a = 1 AND b > 2 ORDER BY b ASC, __name__ ASC;
  ///  ```
  ///
  ///  This query's results are ordered by `(b ASC, __name__ ASC)`.
  ///
  ///  Cursors can reference either the full ordering or a prefix of the location,
  ///  though it cannot reference more fields than what are in the provided
  ///  `ORDER BY`.
  ///
  ///  Continuing off the example above, attaching the following start cursors
  ///  will have varying impact:
  ///
  ///  - `START BEFORE (2, /k/123)`: start the query right before `a = 1 AND
  ///     b > 2 AND __name__ > /k/123`.
  ///  - `START AFTER (10)`: start the query right after `a = 1 AND b > 10`.
  ///
  ///  Unlike `OFFSET` which requires scanning over the first N results to skip,
  ///  a start cursor allows the query to begin at a logical position. This
  ///  position is not required to match an actual result, it will scan forward
  ///  from this position to find the next document.
  ///
  ///  Requires:
  ///
  ///  * The number of values cannot be greater than the number of fields
  ///    specified in the `ORDER BY` clause.
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

  ///  A potential prefix of a position in the result set to end the query at.
  ///
  ///  This is similar to `START_AT` but with it controlling the end position
  ///  rather than the start position.
  ///
  ///  Requires:
  ///
  ///  * The number of values cannot be greater than the number of fields
  ///    specified in the `ORDER BY` clause.
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

///  Count of documents that match the query.
///
///  The `COUNT(*)` aggregation function operates on the entire document
///  so it does not require a field reference.
class StructuredAggregationQuery_Aggregation_Count
    extends $pb.GeneratedMessage {
  factory StructuredAggregationQuery_Aggregation_Count({
    $0.Int64Value? upTo,
  }) {
    final $result = create();
    if (upTo != null) {
      $result.upTo = upTo;
    }
    return $result;
  }
  StructuredAggregationQuery_Aggregation_Count._() : super();
  factory StructuredAggregationQuery_Aggregation_Count.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredAggregationQuery_Aggregation_Count.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StructuredAggregationQuery.Aggregation.Count',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOM<$0.Int64Value>(1, _omitFieldNames ? '' : 'upTo',
        subBuilder: $0.Int64Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StructuredAggregationQuery_Aggregation_Count clone() =>
      StructuredAggregationQuery_Aggregation_Count()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StructuredAggregationQuery_Aggregation_Count copyWith(
          void Function(StructuredAggregationQuery_Aggregation_Count)
              updates) =>
      super.copyWith((message) =>
              updates(message as StructuredAggregationQuery_Aggregation_Count))
          as StructuredAggregationQuery_Aggregation_Count;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StructuredAggregationQuery_Aggregation_Count create() =>
      StructuredAggregationQuery_Aggregation_Count._();
  StructuredAggregationQuery_Aggregation_Count createEmptyInstance() =>
      create();
  static $pb.PbList<StructuredAggregationQuery_Aggregation_Count>
      createRepeated() =>
          $pb.PbList<StructuredAggregationQuery_Aggregation_Count>();
  @$core.pragma('dart2js:noInline')
  static StructuredAggregationQuery_Aggregation_Count getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StructuredAggregationQuery_Aggregation_Count>(create);
  static StructuredAggregationQuery_Aggregation_Count? _defaultInstance;

  ///  Optional. Optional constraint on the maximum number of documents to
  ///  count.
  ///
  ///  This provides a way to set an upper bound on the number of documents
  ///  to scan, limiting latency, and cost.
  ///
  ///  Unspecified is interpreted as no bound.
  ///
  ///  High-Level Example:
  ///
  ///  ```
  ///  AGGREGATE COUNT_UP_TO(1000) OVER ( SELECT * FROM k );
  ///  ```
  ///
  ///  Requires:
  ///
  ///  * Must be greater than zero when present.
  @$pb.TagNumber(1)
  $0.Int64Value get upTo => $_getN(0);
  @$pb.TagNumber(1)
  set upTo($0.Int64Value v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUpTo() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpTo() => clearField(1);
  @$pb.TagNumber(1)
  $0.Int64Value ensureUpTo() => $_ensure(0);
}

///  Sum of the values of the requested field.
///
///  * Only numeric values will be aggregated. All non-numeric values
///  including `NULL` are skipped.
///
///  * If the aggregated values contain `NaN`, returns `NaN`. Infinity math
///  follows IEEE-754 standards.
///
///  * If the aggregated value set is empty, returns 0.
///
///  * Returns a 64-bit integer if all aggregated numbers are integers and the
///  sum result does not overflow. Otherwise, the result is returned as a
///  double. Note that even if all the aggregated values are integers, the
///  result is returned as a double if it cannot fit within a 64-bit signed
///  integer. When this occurs, the returned value will lose precision.
///
///  * When underflow occurs, floating-point aggregation is non-deterministic.
///  This means that running the same query repeatedly without any changes to
///  the underlying values could produce slightly different results each
///  time. In those cases, values should be stored as integers over
///  floating-point numbers.
class StructuredAggregationQuery_Aggregation_Sum extends $pb.GeneratedMessage {
  factory StructuredAggregationQuery_Aggregation_Sum({
    StructuredQuery_FieldReference? field_1,
  }) {
    final $result = create();
    if (field_1 != null) {
      $result.field_1 = field_1;
    }
    return $result;
  }
  StructuredAggregationQuery_Aggregation_Sum._() : super();
  factory StructuredAggregationQuery_Aggregation_Sum.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredAggregationQuery_Aggregation_Sum.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StructuredAggregationQuery.Aggregation.Sum',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOM<StructuredQuery_FieldReference>(1, _omitFieldNames ? '' : 'field',
        subBuilder: StructuredQuery_FieldReference.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StructuredAggregationQuery_Aggregation_Sum clone() =>
      StructuredAggregationQuery_Aggregation_Sum()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StructuredAggregationQuery_Aggregation_Sum copyWith(
          void Function(StructuredAggregationQuery_Aggregation_Sum) updates) =>
      super.copyWith((message) =>
              updates(message as StructuredAggregationQuery_Aggregation_Sum))
          as StructuredAggregationQuery_Aggregation_Sum;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StructuredAggregationQuery_Aggregation_Sum create() =>
      StructuredAggregationQuery_Aggregation_Sum._();
  StructuredAggregationQuery_Aggregation_Sum createEmptyInstance() => create();
  static $pb.PbList<StructuredAggregationQuery_Aggregation_Sum>
      createRepeated() =>
          $pb.PbList<StructuredAggregationQuery_Aggregation_Sum>();
  @$core.pragma('dart2js:noInline')
  static StructuredAggregationQuery_Aggregation_Sum getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StructuredAggregationQuery_Aggregation_Sum>(create);
  static StructuredAggregationQuery_Aggregation_Sum? _defaultInstance;

  /// The field to aggregate on.
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
}

///  Average of the values of the requested field.
///
///  * Only numeric values will be aggregated. All non-numeric values
///  including `NULL` are skipped.
///
///  * If the aggregated values contain `NaN`, returns `NaN`. Infinity math
///  follows IEEE-754 standards.
///
///  * If the aggregated value set is empty, returns `NULL`.
///
///  * Always returns the result as a double.
class StructuredAggregationQuery_Aggregation_Avg extends $pb.GeneratedMessage {
  factory StructuredAggregationQuery_Aggregation_Avg({
    StructuredQuery_FieldReference? field_1,
  }) {
    final $result = create();
    if (field_1 != null) {
      $result.field_1 = field_1;
    }
    return $result;
  }
  StructuredAggregationQuery_Aggregation_Avg._() : super();
  factory StructuredAggregationQuery_Aggregation_Avg.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredAggregationQuery_Aggregation_Avg.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StructuredAggregationQuery.Aggregation.Avg',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOM<StructuredQuery_FieldReference>(1, _omitFieldNames ? '' : 'field',
        subBuilder: StructuredQuery_FieldReference.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StructuredAggregationQuery_Aggregation_Avg clone() =>
      StructuredAggregationQuery_Aggregation_Avg()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StructuredAggregationQuery_Aggregation_Avg copyWith(
          void Function(StructuredAggregationQuery_Aggregation_Avg) updates) =>
      super.copyWith((message) =>
              updates(message as StructuredAggregationQuery_Aggregation_Avg))
          as StructuredAggregationQuery_Aggregation_Avg;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StructuredAggregationQuery_Aggregation_Avg create() =>
      StructuredAggregationQuery_Aggregation_Avg._();
  StructuredAggregationQuery_Aggregation_Avg createEmptyInstance() => create();
  static $pb.PbList<StructuredAggregationQuery_Aggregation_Avg>
      createRepeated() =>
          $pb.PbList<StructuredAggregationQuery_Aggregation_Avg>();
  @$core.pragma('dart2js:noInline')
  static StructuredAggregationQuery_Aggregation_Avg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StructuredAggregationQuery_Aggregation_Avg>(create);
  static StructuredAggregationQuery_Aggregation_Avg? _defaultInstance;

  /// The field to aggregate on.
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
}

enum StructuredAggregationQuery_Aggregation_Operator { count, sum, avg, notSet }

/// Defines an aggregation that produces a single result.
class StructuredAggregationQuery_Aggregation extends $pb.GeneratedMessage {
  factory StructuredAggregationQuery_Aggregation({
    StructuredAggregationQuery_Aggregation_Count? count,
    StructuredAggregationQuery_Aggregation_Sum? sum,
    StructuredAggregationQuery_Aggregation_Avg? avg,
    $core.String? alias,
  }) {
    final $result = create();
    if (count != null) {
      $result.count = count;
    }
    if (sum != null) {
      $result.sum = sum;
    }
    if (avg != null) {
      $result.avg = avg;
    }
    if (alias != null) {
      $result.alias = alias;
    }
    return $result;
  }
  StructuredAggregationQuery_Aggregation._() : super();
  factory StructuredAggregationQuery_Aggregation.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredAggregationQuery_Aggregation.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core
      .Map<$core.int, StructuredAggregationQuery_Aggregation_Operator>
      _StructuredAggregationQuery_Aggregation_OperatorByTag = {
    1: StructuredAggregationQuery_Aggregation_Operator.count,
    2: StructuredAggregationQuery_Aggregation_Operator.sum,
    3: StructuredAggregationQuery_Aggregation_Operator.avg,
    0: StructuredAggregationQuery_Aggregation_Operator.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StructuredAggregationQuery.Aggregation',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<StructuredAggregationQuery_Aggregation_Count>(
        1, _omitFieldNames ? '' : 'count',
        subBuilder: StructuredAggregationQuery_Aggregation_Count.create)
    ..aOM<StructuredAggregationQuery_Aggregation_Sum>(
        2, _omitFieldNames ? '' : 'sum',
        subBuilder: StructuredAggregationQuery_Aggregation_Sum.create)
    ..aOM<StructuredAggregationQuery_Aggregation_Avg>(
        3, _omitFieldNames ? '' : 'avg',
        subBuilder: StructuredAggregationQuery_Aggregation_Avg.create)
    ..aOS(7, _omitFieldNames ? '' : 'alias')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StructuredAggregationQuery_Aggregation clone() =>
      StructuredAggregationQuery_Aggregation()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StructuredAggregationQuery_Aggregation copyWith(
          void Function(StructuredAggregationQuery_Aggregation) updates) =>
      super.copyWith((message) =>
              updates(message as StructuredAggregationQuery_Aggregation))
          as StructuredAggregationQuery_Aggregation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StructuredAggregationQuery_Aggregation create() =>
      StructuredAggregationQuery_Aggregation._();
  StructuredAggregationQuery_Aggregation createEmptyInstance() => create();
  static $pb.PbList<StructuredAggregationQuery_Aggregation> createRepeated() =>
      $pb.PbList<StructuredAggregationQuery_Aggregation>();
  @$core.pragma('dart2js:noInline')
  static StructuredAggregationQuery_Aggregation getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          StructuredAggregationQuery_Aggregation>(create);
  static StructuredAggregationQuery_Aggregation? _defaultInstance;

  StructuredAggregationQuery_Aggregation_Operator whichOperator() =>
      _StructuredAggregationQuery_Aggregation_OperatorByTag[$_whichOneof(0)]!;
  void clearOperator() => clearField($_whichOneof(0));

  /// Count aggregator.
  @$pb.TagNumber(1)
  StructuredAggregationQuery_Aggregation_Count get count => $_getN(0);
  @$pb.TagNumber(1)
  set count(StructuredAggregationQuery_Aggregation_Count v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);
  @$pb.TagNumber(1)
  StructuredAggregationQuery_Aggregation_Count ensureCount() => $_ensure(0);

  /// Sum aggregator.
  @$pb.TagNumber(2)
  StructuredAggregationQuery_Aggregation_Sum get sum => $_getN(1);
  @$pb.TagNumber(2)
  set sum(StructuredAggregationQuery_Aggregation_Sum v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSum() => $_has(1);
  @$pb.TagNumber(2)
  void clearSum() => clearField(2);
  @$pb.TagNumber(2)
  StructuredAggregationQuery_Aggregation_Sum ensureSum() => $_ensure(1);

  /// Average aggregator.
  @$pb.TagNumber(3)
  StructuredAggregationQuery_Aggregation_Avg get avg => $_getN(2);
  @$pb.TagNumber(3)
  set avg(StructuredAggregationQuery_Aggregation_Avg v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAvg() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvg() => clearField(3);
  @$pb.TagNumber(3)
  StructuredAggregationQuery_Aggregation_Avg ensureAvg() => $_ensure(2);

  ///  Optional. Optional name of the field to store the result of the
  ///  aggregation into.
  ///
  ///  If not provided, Firestore will pick a default name following the format
  ///  `field_<incremental_id++>`. For example:
  ///
  ///  ```
  ///  AGGREGATE
  ///    COUNT_UP_TO(1) AS count_up_to_1,
  ///    COUNT_UP_TO(2),
  ///    COUNT_UP_TO(3) AS count_up_to_3,
  ///    COUNT(*)
  ///  OVER (
  ///    ...
  ///  );
  ///  ```
  ///
  ///  becomes:
  ///
  ///  ```
  ///  AGGREGATE
  ///    COUNT_UP_TO(1) AS count_up_to_1,
  ///    COUNT_UP_TO(2) AS field_1,
  ///    COUNT_UP_TO(3) AS count_up_to_3,
  ///    COUNT(*) AS field_2
  ///  OVER (
  ///    ...
  ///  );
  ///  ```
  ///
  ///  Requires:
  ///
  ///  * Must be unique across all aggregation aliases.
  ///  * Conform to [document field name][google.firestore.v1.Document.fields]
  ///  limitations.
  @$pb.TagNumber(7)
  $core.String get alias => $_getSZ(3);
  @$pb.TagNumber(7)
  set alias($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasAlias() => $_has(3);
  @$pb.TagNumber(7)
  void clearAlias() => clearField(7);
}

enum StructuredAggregationQuery_QueryType { structuredQuery, notSet }

/// Firestore query for running an aggregation over a
/// [StructuredQuery][google.firestore.v1.StructuredQuery].
class StructuredAggregationQuery extends $pb.GeneratedMessage {
  factory StructuredAggregationQuery({
    StructuredQuery? structuredQuery,
    $core.Iterable<StructuredAggregationQuery_Aggregation>? aggregations,
  }) {
    final $result = create();
    if (structuredQuery != null) {
      $result.structuredQuery = structuredQuery;
    }
    if (aggregations != null) {
      $result.aggregations.addAll(aggregations);
    }
    return $result;
  }
  StructuredAggregationQuery._() : super();
  factory StructuredAggregationQuery.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StructuredAggregationQuery.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, StructuredAggregationQuery_QueryType>
      _StructuredAggregationQuery_QueryTypeByTag = {
    1: StructuredAggregationQuery_QueryType.structuredQuery,
    0: StructuredAggregationQuery_QueryType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StructuredAggregationQuery',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<StructuredQuery>(1, _omitFieldNames ? '' : 'structuredQuery',
        subBuilder: StructuredQuery.create)
    ..pc<StructuredAggregationQuery_Aggregation>(
        3, _omitFieldNames ? '' : 'aggregations', $pb.PbFieldType.PM,
        subBuilder: StructuredAggregationQuery_Aggregation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StructuredAggregationQuery clone() =>
      StructuredAggregationQuery()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StructuredAggregationQuery copyWith(
          void Function(StructuredAggregationQuery) updates) =>
      super.copyWith(
              (message) => updates(message as StructuredAggregationQuery))
          as StructuredAggregationQuery;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StructuredAggregationQuery create() => StructuredAggregationQuery._();
  StructuredAggregationQuery createEmptyInstance() => create();
  static $pb.PbList<StructuredAggregationQuery> createRepeated() =>
      $pb.PbList<StructuredAggregationQuery>();
  @$core.pragma('dart2js:noInline')
  static StructuredAggregationQuery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StructuredAggregationQuery>(create);
  static StructuredAggregationQuery? _defaultInstance;

  StructuredAggregationQuery_QueryType whichQueryType() =>
      _StructuredAggregationQuery_QueryTypeByTag[$_whichOneof(0)]!;
  void clearQueryType() => clearField($_whichOneof(0));

  /// Nested structured query.
  @$pb.TagNumber(1)
  StructuredQuery get structuredQuery => $_getN(0);
  @$pb.TagNumber(1)
  set structuredQuery(StructuredQuery v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStructuredQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearStructuredQuery() => clearField(1);
  @$pb.TagNumber(1)
  StructuredQuery ensureStructuredQuery() => $_ensure(0);

  ///  Optional. Series of aggregations to apply over the results of the
  ///  `structured_query`.
  ///
  ///  Requires:
  ///
  ///  * A minimum of one and maximum of five aggregations per query.
  @$pb.TagNumber(3)
  $core.List<StructuredAggregationQuery_Aggregation> get aggregations =>
      $_getList(1);
}

/// A position in a query result set.
class Cursor extends $pb.GeneratedMessage {
  factory Cursor({
    $core.Iterable<$1.Value>? values,
    $core.bool? before,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    if (before != null) {
      $result.before = before;
    }
    return $result;
  }
  Cursor._() : super();
  factory Cursor.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Cursor.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Cursor',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..pc<$1.Value>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.PM,
        subBuilder: $1.Value.create)
    ..aOB(2, _omitFieldNames ? '' : 'before')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Cursor clone() => Cursor()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Cursor copyWith(void Function(Cursor) updates) =>
      super.copyWith((message) => updates(message as Cursor)) as Cursor;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Cursor create() => Cursor._();
  Cursor createEmptyInstance() => create();
  static $pb.PbList<Cursor> createRepeated() => $pb.PbList<Cursor>();
  @$core.pragma('dart2js:noInline')
  static Cursor getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Cursor>(create);
  static Cursor? _defaultInstance;

  ///  The values that represent a position, in the order they appear in
  ///  the order by clause of a query.
  ///
  ///  Can contain fewer values than specified in the order by clause.
  @$pb.TagNumber(1)
  $core.List<$1.Value> get values => $_getList(0);

  /// If the position is just before or just after the given values, relative
  /// to the sort order defined by the query.
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

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');

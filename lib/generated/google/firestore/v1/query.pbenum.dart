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

/// A sort direction.
class StructuredQuery_Direction extends $pb.ProtobufEnum {
  static const StructuredQuery_Direction DIRECTION_UNSPECIFIED =
      StructuredQuery_Direction._(
          0, _omitEnumNames ? '' : 'DIRECTION_UNSPECIFIED');
  static const StructuredQuery_Direction ASCENDING =
      StructuredQuery_Direction._(1, _omitEnumNames ? '' : 'ASCENDING');
  static const StructuredQuery_Direction DESCENDING =
      StructuredQuery_Direction._(2, _omitEnumNames ? '' : 'DESCENDING');

  static const $core.List<StructuredQuery_Direction> values =
      <StructuredQuery_Direction>[
    DIRECTION_UNSPECIFIED,
    ASCENDING,
    DESCENDING,
  ];

  static final $core.Map<$core.int, StructuredQuery_Direction> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static StructuredQuery_Direction? valueOf($core.int value) => _byValue[value];

  const StructuredQuery_Direction._($core.int v, $core.String n) : super(v, n);
}

/// A composite filter operator.
class StructuredQuery_CompositeFilter_Operator extends $pb.ProtobufEnum {
  static const StructuredQuery_CompositeFilter_Operator OPERATOR_UNSPECIFIED =
      StructuredQuery_CompositeFilter_Operator._(
          0, _omitEnumNames ? '' : 'OPERATOR_UNSPECIFIED');
  static const StructuredQuery_CompositeFilter_Operator AND =
      StructuredQuery_CompositeFilter_Operator._(
          1, _omitEnumNames ? '' : 'AND');
  static const StructuredQuery_CompositeFilter_Operator OR =
      StructuredQuery_CompositeFilter_Operator._(2, _omitEnumNames ? '' : 'OR');

  static const $core.List<StructuredQuery_CompositeFilter_Operator> values =
      <StructuredQuery_CompositeFilter_Operator>[
    OPERATOR_UNSPECIFIED,
    AND,
    OR,
  ];

  static final $core.Map<$core.int, StructuredQuery_CompositeFilter_Operator>
      _byValue = $pb.ProtobufEnum.initByValue(values);
  static StructuredQuery_CompositeFilter_Operator? valueOf($core.int value) =>
      _byValue[value];

  const StructuredQuery_CompositeFilter_Operator._($core.int v, $core.String n)
      : super(v, n);
}

/// A field filter operator.
class StructuredQuery_FieldFilter_Operator extends $pb.ProtobufEnum {
  static const StructuredQuery_FieldFilter_Operator OPERATOR_UNSPECIFIED =
      StructuredQuery_FieldFilter_Operator._(
          0, _omitEnumNames ? '' : 'OPERATOR_UNSPECIFIED');
  static const StructuredQuery_FieldFilter_Operator LESS_THAN =
      StructuredQuery_FieldFilter_Operator._(
          1, _omitEnumNames ? '' : 'LESS_THAN');
  static const StructuredQuery_FieldFilter_Operator LESS_THAN_OR_EQUAL =
      StructuredQuery_FieldFilter_Operator._(
          2, _omitEnumNames ? '' : 'LESS_THAN_OR_EQUAL');
  static const StructuredQuery_FieldFilter_Operator GREATER_THAN =
      StructuredQuery_FieldFilter_Operator._(
          3, _omitEnumNames ? '' : 'GREATER_THAN');
  static const StructuredQuery_FieldFilter_Operator GREATER_THAN_OR_EQUAL =
      StructuredQuery_FieldFilter_Operator._(
          4, _omitEnumNames ? '' : 'GREATER_THAN_OR_EQUAL');
  static const StructuredQuery_FieldFilter_Operator EQUAL =
      StructuredQuery_FieldFilter_Operator._(5, _omitEnumNames ? '' : 'EQUAL');
  static const StructuredQuery_FieldFilter_Operator NOT_EQUAL =
      StructuredQuery_FieldFilter_Operator._(
          6, _omitEnumNames ? '' : 'NOT_EQUAL');
  static const StructuredQuery_FieldFilter_Operator ARRAY_CONTAINS =
      StructuredQuery_FieldFilter_Operator._(
          7, _omitEnumNames ? '' : 'ARRAY_CONTAINS');
  static const StructuredQuery_FieldFilter_Operator IN =
      StructuredQuery_FieldFilter_Operator._(8, _omitEnumNames ? '' : 'IN');
  static const StructuredQuery_FieldFilter_Operator ARRAY_CONTAINS_ANY =
      StructuredQuery_FieldFilter_Operator._(
          9, _omitEnumNames ? '' : 'ARRAY_CONTAINS_ANY');
  static const StructuredQuery_FieldFilter_Operator NOT_IN =
      StructuredQuery_FieldFilter_Operator._(
          10, _omitEnumNames ? '' : 'NOT_IN');

  static const $core.List<StructuredQuery_FieldFilter_Operator> values =
      <StructuredQuery_FieldFilter_Operator>[
    OPERATOR_UNSPECIFIED,
    LESS_THAN,
    LESS_THAN_OR_EQUAL,
    GREATER_THAN,
    GREATER_THAN_OR_EQUAL,
    EQUAL,
    NOT_EQUAL,
    ARRAY_CONTAINS,
    IN,
    ARRAY_CONTAINS_ANY,
    NOT_IN,
  ];

  static final $core.Map<$core.int, StructuredQuery_FieldFilter_Operator>
      _byValue = $pb.ProtobufEnum.initByValue(values);
  static StructuredQuery_FieldFilter_Operator? valueOf($core.int value) =>
      _byValue[value];

  const StructuredQuery_FieldFilter_Operator._($core.int v, $core.String n)
      : super(v, n);
}

/// A unary operator.
class StructuredQuery_UnaryFilter_Operator extends $pb.ProtobufEnum {
  static const StructuredQuery_UnaryFilter_Operator OPERATOR_UNSPECIFIED =
      StructuredQuery_UnaryFilter_Operator._(
          0, _omitEnumNames ? '' : 'OPERATOR_UNSPECIFIED');
  static const StructuredQuery_UnaryFilter_Operator IS_NAN =
      StructuredQuery_UnaryFilter_Operator._(2, _omitEnumNames ? '' : 'IS_NAN');
  static const StructuredQuery_UnaryFilter_Operator IS_NULL =
      StructuredQuery_UnaryFilter_Operator._(
          3, _omitEnumNames ? '' : 'IS_NULL');
  static const StructuredQuery_UnaryFilter_Operator IS_NOT_NAN =
      StructuredQuery_UnaryFilter_Operator._(
          4, _omitEnumNames ? '' : 'IS_NOT_NAN');
  static const StructuredQuery_UnaryFilter_Operator IS_NOT_NULL =
      StructuredQuery_UnaryFilter_Operator._(
          5, _omitEnumNames ? '' : 'IS_NOT_NULL');

  static const $core.List<StructuredQuery_UnaryFilter_Operator> values =
      <StructuredQuery_UnaryFilter_Operator>[
    OPERATOR_UNSPECIFIED,
    IS_NAN,
    IS_NULL,
    IS_NOT_NAN,
    IS_NOT_NULL,
  ];

  static final $core.Map<$core.int, StructuredQuery_UnaryFilter_Operator>
      _byValue = $pb.ProtobufEnum.initByValue(values);
  static StructuredQuery_UnaryFilter_Operator? valueOf($core.int value) =>
      _byValue[value];

  const StructuredQuery_UnaryFilter_Operator._($core.int v, $core.String n)
      : super(v, n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');

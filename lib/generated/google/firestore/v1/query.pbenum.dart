///
//  Generated code. Do not modify.
//  source: google/firestore/v1/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class StructuredQuery_Direction extends $pb.ProtobufEnum {
  static const StructuredQuery_Direction DIRECTION_UNSPECIFIED =
      StructuredQuery_Direction._(
          0,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'DIRECTION_UNSPECIFIED');
  static const StructuredQuery_Direction ASCENDING =
      StructuredQuery_Direction._(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'ASCENDING');
  static const StructuredQuery_Direction DESCENDING =
      StructuredQuery_Direction._(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'DESCENDING');

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

class StructuredQuery_CompositeFilter_Operator extends $pb.ProtobufEnum {
  static const StructuredQuery_CompositeFilter_Operator OPERATOR_UNSPECIFIED =
      StructuredQuery_CompositeFilter_Operator._(
          0,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'OPERATOR_UNSPECIFIED');
  static const StructuredQuery_CompositeFilter_Operator AND =
      StructuredQuery_CompositeFilter_Operator._(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'AND');

  static const $core.List<StructuredQuery_CompositeFilter_Operator> values =
      <StructuredQuery_CompositeFilter_Operator>[
    OPERATOR_UNSPECIFIED,
    AND,
  ];

  static final $core.Map<$core.int, StructuredQuery_CompositeFilter_Operator>
      _byValue = $pb.ProtobufEnum.initByValue(values);
  static StructuredQuery_CompositeFilter_Operator? valueOf($core.int value) =>
      _byValue[value];

  const StructuredQuery_CompositeFilter_Operator._($core.int v, $core.String n)
      : super(v, n);
}

class StructuredQuery_FieldFilter_Operator extends $pb.ProtobufEnum {
  static const StructuredQuery_FieldFilter_Operator OPERATOR_UNSPECIFIED =
      StructuredQuery_FieldFilter_Operator._(
          0,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'OPERATOR_UNSPECIFIED');
  static const StructuredQuery_FieldFilter_Operator LESS_THAN =
      StructuredQuery_FieldFilter_Operator._(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'LESS_THAN');
  static const StructuredQuery_FieldFilter_Operator LESS_THAN_OR_EQUAL =
      StructuredQuery_FieldFilter_Operator._(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'LESS_THAN_OR_EQUAL');
  static const StructuredQuery_FieldFilter_Operator GREATER_THAN =
      StructuredQuery_FieldFilter_Operator._(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'GREATER_THAN');
  static const StructuredQuery_FieldFilter_Operator GREATER_THAN_OR_EQUAL =
      StructuredQuery_FieldFilter_Operator._(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'GREATER_THAN_OR_EQUAL');
  static const StructuredQuery_FieldFilter_Operator EQUAL =
      StructuredQuery_FieldFilter_Operator._(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'EQUAL');
  static const StructuredQuery_FieldFilter_Operator NOT_EQUAL =
      StructuredQuery_FieldFilter_Operator._(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'NOT_EQUAL');
  static const StructuredQuery_FieldFilter_Operator ARRAY_CONTAINS =
      StructuredQuery_FieldFilter_Operator._(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'ARRAY_CONTAINS');
  static const StructuredQuery_FieldFilter_Operator IN =
      StructuredQuery_FieldFilter_Operator._(
          8,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'IN');
  static const StructuredQuery_FieldFilter_Operator ARRAY_CONTAINS_ANY =
      StructuredQuery_FieldFilter_Operator._(
          9,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'ARRAY_CONTAINS_ANY');
  static const StructuredQuery_FieldFilter_Operator NOT_IN =
      StructuredQuery_FieldFilter_Operator._(
          10,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'NOT_IN');

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

class StructuredQuery_UnaryFilter_Operator extends $pb.ProtobufEnum {
  static const StructuredQuery_UnaryFilter_Operator OPERATOR_UNSPECIFIED =
      StructuredQuery_UnaryFilter_Operator._(
          0,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'OPERATOR_UNSPECIFIED');
  static const StructuredQuery_UnaryFilter_Operator IS_NAN =
      StructuredQuery_UnaryFilter_Operator._(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'IS_NAN');
  static const StructuredQuery_UnaryFilter_Operator IS_NULL =
      StructuredQuery_UnaryFilter_Operator._(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'IS_NULL');
  static const StructuredQuery_UnaryFilter_Operator IS_NOT_NAN =
      StructuredQuery_UnaryFilter_Operator._(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'IS_NOT_NAN');
  static const StructuredQuery_UnaryFilter_Operator IS_NOT_NULL =
      StructuredQuery_UnaryFilter_Operator._(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'IS_NOT_NULL');

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

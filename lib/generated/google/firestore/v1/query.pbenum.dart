///
//  Generated code. Do not modify.
//  source: google/firestore/v1/query.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class StructuredQuery_Direction extends $pb.ProtobufEnum {
  static const StructuredQuery_Direction DIRECTION_UNSPECIFIED =
      StructuredQuery_Direction._(0, 'DIRECTION_UNSPECIFIED');
  static const StructuredQuery_Direction ASCENDING =
      StructuredQuery_Direction._(1, 'ASCENDING');
  static const StructuredQuery_Direction DESCENDING =
      StructuredQuery_Direction._(2, 'DESCENDING');

  static const $core.List<StructuredQuery_Direction> values =
      <StructuredQuery_Direction>[
    DIRECTION_UNSPECIFIED,
    ASCENDING,
    DESCENDING,
  ];

  static final $core.Map<$core.int, StructuredQuery_Direction> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static StructuredQuery_Direction valueOf($core.int value) => _byValue[value];

  const StructuredQuery_Direction._($core.int v, $core.String n) : super(v, n);
}

class StructuredQuery_CompositeFilter_Operator extends $pb.ProtobufEnum {
  static const StructuredQuery_CompositeFilter_Operator OPERATOR_UNSPECIFIED =
      StructuredQuery_CompositeFilter_Operator._(0, 'OPERATOR_UNSPECIFIED');
  static const StructuredQuery_CompositeFilter_Operator AND =
      StructuredQuery_CompositeFilter_Operator._(1, 'AND');

  static const $core.List<StructuredQuery_CompositeFilter_Operator> values =
      <StructuredQuery_CompositeFilter_Operator>[
    OPERATOR_UNSPECIFIED,
    AND,
  ];

  static final $core.Map<$core.int, StructuredQuery_CompositeFilter_Operator>
      _byValue = $pb.ProtobufEnum.initByValue(values);
  static StructuredQuery_CompositeFilter_Operator valueOf($core.int value) =>
      _byValue[value];

  const StructuredQuery_CompositeFilter_Operator._($core.int v, $core.String n)
      : super(v, n);
}

class StructuredQuery_FieldFilter_Operator extends $pb.ProtobufEnum {
  static const StructuredQuery_FieldFilter_Operator OPERATOR_UNSPECIFIED =
      StructuredQuery_FieldFilter_Operator._(0, 'OPERATOR_UNSPECIFIED');
  static const StructuredQuery_FieldFilter_Operator LESS_THAN =
      StructuredQuery_FieldFilter_Operator._(1, 'LESS_THAN');
  static const StructuredQuery_FieldFilter_Operator LESS_THAN_OR_EQUAL =
      StructuredQuery_FieldFilter_Operator._(2, 'LESS_THAN_OR_EQUAL');
  static const StructuredQuery_FieldFilter_Operator GREATER_THAN =
      StructuredQuery_FieldFilter_Operator._(3, 'GREATER_THAN');
  static const StructuredQuery_FieldFilter_Operator GREATER_THAN_OR_EQUAL =
      StructuredQuery_FieldFilter_Operator._(4, 'GREATER_THAN_OR_EQUAL');
  static const StructuredQuery_FieldFilter_Operator EQUAL =
      StructuredQuery_FieldFilter_Operator._(5, 'EQUAL');
  static const StructuredQuery_FieldFilter_Operator ARRAY_CONTAINS =
      StructuredQuery_FieldFilter_Operator._(7, 'ARRAY_CONTAINS');

  static const $core.List<StructuredQuery_FieldFilter_Operator> values =
      <StructuredQuery_FieldFilter_Operator>[
    OPERATOR_UNSPECIFIED,
    LESS_THAN,
    LESS_THAN_OR_EQUAL,
    GREATER_THAN,
    GREATER_THAN_OR_EQUAL,
    EQUAL,
    ARRAY_CONTAINS,
  ];

  static final $core.Map<$core.int, StructuredQuery_FieldFilter_Operator>
      _byValue = $pb.ProtobufEnum.initByValue(values);
  static StructuredQuery_FieldFilter_Operator valueOf($core.int value) =>
      _byValue[value];

  const StructuredQuery_FieldFilter_Operator._($core.int v, $core.String n)
      : super(v, n);
}

class StructuredQuery_UnaryFilter_Operator extends $pb.ProtobufEnum {
  static const StructuredQuery_UnaryFilter_Operator OPERATOR_UNSPECIFIED =
      StructuredQuery_UnaryFilter_Operator._(0, 'OPERATOR_UNSPECIFIED');
  static const StructuredQuery_UnaryFilter_Operator IS_NAN =
      StructuredQuery_UnaryFilter_Operator._(2, 'IS_NAN');
  static const StructuredQuery_UnaryFilter_Operator IS_NULL =
      StructuredQuery_UnaryFilter_Operator._(3, 'IS_NULL');

  static const $core.List<StructuredQuery_UnaryFilter_Operator> values =
      <StructuredQuery_UnaryFilter_Operator>[
    OPERATOR_UNSPECIFIED,
    IS_NAN,
    IS_NULL,
  ];

  static final $core.Map<$core.int, StructuredQuery_UnaryFilter_Operator>
      _byValue = $pb.ProtobufEnum.initByValue(values);
  static StructuredQuery_UnaryFilter_Operator valueOf($core.int value) =>
      _byValue[value];

  const StructuredQuery_UnaryFilter_Operator._($core.int v, $core.String n)
      : super(v, n);
}

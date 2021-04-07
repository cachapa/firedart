///
//  Generated code. Do not modify.
//  source: google/firestore/v1/firestore.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class TargetChange_TargetChangeType extends $pb.ProtobufEnum {
  static const TargetChange_TargetChangeType NO_CHANGE =
      TargetChange_TargetChangeType._(
          0,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'NO_CHANGE');
  static const TargetChange_TargetChangeType ADD =
      TargetChange_TargetChangeType._(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'ADD');
  static const TargetChange_TargetChangeType REMOVE =
      TargetChange_TargetChangeType._(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'REMOVE');
  static const TargetChange_TargetChangeType CURRENT =
      TargetChange_TargetChangeType._(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'CURRENT');
  static const TargetChange_TargetChangeType RESET =
      TargetChange_TargetChangeType._(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'RESET');

  static const $core.List<TargetChange_TargetChangeType> values =
      <TargetChange_TargetChangeType>[
    NO_CHANGE,
    ADD,
    REMOVE,
    CURRENT,
    RESET,
  ];

  static final $core.Map<$core.int, TargetChange_TargetChangeType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static TargetChange_TargetChangeType? valueOf($core.int value) =>
      _byValue[value];

  const TargetChange_TargetChangeType._($core.int v, $core.String n)
      : super(v, n);
}

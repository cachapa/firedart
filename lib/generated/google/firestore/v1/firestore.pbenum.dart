///
//  Generated code. Do not modify.
//  source: google/firestore/v1/firestore.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class TargetChange_TargetChangeType extends $pb.ProtobufEnum {
  static const TargetChange_TargetChangeType NO_CHANGE =
      TargetChange_TargetChangeType._(0, 'NO_CHANGE');
  static const TargetChange_TargetChangeType ADD =
      TargetChange_TargetChangeType._(1, 'ADD');
  static const TargetChange_TargetChangeType REMOVE =
      TargetChange_TargetChangeType._(2, 'REMOVE');
  static const TargetChange_TargetChangeType CURRENT =
      TargetChange_TargetChangeType._(3, 'CURRENT');
  static const TargetChange_TargetChangeType RESET =
      TargetChange_TargetChangeType._(4, 'RESET');

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
  static TargetChange_TargetChangeType valueOf($core.int value) =>
      _byValue[value];

  const TargetChange_TargetChangeType._($core.int v, $core.String n)
      : super(v, n);
}

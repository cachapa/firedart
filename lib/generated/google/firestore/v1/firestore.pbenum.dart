//
//  Generated code. Do not modify.
//  source: google/firestore/v1/firestore.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// The type of change.
class TargetChange_TargetChangeType extends $pb.ProtobufEnum {
  static const TargetChange_TargetChangeType NO_CHANGE =
      TargetChange_TargetChangeType._(0, _omitEnumNames ? '' : 'NO_CHANGE');
  static const TargetChange_TargetChangeType ADD =
      TargetChange_TargetChangeType._(1, _omitEnumNames ? '' : 'ADD');
  static const TargetChange_TargetChangeType REMOVE =
      TargetChange_TargetChangeType._(2, _omitEnumNames ? '' : 'REMOVE');
  static const TargetChange_TargetChangeType CURRENT =
      TargetChange_TargetChangeType._(3, _omitEnumNames ? '' : 'CURRENT');
  static const TargetChange_TargetChangeType RESET =
      TargetChange_TargetChangeType._(4, _omitEnumNames ? '' : 'RESET');

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

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');

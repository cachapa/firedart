///
//  Generated code. Do not modify.
//  source: google/firestore/v1/write.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class DocumentTransform_FieldTransform_ServerValue extends $pb.ProtobufEnum {
  static const DocumentTransform_FieldTransform_ServerValue
      SERVER_VALUE_UNSPECIFIED = DocumentTransform_FieldTransform_ServerValue._(
          0,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'SERVER_VALUE_UNSPECIFIED');
  static const DocumentTransform_FieldTransform_ServerValue REQUEST_TIME =
      DocumentTransform_FieldTransform_ServerValue._(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_enum_names')
              ? ''
              : 'REQUEST_TIME');

  static const $core.List<DocumentTransform_FieldTransform_ServerValue> values =
      <DocumentTransform_FieldTransform_ServerValue>[
    SERVER_VALUE_UNSPECIFIED,
    REQUEST_TIME,
  ];

  static final $core
          .Map<$core.int, DocumentTransform_FieldTransform_ServerValue>
      _byValue = $pb.ProtobufEnum.initByValue(values);
  static DocumentTransform_FieldTransform_ServerValue? valueOf(
          $core.int value) =>
      _byValue[value];

  const DocumentTransform_FieldTransform_ServerValue._(
      $core.int v, $core.String n)
      : super(v, n);
}

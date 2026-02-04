// This is a generated file - do not edit.
//
// Generated from google/firestore/v1/pipeline.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use structuredPipelineDescriptor instead')
const StructuredPipeline$json = {
  '1': 'StructuredPipeline',
  '2': [
    {
      '1': 'pipeline',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Pipeline',
      '8': {},
      '10': 'pipeline'
    },
    {
      '1': 'options',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.StructuredPipeline.OptionsEntry',
      '8': {},
      '10': 'options'
    },
  ],
  '3': [StructuredPipeline_OptionsEntry$json],
};

@$core.Deprecated('Use structuredPipelineDescriptor instead')
const StructuredPipeline_OptionsEntry$json = {
  '1': 'OptionsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Value',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `StructuredPipeline`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List structuredPipelineDescriptor = $convert.base64Decode(
    'ChJTdHJ1Y3R1cmVkUGlwZWxpbmUSPgoIcGlwZWxpbmUYASABKAsyHS5nb29nbGUuZmlyZXN0b3'
    'JlLnYxLlBpcGVsaW5lQgPgQQJSCHBpcGVsaW5lElMKB29wdGlvbnMYAiADKAsyNC5nb29nbGUu'
    'ZmlyZXN0b3JlLnYxLlN0cnVjdHVyZWRQaXBlbGluZS5PcHRpb25zRW50cnlCA+BBAVIHb3B0aW'
    '9ucxpWCgxPcHRpb25zRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSMAoFdmFsdWUYAiABKAsyGi5n'
    'b29nbGUuZmlyZXN0b3JlLnYxLlZhbHVlUgV2YWx1ZToCOAE=');

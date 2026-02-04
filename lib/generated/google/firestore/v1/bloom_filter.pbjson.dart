// This is a generated file - do not edit.
//
// Generated from google/firestore/v1/bloom_filter.proto.

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

@$core.Deprecated('Use bitSequenceDescriptor instead')
const BitSequence$json = {
  '1': 'BitSequence',
  '2': [
    {'1': 'bitmap', '3': 1, '4': 1, '5': 12, '10': 'bitmap'},
    {'1': 'padding', '3': 2, '4': 1, '5': 5, '10': 'padding'},
  ],
};

/// Descriptor for `BitSequence`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bitSequenceDescriptor = $convert.base64Decode(
    'CgtCaXRTZXF1ZW5jZRIWCgZiaXRtYXAYASABKAxSBmJpdG1hcBIYCgdwYWRkaW5nGAIgASgFUg'
    'dwYWRkaW5n');

@$core.Deprecated('Use bloomFilterDescriptor instead')
const BloomFilter$json = {
  '1': 'BloomFilter',
  '2': [
    {
      '1': 'bits',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.BitSequence',
      '10': 'bits'
    },
    {'1': 'hash_count', '3': 2, '4': 1, '5': 5, '10': 'hashCount'},
  ],
};

/// Descriptor for `BloomFilter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bloomFilterDescriptor = $convert.base64Decode(
    'CgtCbG9vbUZpbHRlchI0CgRiaXRzGAEgASgLMiAuZ29vZ2xlLmZpcmVzdG9yZS52MS5CaXRTZX'
    'F1ZW5jZVIEYml0cxIdCgpoYXNoX2NvdW50GAIgASgFUgloYXNoQ291bnQ=');

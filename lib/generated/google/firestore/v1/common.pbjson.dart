///
//  Generated code. Do not modify.
//  source: google/firestore/v1/common.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use documentMaskDescriptor instead')
const DocumentMask$json = const {
  '1': 'DocumentMask',
  '2': const [
    const {'1': 'field_paths', '3': 1, '4': 3, '5': 9, '10': 'fieldPaths'},
  ],
};

/// Descriptor for `DocumentMask`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentMaskDescriptor = $convert.base64Decode(
    'CgxEb2N1bWVudE1hc2sSHwoLZmllbGRfcGF0aHMYASADKAlSCmZpZWxkUGF0aHM=');
@$core.Deprecated('Use preconditionDescriptor instead')
const Precondition$json = const {
  '1': 'Precondition',
  '2': const [
    const {'1': 'exists', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'exists'},
    const {
      '1': 'update_time',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '9': 0,
      '10': 'updateTime'
    },
  ],
  '8': const [
    const {'1': 'condition_type'},
  ],
};

/// Descriptor for `Precondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List preconditionDescriptor = $convert.base64Decode(
    'CgxQcmVjb25kaXRpb24SGAoGZXhpc3RzGAEgASgISABSBmV4aXN0cxI9Cgt1cGRhdGVfdGltZRgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAFIKdXBkYXRlVGltZUIQCg5jb25kaXRpb25fdHlwZQ==');
@$core.Deprecated('Use transactionOptionsDescriptor instead')
const TransactionOptions$json = const {
  '1': 'TransactionOptions',
  '2': const [
    const {
      '1': 'read_only',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.TransactionOptions.ReadOnly',
      '9': 0,
      '10': 'readOnly'
    },
    const {
      '1': 'read_write',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.TransactionOptions.ReadWrite',
      '9': 0,
      '10': 'readWrite'
    },
  ],
  '3': const [
    TransactionOptions_ReadWrite$json,
    TransactionOptions_ReadOnly$json
  ],
  '8': const [
    const {'1': 'mode'},
  ],
};

@$core.Deprecated('Use transactionOptionsDescriptor instead')
const TransactionOptions_ReadWrite$json = const {
  '1': 'ReadWrite',
  '2': const [
    const {
      '1': 'retry_transaction',
      '3': 1,
      '4': 1,
      '5': 12,
      '10': 'retryTransaction'
    },
  ],
};

@$core.Deprecated('Use transactionOptionsDescriptor instead')
const TransactionOptions_ReadOnly$json = const {
  '1': 'ReadOnly',
  '2': const [
    const {
      '1': 'read_time',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '9': 0,
      '10': 'readTime'
    },
  ],
  '8': const [
    const {'1': 'consistency_selector'},
  ],
};

/// Descriptor for `TransactionOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionOptionsDescriptor = $convert.base64Decode(
    'ChJUcmFuc2FjdGlvbk9wdGlvbnMSTwoJcmVhZF9vbmx5GAIgASgLMjAuZ29vZ2xlLmZpcmVzdG9yZS52MS5UcmFuc2FjdGlvbk9wdGlvbnMuUmVhZE9ubHlIAFIIcmVhZE9ubHkSUgoKcmVhZF93cml0ZRgDIAEoCzIxLmdvb2dsZS5maXJlc3RvcmUudjEuVHJhbnNhY3Rpb25PcHRpb25zLlJlYWRXcml0ZUgAUglyZWFkV3JpdGUaOAoJUmVhZFdyaXRlEisKEXJldHJ5X3RyYW5zYWN0aW9uGAEgASgMUhByZXRyeVRyYW5zYWN0aW9uGl0KCFJlYWRPbmx5EjkKCXJlYWRfdGltZRgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAFIIcmVhZFRpbWVCFgoUY29uc2lzdGVuY3lfc2VsZWN0b3JCBgoEbW9kZQ==');

// This is a generated file - do not edit.
//
// Generated from google/firestore/v1/common.proto.

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

@$core.Deprecated('Use documentMaskDescriptor instead')
const DocumentMask$json = {
  '1': 'DocumentMask',
  '2': [
    {'1': 'field_paths', '3': 1, '4': 3, '5': 9, '10': 'fieldPaths'},
  ],
};

/// Descriptor for `DocumentMask`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentMaskDescriptor = $convert.base64Decode(
    'CgxEb2N1bWVudE1hc2sSHwoLZmllbGRfcGF0aHMYASADKAlSCmZpZWxkUGF0aHM=');

@$core.Deprecated('Use preconditionDescriptor instead')
const Precondition$json = {
  '1': 'Precondition',
  '2': [
    {'1': 'exists', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'exists'},
    {
      '1': 'update_time',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '9': 0,
      '10': 'updateTime'
    },
  ],
  '8': [
    {'1': 'condition_type'},
  ],
};

/// Descriptor for `Precondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List preconditionDescriptor = $convert.base64Decode(
    'CgxQcmVjb25kaXRpb24SGAoGZXhpc3RzGAEgASgISABSBmV4aXN0cxI9Cgt1cGRhdGVfdGltZR'
    'gCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAFIKdXBkYXRlVGltZUIQCg5jb25k'
    'aXRpb25fdHlwZQ==');

@$core.Deprecated('Use transactionOptionsDescriptor instead')
const TransactionOptions$json = {
  '1': 'TransactionOptions',
  '2': [
    {
      '1': 'read_only',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.TransactionOptions.ReadOnly',
      '9': 0,
      '10': 'readOnly'
    },
    {
      '1': 'read_write',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.TransactionOptions.ReadWrite',
      '9': 0,
      '10': 'readWrite'
    },
  ],
  '3': [TransactionOptions_ReadWrite$json, TransactionOptions_ReadOnly$json],
  '8': [
    {'1': 'mode'},
  ],
};

@$core.Deprecated('Use transactionOptionsDescriptor instead')
const TransactionOptions_ReadWrite$json = {
  '1': 'ReadWrite',
  '2': [
    {
      '1': 'retry_transaction',
      '3': 1,
      '4': 1,
      '5': 12,
      '10': 'retryTransaction'
    },
  ],
};

@$core.Deprecated('Use transactionOptionsDescriptor instead')
const TransactionOptions_ReadOnly$json = {
  '1': 'ReadOnly',
  '2': [
    {
      '1': 'read_time',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '9': 0,
      '10': 'readTime'
    },
  ],
  '8': [
    {'1': 'consistency_selector'},
  ],
};

/// Descriptor for `TransactionOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionOptionsDescriptor = $convert.base64Decode(
    'ChJUcmFuc2FjdGlvbk9wdGlvbnMSTwoJcmVhZF9vbmx5GAIgASgLMjAuZ29vZ2xlLmZpcmVzdG'
    '9yZS52MS5UcmFuc2FjdGlvbk9wdGlvbnMuUmVhZE9ubHlIAFIIcmVhZE9ubHkSUgoKcmVhZF93'
    'cml0ZRgDIAEoCzIxLmdvb2dsZS5maXJlc3RvcmUudjEuVHJhbnNhY3Rpb25PcHRpb25zLlJlYW'
    'RXcml0ZUgAUglyZWFkV3JpdGUaOAoJUmVhZFdyaXRlEisKEXJldHJ5X3RyYW5zYWN0aW9uGAEg'
    'ASgMUhByZXRyeVRyYW5zYWN0aW9uGl0KCFJlYWRPbmx5EjkKCXJlYWRfdGltZRgCIAEoCzIaLm'
    'dvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAFIIcmVhZFRpbWVCFgoUY29uc2lzdGVuY3lfc2Vs'
    'ZWN0b3JCBgoEbW9kZQ==');

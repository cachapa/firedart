///
//  Generated code. Do not modify.
//  source: google/firestore/v1/document.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use documentDescriptor instead')
const Document$json = const {
  '1': 'Document',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {
      '1': 'fields',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.Document.FieldsEntry',
      '10': 'fields'
    },
    const {
      '1': 'create_time',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'createTime'
    },
    const {
      '1': 'update_time',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'updateTime'
    },
  ],
  '3': const [Document_FieldsEntry$json],
};

@$core.Deprecated('Use documentDescriptor instead')
const Document_FieldsEntry$json = const {
  '1': 'FieldsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Value',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

/// Descriptor for `Document`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentDescriptor = $convert.base64Decode(
    'CghEb2N1bWVudBISCgRuYW1lGAEgASgJUgRuYW1lEkEKBmZpZWxkcxgCIAMoCzIpLmdvb2dsZS5maXJlc3RvcmUudjEuRG9jdW1lbnQuRmllbGRzRW50cnlSBmZpZWxkcxI7CgtjcmVhdGVfdGltZRgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCmNyZWF0ZVRpbWUSOwoLdXBkYXRlX3RpbWUYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgp1cGRhdGVUaW1lGlUKC0ZpZWxkc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EjAKBXZhbHVlGAIgASgLMhouZ29vZ2xlLmZpcmVzdG9yZS52MS5WYWx1ZVIFdmFsdWU6AjgB');
@$core.Deprecated('Use valueDescriptor instead')
const Value$json = const {
  '1': 'Value',
  '2': const [
    const {
      '1': 'null_value',
      '3': 11,
      '4': 1,
      '5': 14,
      '6': '.google.protobuf.NullValue',
      '9': 0,
      '10': 'nullValue'
    },
    const {
      '1': 'boolean_value',
      '3': 1,
      '4': 1,
      '5': 8,
      '9': 0,
      '10': 'booleanValue'
    },
    const {
      '1': 'integer_value',
      '3': 2,
      '4': 1,
      '5': 3,
      '9': 0,
      '10': 'integerValue'
    },
    const {
      '1': 'double_value',
      '3': 3,
      '4': 1,
      '5': 1,
      '9': 0,
      '10': 'doubleValue'
    },
    const {
      '1': 'timestamp_value',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '9': 0,
      '10': 'timestampValue'
    },
    const {
      '1': 'string_value',
      '3': 17,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'stringValue'
    },
    const {
      '1': 'bytes_value',
      '3': 18,
      '4': 1,
      '5': 12,
      '9': 0,
      '10': 'bytesValue'
    },
    const {
      '1': 'reference_value',
      '3': 5,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'referenceValue'
    },
    const {
      '1': 'geo_point_value',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.type.LatLng',
      '9': 0,
      '10': 'geoPointValue'
    },
    const {
      '1': 'array_value',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.ArrayValue',
      '9': 0,
      '10': 'arrayValue'
    },
    const {
      '1': 'map_value',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.MapValue',
      '9': 0,
      '10': 'mapValue'
    },
  ],
  '8': const [
    const {'1': 'value_type'},
  ],
};

/// Descriptor for `Value`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List valueDescriptor = $convert.base64Decode(
    'CgVWYWx1ZRI7CgpudWxsX3ZhbHVlGAsgASgOMhouZ29vZ2xlLnByb3RvYnVmLk51bGxWYWx1ZUgAUgludWxsVmFsdWUSJQoNYm9vbGVhbl92YWx1ZRgBIAEoCEgAUgxib29sZWFuVmFsdWUSJQoNaW50ZWdlcl92YWx1ZRgCIAEoA0gAUgxpbnRlZ2VyVmFsdWUSIwoMZG91YmxlX3ZhbHVlGAMgASgBSABSC2RvdWJsZVZhbHVlEkUKD3RpbWVzdGFtcF92YWx1ZRgKIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAFIOdGltZXN0YW1wVmFsdWUSIwoMc3RyaW5nX3ZhbHVlGBEgASgJSABSC3N0cmluZ1ZhbHVlEiEKC2J5dGVzX3ZhbHVlGBIgASgMSABSCmJ5dGVzVmFsdWUSKQoPcmVmZXJlbmNlX3ZhbHVlGAUgASgJSABSDnJlZmVyZW5jZVZhbHVlEj0KD2dlb19wb2ludF92YWx1ZRgIIAEoCzITLmdvb2dsZS50eXBlLkxhdExuZ0gAUg1nZW9Qb2ludFZhbHVlEkIKC2FycmF5X3ZhbHVlGAkgASgLMh8uZ29vZ2xlLmZpcmVzdG9yZS52MS5BcnJheVZhbHVlSABSCmFycmF5VmFsdWUSPAoJbWFwX3ZhbHVlGAYgASgLMh0uZ29vZ2xlLmZpcmVzdG9yZS52MS5NYXBWYWx1ZUgAUghtYXBWYWx1ZUIMCgp2YWx1ZV90eXBl');
@$core.Deprecated('Use arrayValueDescriptor instead')
const ArrayValue$json = const {
  '1': 'ArrayValue',
  '2': const [
    const {
      '1': 'values',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.Value',
      '10': 'values'
    },
  ],
};

/// Descriptor for `ArrayValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List arrayValueDescriptor = $convert.base64Decode(
    'CgpBcnJheVZhbHVlEjIKBnZhbHVlcxgBIAMoCzIaLmdvb2dsZS5maXJlc3RvcmUudjEuVmFsdWVSBnZhbHVlcw==');
@$core.Deprecated('Use mapValueDescriptor instead')
const MapValue$json = const {
  '1': 'MapValue',
  '2': const [
    const {
      '1': 'fields',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.MapValue.FieldsEntry',
      '10': 'fields'
    },
  ],
  '3': const [MapValue_FieldsEntry$json],
};

@$core.Deprecated('Use mapValueDescriptor instead')
const MapValue_FieldsEntry$json = const {
  '1': 'FieldsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Value',
      '10': 'value'
    },
  ],
  '7': const {'7': true},
};

/// Descriptor for `MapValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapValueDescriptor = $convert.base64Decode(
    'CghNYXBWYWx1ZRJBCgZmaWVsZHMYASADKAsyKS5nb29nbGUuZmlyZXN0b3JlLnYxLk1hcFZhbHVlLkZpZWxkc0VudHJ5UgZmaWVsZHMaVQoLRmllbGRzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSMAoFdmFsdWUYAiABKAsyGi5nb29nbGUuZmlyZXN0b3JlLnYxLlZhbHVlUgV2YWx1ZToCOAE=');

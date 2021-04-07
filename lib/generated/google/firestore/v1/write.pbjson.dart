///
//  Generated code. Do not modify.
//  source: google/firestore/v1/write.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use writeDescriptor instead')
const Write$json = const {
  '1': 'Write',
  '2': const [
    const {
      '1': 'update',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Document',
      '9': 0,
      '10': 'update'
    },
    const {'1': 'delete', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'delete'},
    const {
      '1': 'transform',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.DocumentTransform',
      '9': 0,
      '10': 'transform'
    },
    const {
      '1': 'update_mask',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.DocumentMask',
      '10': 'updateMask'
    },
    const {
      '1': 'update_transforms',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.DocumentTransform.FieldTransform',
      '10': 'updateTransforms'
    },
    const {
      '1': 'current_document',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Precondition',
      '10': 'currentDocument'
    },
  ],
  '8': const [
    const {'1': 'operation'},
  ],
};

/// Descriptor for `Write`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List writeDescriptor = $convert.base64Decode(
    'CgVXcml0ZRI3CgZ1cGRhdGUYASABKAsyHS5nb29nbGUuZmlyZXN0b3JlLnYxLkRvY3VtZW50SABSBnVwZGF0ZRIYCgZkZWxldGUYAiABKAlIAFIGZGVsZXRlEkYKCXRyYW5zZm9ybRgGIAEoCzImLmdvb2dsZS5maXJlc3RvcmUudjEuRG9jdW1lbnRUcmFuc2Zvcm1IAFIJdHJhbnNmb3JtEkIKC3VwZGF0ZV9tYXNrGAMgASgLMiEuZ29vZ2xlLmZpcmVzdG9yZS52MS5Eb2N1bWVudE1hc2tSCnVwZGF0ZU1hc2sSYgoRdXBkYXRlX3RyYW5zZm9ybXMYByADKAsyNS5nb29nbGUuZmlyZXN0b3JlLnYxLkRvY3VtZW50VHJhbnNmb3JtLkZpZWxkVHJhbnNmb3JtUhB1cGRhdGVUcmFuc2Zvcm1zEkwKEGN1cnJlbnRfZG9jdW1lbnQYBCABKAsyIS5nb29nbGUuZmlyZXN0b3JlLnYxLlByZWNvbmRpdGlvblIPY3VycmVudERvY3VtZW50QgsKCW9wZXJhdGlvbg==');
@$core.Deprecated('Use documentTransformDescriptor instead')
const DocumentTransform$json = const {
  '1': 'DocumentTransform',
  '2': const [
    const {'1': 'document', '3': 1, '4': 1, '5': 9, '10': 'document'},
    const {
      '1': 'field_transforms',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.DocumentTransform.FieldTransform',
      '10': 'fieldTransforms'
    },
  ],
  '3': const [DocumentTransform_FieldTransform$json],
};

@$core.Deprecated('Use documentTransformDescriptor instead')
const DocumentTransform_FieldTransform$json = const {
  '1': 'FieldTransform',
  '2': const [
    const {'1': 'field_path', '3': 1, '4': 1, '5': 9, '10': 'fieldPath'},
    const {
      '1': 'set_to_server_value',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.google.firestore.v1.DocumentTransform.FieldTransform.ServerValue',
      '9': 0,
      '10': 'setToServerValue'
    },
    const {
      '1': 'increment',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Value',
      '9': 0,
      '10': 'increment'
    },
    const {
      '1': 'maximum',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Value',
      '9': 0,
      '10': 'maximum'
    },
    const {
      '1': 'minimum',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Value',
      '9': 0,
      '10': 'minimum'
    },
    const {
      '1': 'append_missing_elements',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.ArrayValue',
      '9': 0,
      '10': 'appendMissingElements'
    },
    const {
      '1': 'remove_all_from_array',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.ArrayValue',
      '9': 0,
      '10': 'removeAllFromArray'
    },
  ],
  '4': const [DocumentTransform_FieldTransform_ServerValue$json],
  '8': const [
    const {'1': 'transform_type'},
  ],
};

@$core.Deprecated('Use documentTransformDescriptor instead')
const DocumentTransform_FieldTransform_ServerValue$json = const {
  '1': 'ServerValue',
  '2': const [
    const {'1': 'SERVER_VALUE_UNSPECIFIED', '2': 0},
    const {'1': 'REQUEST_TIME', '2': 1},
  ],
};

/// Descriptor for `DocumentTransform`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentTransformDescriptor = $convert.base64Decode(
    'ChFEb2N1bWVudFRyYW5zZm9ybRIaCghkb2N1bWVudBgBIAEoCVIIZG9jdW1lbnQSYAoQZmllbGRfdHJhbnNmb3JtcxgCIAMoCzI1Lmdvb2dsZS5maXJlc3RvcmUudjEuRG9jdW1lbnRUcmFuc2Zvcm0uRmllbGRUcmFuc2Zvcm1SD2ZpZWxkVHJhbnNmb3JtcxrRBAoORmllbGRUcmFuc2Zvcm0SHQoKZmllbGRfcGF0aBgBIAEoCVIJZmllbGRQYXRoEnIKE3NldF90b19zZXJ2ZXJfdmFsdWUYAiABKA4yQS5nb29nbGUuZmlyZXN0b3JlLnYxLkRvY3VtZW50VHJhbnNmb3JtLkZpZWxkVHJhbnNmb3JtLlNlcnZlclZhbHVlSABSEHNldFRvU2VydmVyVmFsdWUSOgoJaW5jcmVtZW50GAMgASgLMhouZ29vZ2xlLmZpcmVzdG9yZS52MS5WYWx1ZUgAUglpbmNyZW1lbnQSNgoHbWF4aW11bRgEIAEoCzIaLmdvb2dsZS5maXJlc3RvcmUudjEuVmFsdWVIAFIHbWF4aW11bRI2CgdtaW5pbXVtGAUgASgLMhouZ29vZ2xlLmZpcmVzdG9yZS52MS5WYWx1ZUgAUgdtaW5pbXVtElkKF2FwcGVuZF9taXNzaW5nX2VsZW1lbnRzGAYgASgLMh8uZ29vZ2xlLmZpcmVzdG9yZS52MS5BcnJheVZhbHVlSABSFWFwcGVuZE1pc3NpbmdFbGVtZW50cxJUChVyZW1vdmVfYWxsX2Zyb21fYXJyYXkYByABKAsyHy5nb29nbGUuZmlyZXN0b3JlLnYxLkFycmF5VmFsdWVIAFIScmVtb3ZlQWxsRnJvbUFycmF5Ij0KC1NlcnZlclZhbHVlEhwKGFNFUlZFUl9WQUxVRV9VTlNQRUNJRklFRBAAEhAKDFJFUVVFU1RfVElNRRABQhAKDnRyYW5zZm9ybV90eXBl');
@$core.Deprecated('Use writeResultDescriptor instead')
const WriteResult$json = const {
  '1': 'WriteResult',
  '2': const [
    const {
      '1': 'update_time',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'updateTime'
    },
    const {
      '1': 'transform_results',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.Value',
      '10': 'transformResults'
    },
  ],
};

/// Descriptor for `WriteResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List writeResultDescriptor = $convert.base64Decode(
    'CgtXcml0ZVJlc3VsdBI7Cgt1cGRhdGVfdGltZRgBIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCnVwZGF0ZVRpbWUSRwoRdHJhbnNmb3JtX3Jlc3VsdHMYAiADKAsyGi5nb29nbGUuZmlyZXN0b3JlLnYxLlZhbHVlUhB0cmFuc2Zvcm1SZXN1bHRz');
@$core.Deprecated('Use documentChangeDescriptor instead')
const DocumentChange$json = const {
  '1': 'DocumentChange',
  '2': const [
    const {
      '1': 'document',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Document',
      '10': 'document'
    },
    const {'1': 'target_ids', '3': 5, '4': 3, '5': 5, '10': 'targetIds'},
    const {
      '1': 'removed_target_ids',
      '3': 6,
      '4': 3,
      '5': 5,
      '10': 'removedTargetIds'
    },
  ],
};

/// Descriptor for `DocumentChange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentChangeDescriptor = $convert.base64Decode(
    'Cg5Eb2N1bWVudENoYW5nZRI5Cghkb2N1bWVudBgBIAEoCzIdLmdvb2dsZS5maXJlc3RvcmUudjEuRG9jdW1lbnRSCGRvY3VtZW50Eh0KCnRhcmdldF9pZHMYBSADKAVSCXRhcmdldElkcxIsChJyZW1vdmVkX3RhcmdldF9pZHMYBiADKAVSEHJlbW92ZWRUYXJnZXRJZHM=');
@$core.Deprecated('Use documentDeleteDescriptor instead')
const DocumentDelete$json = const {
  '1': 'DocumentDelete',
  '2': const [
    const {'1': 'document', '3': 1, '4': 1, '5': 9, '10': 'document'},
    const {
      '1': 'removed_target_ids',
      '3': 6,
      '4': 3,
      '5': 5,
      '10': 'removedTargetIds'
    },
    const {
      '1': 'read_time',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'readTime'
    },
  ],
};

/// Descriptor for `DocumentDelete`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentDeleteDescriptor = $convert.base64Decode(
    'Cg5Eb2N1bWVudERlbGV0ZRIaCghkb2N1bWVudBgBIAEoCVIIZG9jdW1lbnQSLAoScmVtb3ZlZF90YXJnZXRfaWRzGAYgAygFUhByZW1vdmVkVGFyZ2V0SWRzEjcKCXJlYWRfdGltZRgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCHJlYWRUaW1l');
@$core.Deprecated('Use documentRemoveDescriptor instead')
const DocumentRemove$json = const {
  '1': 'DocumentRemove',
  '2': const [
    const {'1': 'document', '3': 1, '4': 1, '5': 9, '10': 'document'},
    const {
      '1': 'removed_target_ids',
      '3': 2,
      '4': 3,
      '5': 5,
      '10': 'removedTargetIds'
    },
    const {
      '1': 'read_time',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'readTime'
    },
  ],
};

/// Descriptor for `DocumentRemove`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentRemoveDescriptor = $convert.base64Decode(
    'Cg5Eb2N1bWVudFJlbW92ZRIaCghkb2N1bWVudBgBIAEoCVIIZG9jdW1lbnQSLAoScmVtb3ZlZF90YXJnZXRfaWRzGAIgAygFUhByZW1vdmVkVGFyZ2V0SWRzEjcKCXJlYWRfdGltZRgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCHJlYWRUaW1l');
@$core.Deprecated('Use existenceFilterDescriptor instead')
const ExistenceFilter$json = const {
  '1': 'ExistenceFilter',
  '2': const [
    const {'1': 'target_id', '3': 1, '4': 1, '5': 5, '10': 'targetId'},
    const {'1': 'count', '3': 2, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `ExistenceFilter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List existenceFilterDescriptor = $convert.base64Decode(
    'Cg9FeGlzdGVuY2VGaWx0ZXISGwoJdGFyZ2V0X2lkGAEgASgFUgh0YXJnZXRJZBIUCgVjb3VudBgCIAEoBVIFY291bnQ=');

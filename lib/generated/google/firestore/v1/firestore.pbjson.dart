///
//  Generated code. Do not modify.
//  source: google/firestore/v1/firestore.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getDocumentRequestDescriptor instead')
const GetDocumentRequest$json = const {
  '1': 'GetDocumentRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'name'},
    const {
      '1': 'mask',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.DocumentMask',
      '10': 'mask'
    },
    const {
      '1': 'transaction',
      '3': 3,
      '4': 1,
      '5': 12,
      '9': 0,
      '10': 'transaction'
    },
    const {
      '1': 'read_time',
      '3': 5,
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

/// Descriptor for `GetDocumentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDocumentRequestDescriptor = $convert.base64Decode(
    'ChJHZXREb2N1bWVudFJlcXVlc3QSFwoEbmFtZRgBIAEoCUID4EECUgRuYW1lEjUKBG1hc2sYAiABKAsyIS5nb29nbGUuZmlyZXN0b3JlLnYxLkRvY3VtZW50TWFza1IEbWFzaxIiCgt0cmFuc2FjdGlvbhgDIAEoDEgAUgt0cmFuc2FjdGlvbhI5CglyZWFkX3RpbWUYBSABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wSABSCHJlYWRUaW1lQhYKFGNvbnNpc3RlbmN5X3NlbGVjdG9y');
@$core.Deprecated('Use listDocumentsRequestDescriptor instead')
const ListDocumentsRequest$json = const {
  '1': 'ListDocumentsRequest',
  '2': const [
    const {
      '1': 'parent',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'parent'
    },
    const {
      '1': 'collection_id',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'collectionId'
    },
    const {'1': 'page_size', '3': 3, '4': 1, '5': 5, '10': 'pageSize'},
    const {'1': 'page_token', '3': 4, '4': 1, '5': 9, '10': 'pageToken'},
    const {'1': 'order_by', '3': 6, '4': 1, '5': 9, '10': 'orderBy'},
    const {
      '1': 'mask',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.DocumentMask',
      '10': 'mask'
    },
    const {
      '1': 'transaction',
      '3': 8,
      '4': 1,
      '5': 12,
      '9': 0,
      '10': 'transaction'
    },
    const {
      '1': 'read_time',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '9': 0,
      '10': 'readTime'
    },
    const {'1': 'show_missing', '3': 12, '4': 1, '5': 8, '10': 'showMissing'},
  ],
  '8': const [
    const {'1': 'consistency_selector'},
  ],
};

/// Descriptor for `ListDocumentsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDocumentsRequestDescriptor = $convert.base64Decode(
    'ChRMaXN0RG9jdW1lbnRzUmVxdWVzdBIbCgZwYXJlbnQYASABKAlCA+BBAlIGcGFyZW50EigKDWNvbGxlY3Rpb25faWQYAiABKAlCA+BBAlIMY29sbGVjdGlvbklkEhsKCXBhZ2Vfc2l6ZRgDIAEoBVIIcGFnZVNpemUSHQoKcGFnZV90b2tlbhgEIAEoCVIJcGFnZVRva2VuEhkKCG9yZGVyX2J5GAYgASgJUgdvcmRlckJ5EjUKBG1hc2sYByABKAsyIS5nb29nbGUuZmlyZXN0b3JlLnYxLkRvY3VtZW50TWFza1IEbWFzaxIiCgt0cmFuc2FjdGlvbhgIIAEoDEgAUgt0cmFuc2FjdGlvbhI5CglyZWFkX3RpbWUYCiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wSABSCHJlYWRUaW1lEiEKDHNob3dfbWlzc2luZxgMIAEoCFILc2hvd01pc3NpbmdCFgoUY29uc2lzdGVuY3lfc2VsZWN0b3I=');
@$core.Deprecated('Use listDocumentsResponseDescriptor instead')
const ListDocumentsResponse$json = const {
  '1': 'ListDocumentsResponse',
  '2': const [
    const {
      '1': 'documents',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.Document',
      '10': 'documents'
    },
    const {
      '1': 'next_page_token',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'nextPageToken'
    },
  ],
};

/// Descriptor for `ListDocumentsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDocumentsResponseDescriptor = $convert.base64Decode(
    'ChVMaXN0RG9jdW1lbnRzUmVzcG9uc2USOwoJZG9jdW1lbnRzGAEgAygLMh0uZ29vZ2xlLmZpcmVzdG9yZS52MS5Eb2N1bWVudFIJZG9jdW1lbnRzEiYKD25leHRfcGFnZV90b2tlbhgCIAEoCVINbmV4dFBhZ2VUb2tlbg==');
@$core.Deprecated('Use createDocumentRequestDescriptor instead')
const CreateDocumentRequest$json = const {
  '1': 'CreateDocumentRequest',
  '2': const [
    const {
      '1': 'parent',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'parent'
    },
    const {
      '1': 'collection_id',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'collectionId'
    },
    const {'1': 'document_id', '3': 3, '4': 1, '5': 9, '10': 'documentId'},
    const {
      '1': 'document',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Document',
      '8': const {},
      '10': 'document'
    },
    const {
      '1': 'mask',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.DocumentMask',
      '10': 'mask'
    },
  ],
};

/// Descriptor for `CreateDocumentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createDocumentRequestDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVEb2N1bWVudFJlcXVlc3QSGwoGcGFyZW50GAEgASgJQgPgQQJSBnBhcmVudBIoCg1jb2xsZWN0aW9uX2lkGAIgASgJQgPgQQJSDGNvbGxlY3Rpb25JZBIfCgtkb2N1bWVudF9pZBgDIAEoCVIKZG9jdW1lbnRJZBI+Cghkb2N1bWVudBgEIAEoCzIdLmdvb2dsZS5maXJlc3RvcmUudjEuRG9jdW1lbnRCA+BBAlIIZG9jdW1lbnQSNQoEbWFzaxgFIAEoCzIhLmdvb2dsZS5maXJlc3RvcmUudjEuRG9jdW1lbnRNYXNrUgRtYXNr');
@$core.Deprecated('Use updateDocumentRequestDescriptor instead')
const UpdateDocumentRequest$json = const {
  '1': 'UpdateDocumentRequest',
  '2': const [
    const {
      '1': 'document',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Document',
      '8': const {},
      '10': 'document'
    },
    const {
      '1': 'update_mask',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.DocumentMask',
      '10': 'updateMask'
    },
    const {
      '1': 'mask',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.DocumentMask',
      '10': 'mask'
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
};

/// Descriptor for `UpdateDocumentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateDocumentRequestDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVEb2N1bWVudFJlcXVlc3QSPgoIZG9jdW1lbnQYASABKAsyHS5nb29nbGUuZmlyZXN0b3JlLnYxLkRvY3VtZW50QgPgQQJSCGRvY3VtZW50EkIKC3VwZGF0ZV9tYXNrGAIgASgLMiEuZ29vZ2xlLmZpcmVzdG9yZS52MS5Eb2N1bWVudE1hc2tSCnVwZGF0ZU1hc2sSNQoEbWFzaxgDIAEoCzIhLmdvb2dsZS5maXJlc3RvcmUudjEuRG9jdW1lbnRNYXNrUgRtYXNrEkwKEGN1cnJlbnRfZG9jdW1lbnQYBCABKAsyIS5nb29nbGUuZmlyZXN0b3JlLnYxLlByZWNvbmRpdGlvblIPY3VycmVudERvY3VtZW50');
@$core.Deprecated('Use deleteDocumentRequestDescriptor instead')
const DeleteDocumentRequest$json = const {
  '1': 'DeleteDocumentRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'name'},
    const {
      '1': 'current_document',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Precondition',
      '10': 'currentDocument'
    },
  ],
};

/// Descriptor for `DeleteDocumentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteDocumentRequestDescriptor = $convert.base64Decode(
    'ChVEZWxldGVEb2N1bWVudFJlcXVlc3QSFwoEbmFtZRgBIAEoCUID4EECUgRuYW1lEkwKEGN1cnJlbnRfZG9jdW1lbnQYAiABKAsyIS5nb29nbGUuZmlyZXN0b3JlLnYxLlByZWNvbmRpdGlvblIPY3VycmVudERvY3VtZW50');
@$core.Deprecated('Use batchGetDocumentsRequestDescriptor instead')
const BatchGetDocumentsRequest$json = const {
  '1': 'BatchGetDocumentsRequest',
  '2': const [
    const {
      '1': 'database',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'database'
    },
    const {'1': 'documents', '3': 2, '4': 3, '5': 9, '10': 'documents'},
    const {
      '1': 'mask',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.DocumentMask',
      '10': 'mask'
    },
    const {
      '1': 'transaction',
      '3': 4,
      '4': 1,
      '5': 12,
      '9': 0,
      '10': 'transaction'
    },
    const {
      '1': 'new_transaction',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.TransactionOptions',
      '9': 0,
      '10': 'newTransaction'
    },
    const {
      '1': 'read_time',
      '3': 7,
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

/// Descriptor for `BatchGetDocumentsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchGetDocumentsRequestDescriptor =
    $convert.base64Decode(
        'ChhCYXRjaEdldERvY3VtZW50c1JlcXVlc3QSHwoIZGF0YWJhc2UYASABKAlCA+BBAlIIZGF0YWJhc2USHAoJZG9jdW1lbnRzGAIgAygJUglkb2N1bWVudHMSNQoEbWFzaxgDIAEoCzIhLmdvb2dsZS5maXJlc3RvcmUudjEuRG9jdW1lbnRNYXNrUgRtYXNrEiIKC3RyYW5zYWN0aW9uGAQgASgMSABSC3RyYW5zYWN0aW9uElIKD25ld190cmFuc2FjdGlvbhgFIAEoCzInLmdvb2dsZS5maXJlc3RvcmUudjEuVHJhbnNhY3Rpb25PcHRpb25zSABSDm5ld1RyYW5zYWN0aW9uEjkKCXJlYWRfdGltZRgHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAFIIcmVhZFRpbWVCFgoUY29uc2lzdGVuY3lfc2VsZWN0b3I=');
@$core.Deprecated('Use batchGetDocumentsResponseDescriptor instead')
const BatchGetDocumentsResponse$json = const {
  '1': 'BatchGetDocumentsResponse',
  '2': const [
    const {
      '1': 'found',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Document',
      '9': 0,
      '10': 'found'
    },
    const {'1': 'missing', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'missing'},
    const {'1': 'transaction', '3': 3, '4': 1, '5': 12, '10': 'transaction'},
    const {
      '1': 'read_time',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'readTime'
    },
  ],
  '8': const [
    const {'1': 'result'},
  ],
};

/// Descriptor for `BatchGetDocumentsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchGetDocumentsResponseDescriptor =
    $convert.base64Decode(
        'ChlCYXRjaEdldERvY3VtZW50c1Jlc3BvbnNlEjUKBWZvdW5kGAEgASgLMh0uZ29vZ2xlLmZpcmVzdG9yZS52MS5Eb2N1bWVudEgAUgVmb3VuZBIaCgdtaXNzaW5nGAIgASgJSABSB21pc3NpbmcSIAoLdHJhbnNhY3Rpb24YAyABKAxSC3RyYW5zYWN0aW9uEjcKCXJlYWRfdGltZRgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCHJlYWRUaW1lQggKBnJlc3VsdA==');
@$core.Deprecated('Use beginTransactionRequestDescriptor instead')
const BeginTransactionRequest$json = const {
  '1': 'BeginTransactionRequest',
  '2': const [
    const {
      '1': 'database',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'database'
    },
    const {
      '1': 'options',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.TransactionOptions',
      '10': 'options'
    },
  ],
};

/// Descriptor for `BeginTransactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List beginTransactionRequestDescriptor =
    $convert.base64Decode(
        'ChdCZWdpblRyYW5zYWN0aW9uUmVxdWVzdBIfCghkYXRhYmFzZRgBIAEoCUID4EECUghkYXRhYmFzZRJBCgdvcHRpb25zGAIgASgLMicuZ29vZ2xlLmZpcmVzdG9yZS52MS5UcmFuc2FjdGlvbk9wdGlvbnNSB29wdGlvbnM=');
@$core.Deprecated('Use beginTransactionResponseDescriptor instead')
const BeginTransactionResponse$json = const {
  '1': 'BeginTransactionResponse',
  '2': const [
    const {'1': 'transaction', '3': 1, '4': 1, '5': 12, '10': 'transaction'},
  ],
};

/// Descriptor for `BeginTransactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List beginTransactionResponseDescriptor =
    $convert.base64Decode(
        'ChhCZWdpblRyYW5zYWN0aW9uUmVzcG9uc2USIAoLdHJhbnNhY3Rpb24YASABKAxSC3RyYW5zYWN0aW9u');
@$core.Deprecated('Use commitRequestDescriptor instead')
const CommitRequest$json = const {
  '1': 'CommitRequest',
  '2': const [
    const {
      '1': 'database',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'database'
    },
    const {
      '1': 'writes',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.Write',
      '10': 'writes'
    },
    const {'1': 'transaction', '3': 3, '4': 1, '5': 12, '10': 'transaction'},
  ],
};

/// Descriptor for `CommitRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commitRequestDescriptor = $convert.base64Decode(
    'Cg1Db21taXRSZXF1ZXN0Eh8KCGRhdGFiYXNlGAEgASgJQgPgQQJSCGRhdGFiYXNlEjIKBndyaXRlcxgCIAMoCzIaLmdvb2dsZS5maXJlc3RvcmUudjEuV3JpdGVSBndyaXRlcxIgCgt0cmFuc2FjdGlvbhgDIAEoDFILdHJhbnNhY3Rpb24=');
@$core.Deprecated('Use commitResponseDescriptor instead')
const CommitResponse$json = const {
  '1': 'CommitResponse',
  '2': const [
    const {
      '1': 'write_results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.WriteResult',
      '10': 'writeResults'
    },
    const {
      '1': 'commit_time',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'commitTime'
    },
  ],
};

/// Descriptor for `CommitResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commitResponseDescriptor = $convert.base64Decode(
    'Cg5Db21taXRSZXNwb25zZRJFCg13cml0ZV9yZXN1bHRzGAEgAygLMiAuZ29vZ2xlLmZpcmVzdG9yZS52MS5Xcml0ZVJlc3VsdFIMd3JpdGVSZXN1bHRzEjsKC2NvbW1pdF90aW1lGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIKY29tbWl0VGltZQ==');
@$core.Deprecated('Use rollbackRequestDescriptor instead')
const RollbackRequest$json = const {
  '1': 'RollbackRequest',
  '2': const [
    const {
      '1': 'database',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'database'
    },
    const {
      '1': 'transaction',
      '3': 2,
      '4': 1,
      '5': 12,
      '8': const {},
      '10': 'transaction'
    },
  ],
};

/// Descriptor for `RollbackRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rollbackRequestDescriptor = $convert.base64Decode(
    'Cg9Sb2xsYmFja1JlcXVlc3QSHwoIZGF0YWJhc2UYASABKAlCA+BBAlIIZGF0YWJhc2USJQoLdHJhbnNhY3Rpb24YAiABKAxCA+BBAlILdHJhbnNhY3Rpb24=');
@$core.Deprecated('Use runQueryRequestDescriptor instead')
const RunQueryRequest$json = const {
  '1': 'RunQueryRequest',
  '2': const [
    const {
      '1': 'parent',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'parent'
    },
    const {
      '1': 'structured_query',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery',
      '9': 0,
      '10': 'structuredQuery'
    },
    const {
      '1': 'transaction',
      '3': 5,
      '4': 1,
      '5': 12,
      '9': 1,
      '10': 'transaction'
    },
    const {
      '1': 'new_transaction',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.TransactionOptions',
      '9': 1,
      '10': 'newTransaction'
    },
    const {
      '1': 'read_time',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '9': 1,
      '10': 'readTime'
    },
  ],
  '8': const [
    const {'1': 'query_type'},
    const {'1': 'consistency_selector'},
  ],
};

/// Descriptor for `RunQueryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runQueryRequestDescriptor = $convert.base64Decode(
    'Cg9SdW5RdWVyeVJlcXVlc3QSGwoGcGFyZW50GAEgASgJQgPgQQJSBnBhcmVudBJRChBzdHJ1Y3R1cmVkX3F1ZXJ5GAIgASgLMiQuZ29vZ2xlLmZpcmVzdG9yZS52MS5TdHJ1Y3R1cmVkUXVlcnlIAFIPc3RydWN0dXJlZFF1ZXJ5EiIKC3RyYW5zYWN0aW9uGAUgASgMSAFSC3RyYW5zYWN0aW9uElIKD25ld190cmFuc2FjdGlvbhgGIAEoCzInLmdvb2dsZS5maXJlc3RvcmUudjEuVHJhbnNhY3Rpb25PcHRpb25zSAFSDm5ld1RyYW5zYWN0aW9uEjkKCXJlYWRfdGltZRgHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAVIIcmVhZFRpbWVCDAoKcXVlcnlfdHlwZUIWChRjb25zaXN0ZW5jeV9zZWxlY3Rvcg==');
@$core.Deprecated('Use runQueryResponseDescriptor instead')
const RunQueryResponse$json = const {
  '1': 'RunQueryResponse',
  '2': const [
    const {'1': 'transaction', '3': 2, '4': 1, '5': 12, '10': 'transaction'},
    const {
      '1': 'document',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Document',
      '10': 'document'
    },
    const {
      '1': 'read_time',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'readTime'
    },
    const {
      '1': 'skipped_results',
      '3': 4,
      '4': 1,
      '5': 5,
      '10': 'skippedResults'
    },
  ],
};

/// Descriptor for `RunQueryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runQueryResponseDescriptor = $convert.base64Decode(
    'ChBSdW5RdWVyeVJlc3BvbnNlEiAKC3RyYW5zYWN0aW9uGAIgASgMUgt0cmFuc2FjdGlvbhI5Cghkb2N1bWVudBgBIAEoCzIdLmdvb2dsZS5maXJlc3RvcmUudjEuRG9jdW1lbnRSCGRvY3VtZW50EjcKCXJlYWRfdGltZRgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCHJlYWRUaW1lEicKD3NraXBwZWRfcmVzdWx0cxgEIAEoBVIOc2tpcHBlZFJlc3VsdHM=');
@$core.Deprecated('Use partitionQueryRequestDescriptor instead')
const PartitionQueryRequest$json = const {
  '1': 'PartitionQueryRequest',
  '2': const [
    const {
      '1': 'parent',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'parent'
    },
    const {
      '1': 'structured_query',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery',
      '9': 0,
      '10': 'structuredQuery'
    },
    const {
      '1': 'partition_count',
      '3': 3,
      '4': 1,
      '5': 3,
      '10': 'partitionCount'
    },
    const {'1': 'page_token', '3': 4, '4': 1, '5': 9, '10': 'pageToken'},
    const {'1': 'page_size', '3': 5, '4': 1, '5': 5, '10': 'pageSize'},
  ],
  '8': const [
    const {'1': 'query_type'},
  ],
};

/// Descriptor for `PartitionQueryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List partitionQueryRequestDescriptor = $convert.base64Decode(
    'ChVQYXJ0aXRpb25RdWVyeVJlcXVlc3QSGwoGcGFyZW50GAEgASgJQgPgQQJSBnBhcmVudBJRChBzdHJ1Y3R1cmVkX3F1ZXJ5GAIgASgLMiQuZ29vZ2xlLmZpcmVzdG9yZS52MS5TdHJ1Y3R1cmVkUXVlcnlIAFIPc3RydWN0dXJlZFF1ZXJ5EicKD3BhcnRpdGlvbl9jb3VudBgDIAEoA1IOcGFydGl0aW9uQ291bnQSHQoKcGFnZV90b2tlbhgEIAEoCVIJcGFnZVRva2VuEhsKCXBhZ2Vfc2l6ZRgFIAEoBVIIcGFnZVNpemVCDAoKcXVlcnlfdHlwZQ==');
@$core.Deprecated('Use partitionQueryResponseDescriptor instead')
const PartitionQueryResponse$json = const {
  '1': 'PartitionQueryResponse',
  '2': const [
    const {
      '1': 'partitions',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.Cursor',
      '10': 'partitions'
    },
    const {
      '1': 'next_page_token',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'nextPageToken'
    },
  ],
};

/// Descriptor for `PartitionQueryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List partitionQueryResponseDescriptor =
    $convert.base64Decode(
        'ChZQYXJ0aXRpb25RdWVyeVJlc3BvbnNlEjsKCnBhcnRpdGlvbnMYASADKAsyGy5nb29nbGUuZmlyZXN0b3JlLnYxLkN1cnNvclIKcGFydGl0aW9ucxImCg9uZXh0X3BhZ2VfdG9rZW4YAiABKAlSDW5leHRQYWdlVG9rZW4=');
@$core.Deprecated('Use writeRequestDescriptor instead')
const WriteRequest$json = const {
  '1': 'WriteRequest',
  '2': const [
    const {
      '1': 'database',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'database'
    },
    const {'1': 'stream_id', '3': 2, '4': 1, '5': 9, '10': 'streamId'},
    const {
      '1': 'writes',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.Write',
      '10': 'writes'
    },
    const {'1': 'stream_token', '3': 4, '4': 1, '5': 12, '10': 'streamToken'},
    const {
      '1': 'labels',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.WriteRequest.LabelsEntry',
      '10': 'labels'
    },
  ],
  '3': const [WriteRequest_LabelsEntry$json],
};

@$core.Deprecated('Use writeRequestDescriptor instead')
const WriteRequest_LabelsEntry$json = const {
  '1': 'LabelsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `WriteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List writeRequestDescriptor = $convert.base64Decode(
    'CgxXcml0ZVJlcXVlc3QSHwoIZGF0YWJhc2UYASABKAlCA+BBAlIIZGF0YWJhc2USGwoJc3RyZWFtX2lkGAIgASgJUghzdHJlYW1JZBIyCgZ3cml0ZXMYAyADKAsyGi5nb29nbGUuZmlyZXN0b3JlLnYxLldyaXRlUgZ3cml0ZXMSIQoMc3RyZWFtX3Rva2VuGAQgASgMUgtzdHJlYW1Ub2tlbhJFCgZsYWJlbHMYBSADKAsyLS5nb29nbGUuZmlyZXN0b3JlLnYxLldyaXRlUmVxdWVzdC5MYWJlbHNFbnRyeVIGbGFiZWxzGjkKC0xhYmVsc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use writeResponseDescriptor instead')
const WriteResponse$json = const {
  '1': 'WriteResponse',
  '2': const [
    const {'1': 'stream_id', '3': 1, '4': 1, '5': 9, '10': 'streamId'},
    const {'1': 'stream_token', '3': 2, '4': 1, '5': 12, '10': 'streamToken'},
    const {
      '1': 'write_results',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.WriteResult',
      '10': 'writeResults'
    },
    const {
      '1': 'commit_time',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'commitTime'
    },
  ],
};

/// Descriptor for `WriteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List writeResponseDescriptor = $convert.base64Decode(
    'Cg1Xcml0ZVJlc3BvbnNlEhsKCXN0cmVhbV9pZBgBIAEoCVIIc3RyZWFtSWQSIQoMc3RyZWFtX3Rva2VuGAIgASgMUgtzdHJlYW1Ub2tlbhJFCg13cml0ZV9yZXN1bHRzGAMgAygLMiAuZ29vZ2xlLmZpcmVzdG9yZS52MS5Xcml0ZVJlc3VsdFIMd3JpdGVSZXN1bHRzEjsKC2NvbW1pdF90aW1lGAQgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIKY29tbWl0VGltZQ==');
@$core.Deprecated('Use listenRequestDescriptor instead')
const ListenRequest$json = const {
  '1': 'ListenRequest',
  '2': const [
    const {
      '1': 'database',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'database'
    },
    const {
      '1': 'add_target',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Target',
      '9': 0,
      '10': 'addTarget'
    },
    const {
      '1': 'remove_target',
      '3': 3,
      '4': 1,
      '5': 5,
      '9': 0,
      '10': 'removeTarget'
    },
    const {
      '1': 'labels',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.ListenRequest.LabelsEntry',
      '10': 'labels'
    },
  ],
  '3': const [ListenRequest_LabelsEntry$json],
  '8': const [
    const {'1': 'target_change'},
  ],
};

@$core.Deprecated('Use listenRequestDescriptor instead')
const ListenRequest_LabelsEntry$json = const {
  '1': 'LabelsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `ListenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listenRequestDescriptor = $convert.base64Decode(
    'Cg1MaXN0ZW5SZXF1ZXN0Eh8KCGRhdGFiYXNlGAEgASgJQgPgQQJSCGRhdGFiYXNlEjwKCmFkZF90YXJnZXQYAiABKAsyGy5nb29nbGUuZmlyZXN0b3JlLnYxLlRhcmdldEgAUglhZGRUYXJnZXQSJQoNcmVtb3ZlX3RhcmdldBgDIAEoBUgAUgxyZW1vdmVUYXJnZXQSRgoGbGFiZWxzGAQgAygLMi4uZ29vZ2xlLmZpcmVzdG9yZS52MS5MaXN0ZW5SZXF1ZXN0LkxhYmVsc0VudHJ5UgZsYWJlbHMaOQoLTGFiZWxzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AUIPCg10YXJnZXRfY2hhbmdl');
@$core.Deprecated('Use listenResponseDescriptor instead')
const ListenResponse$json = const {
  '1': 'ListenResponse',
  '2': const [
    const {
      '1': 'target_change',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.TargetChange',
      '9': 0,
      '10': 'targetChange'
    },
    const {
      '1': 'document_change',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.DocumentChange',
      '9': 0,
      '10': 'documentChange'
    },
    const {
      '1': 'document_delete',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.DocumentDelete',
      '9': 0,
      '10': 'documentDelete'
    },
    const {
      '1': 'document_remove',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.DocumentRemove',
      '9': 0,
      '10': 'documentRemove'
    },
    const {
      '1': 'filter',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.ExistenceFilter',
      '9': 0,
      '10': 'filter'
    },
  ],
  '8': const [
    const {'1': 'response_type'},
  ],
};

/// Descriptor for `ListenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listenResponseDescriptor = $convert.base64Decode(
    'Cg5MaXN0ZW5SZXNwb25zZRJICg10YXJnZXRfY2hhbmdlGAIgASgLMiEuZ29vZ2xlLmZpcmVzdG9yZS52MS5UYXJnZXRDaGFuZ2VIAFIMdGFyZ2V0Q2hhbmdlEk4KD2RvY3VtZW50X2NoYW5nZRgDIAEoCzIjLmdvb2dsZS5maXJlc3RvcmUudjEuRG9jdW1lbnRDaGFuZ2VIAFIOZG9jdW1lbnRDaGFuZ2USTgoPZG9jdW1lbnRfZGVsZXRlGAQgASgLMiMuZ29vZ2xlLmZpcmVzdG9yZS52MS5Eb2N1bWVudERlbGV0ZUgAUg5kb2N1bWVudERlbGV0ZRJOCg9kb2N1bWVudF9yZW1vdmUYBiABKAsyIy5nb29nbGUuZmlyZXN0b3JlLnYxLkRvY3VtZW50UmVtb3ZlSABSDmRvY3VtZW50UmVtb3ZlEj4KBmZpbHRlchgFIAEoCzIkLmdvb2dsZS5maXJlc3RvcmUudjEuRXhpc3RlbmNlRmlsdGVySABSBmZpbHRlckIPCg1yZXNwb25zZV90eXBl');
@$core.Deprecated('Use targetDescriptor instead')
const Target$json = const {
  '1': 'Target',
  '2': const [
    const {
      '1': 'query',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Target.QueryTarget',
      '9': 0,
      '10': 'query'
    },
    const {
      '1': 'documents',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Target.DocumentsTarget',
      '9': 0,
      '10': 'documents'
    },
    const {
      '1': 'resume_token',
      '3': 4,
      '4': 1,
      '5': 12,
      '9': 1,
      '10': 'resumeToken'
    },
    const {
      '1': 'read_time',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '9': 1,
      '10': 'readTime'
    },
    const {'1': 'target_id', '3': 5, '4': 1, '5': 5, '10': 'targetId'},
    const {'1': 'once', '3': 6, '4': 1, '5': 8, '10': 'once'},
  ],
  '3': const [Target_DocumentsTarget$json, Target_QueryTarget$json],
  '8': const [
    const {'1': 'target_type'},
    const {'1': 'resume_type'},
  ],
};

@$core.Deprecated('Use targetDescriptor instead')
const Target_DocumentsTarget$json = const {
  '1': 'DocumentsTarget',
  '2': const [
    const {'1': 'documents', '3': 2, '4': 3, '5': 9, '10': 'documents'},
  ],
};

@$core.Deprecated('Use targetDescriptor instead')
const Target_QueryTarget$json = const {
  '1': 'QueryTarget',
  '2': const [
    const {'1': 'parent', '3': 1, '4': 1, '5': 9, '10': 'parent'},
    const {
      '1': 'structured_query',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery',
      '9': 0,
      '10': 'structuredQuery'
    },
  ],
  '8': const [
    const {'1': 'query_type'},
  ],
};

/// Descriptor for `Target`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List targetDescriptor = $convert.base64Decode(
    'CgZUYXJnZXQSPwoFcXVlcnkYAiABKAsyJy5nb29nbGUuZmlyZXN0b3JlLnYxLlRhcmdldC5RdWVyeVRhcmdldEgAUgVxdWVyeRJLCglkb2N1bWVudHMYAyABKAsyKy5nb29nbGUuZmlyZXN0b3JlLnYxLlRhcmdldC5Eb2N1bWVudHNUYXJnZXRIAFIJZG9jdW1lbnRzEiMKDHJlc3VtZV90b2tlbhgEIAEoDEgBUgtyZXN1bWVUb2tlbhI5CglyZWFkX3RpbWUYCyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wSAFSCHJlYWRUaW1lEhsKCXRhcmdldF9pZBgFIAEoBVIIdGFyZ2V0SWQSEgoEb25jZRgGIAEoCFIEb25jZRovCg9Eb2N1bWVudHNUYXJnZXQSHAoJZG9jdW1lbnRzGAIgAygJUglkb2N1bWVudHMahgEKC1F1ZXJ5VGFyZ2V0EhYKBnBhcmVudBgBIAEoCVIGcGFyZW50ElEKEHN0cnVjdHVyZWRfcXVlcnkYAiABKAsyJC5nb29nbGUuZmlyZXN0b3JlLnYxLlN0cnVjdHVyZWRRdWVyeUgAUg9zdHJ1Y3R1cmVkUXVlcnlCDAoKcXVlcnlfdHlwZUINCgt0YXJnZXRfdHlwZUINCgtyZXN1bWVfdHlwZQ==');
@$core.Deprecated('Use targetChangeDescriptor instead')
const TargetChange$json = const {
  '1': 'TargetChange',
  '2': const [
    const {
      '1': 'target_change_type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.google.firestore.v1.TargetChange.TargetChangeType',
      '10': 'targetChangeType'
    },
    const {'1': 'target_ids', '3': 2, '4': 3, '5': 5, '10': 'targetIds'},
    const {
      '1': 'cause',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.rpc.Status',
      '10': 'cause'
    },
    const {'1': 'resume_token', '3': 4, '4': 1, '5': 12, '10': 'resumeToken'},
    const {
      '1': 'read_time',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'readTime'
    },
  ],
  '4': const [TargetChange_TargetChangeType$json],
};

@$core.Deprecated('Use targetChangeDescriptor instead')
const TargetChange_TargetChangeType$json = const {
  '1': 'TargetChangeType',
  '2': const [
    const {'1': 'NO_CHANGE', '2': 0},
    const {'1': 'ADD', '2': 1},
    const {'1': 'REMOVE', '2': 2},
    const {'1': 'CURRENT', '2': 3},
    const {'1': 'RESET', '2': 4},
  ],
};

/// Descriptor for `TargetChange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List targetChangeDescriptor = $convert.base64Decode(
    'CgxUYXJnZXRDaGFuZ2USYAoSdGFyZ2V0X2NoYW5nZV90eXBlGAEgASgOMjIuZ29vZ2xlLmZpcmVzdG9yZS52MS5UYXJnZXRDaGFuZ2UuVGFyZ2V0Q2hhbmdlVHlwZVIQdGFyZ2V0Q2hhbmdlVHlwZRIdCgp0YXJnZXRfaWRzGAIgAygFUgl0YXJnZXRJZHMSKAoFY2F1c2UYAyABKAsyEi5nb29nbGUucnBjLlN0YXR1c1IFY2F1c2USIQoMcmVzdW1lX3Rva2VuGAQgASgMUgtyZXN1bWVUb2tlbhI3CglyZWFkX3RpbWUYBiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUghyZWFkVGltZSJOChBUYXJnZXRDaGFuZ2VUeXBlEg0KCU5PX0NIQU5HRRAAEgcKA0FERBABEgoKBlJFTU9WRRACEgsKB0NVUlJFTlQQAxIJCgVSRVNFVBAE');
@$core.Deprecated('Use listCollectionIdsRequestDescriptor instead')
const ListCollectionIdsRequest$json = const {
  '1': 'ListCollectionIdsRequest',
  '2': const [
    const {
      '1': 'parent',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'parent'
    },
    const {'1': 'page_size', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    const {'1': 'page_token', '3': 3, '4': 1, '5': 9, '10': 'pageToken'},
  ],
};

/// Descriptor for `ListCollectionIdsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listCollectionIdsRequestDescriptor =
    $convert.base64Decode(
        'ChhMaXN0Q29sbGVjdGlvbklkc1JlcXVlc3QSGwoGcGFyZW50GAEgASgJQgPgQQJSBnBhcmVudBIbCglwYWdlX3NpemUYAiABKAVSCHBhZ2VTaXplEh0KCnBhZ2VfdG9rZW4YAyABKAlSCXBhZ2VUb2tlbg==');
@$core.Deprecated('Use listCollectionIdsResponseDescriptor instead')
const ListCollectionIdsResponse$json = const {
  '1': 'ListCollectionIdsResponse',
  '2': const [
    const {
      '1': 'collection_ids',
      '3': 1,
      '4': 3,
      '5': 9,
      '10': 'collectionIds'
    },
    const {
      '1': 'next_page_token',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'nextPageToken'
    },
  ],
};

/// Descriptor for `ListCollectionIdsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listCollectionIdsResponseDescriptor =
    $convert.base64Decode(
        'ChlMaXN0Q29sbGVjdGlvbklkc1Jlc3BvbnNlEiUKDmNvbGxlY3Rpb25faWRzGAEgAygJUg1jb2xsZWN0aW9uSWRzEiYKD25leHRfcGFnZV90b2tlbhgCIAEoCVINbmV4dFBhZ2VUb2tlbg==');
@$core.Deprecated('Use batchWriteRequestDescriptor instead')
const BatchWriteRequest$json = const {
  '1': 'BatchWriteRequest',
  '2': const [
    const {
      '1': 'database',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': const {},
      '10': 'database'
    },
    const {
      '1': 'writes',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.Write',
      '10': 'writes'
    },
    const {
      '1': 'labels',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.BatchWriteRequest.LabelsEntry',
      '10': 'labels'
    },
  ],
  '3': const [BatchWriteRequest_LabelsEntry$json],
};

@$core.Deprecated('Use batchWriteRequestDescriptor instead')
const BatchWriteRequest_LabelsEntry$json = const {
  '1': 'LabelsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `BatchWriteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchWriteRequestDescriptor = $convert.base64Decode(
    'ChFCYXRjaFdyaXRlUmVxdWVzdBIfCghkYXRhYmFzZRgBIAEoCUID4EECUghkYXRhYmFzZRIyCgZ3cml0ZXMYAiADKAsyGi5nb29nbGUuZmlyZXN0b3JlLnYxLldyaXRlUgZ3cml0ZXMSSgoGbGFiZWxzGAMgAygLMjIuZ29vZ2xlLmZpcmVzdG9yZS52MS5CYXRjaFdyaXRlUmVxdWVzdC5MYWJlbHNFbnRyeVIGbGFiZWxzGjkKC0xhYmVsc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use batchWriteResponseDescriptor instead')
const BatchWriteResponse$json = const {
  '1': 'BatchWriteResponse',
  '2': const [
    const {
      '1': 'write_results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.WriteResult',
      '10': 'writeResults'
    },
    const {
      '1': 'status',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.google.rpc.Status',
      '10': 'status'
    },
  ],
};

/// Descriptor for `BatchWriteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchWriteResponseDescriptor = $convert.base64Decode(
    'ChJCYXRjaFdyaXRlUmVzcG9uc2USRQoNd3JpdGVfcmVzdWx0cxgBIAMoCzIgLmdvb2dsZS5maXJlc3RvcmUudjEuV3JpdGVSZXN1bHRSDHdyaXRlUmVzdWx0cxIqCgZzdGF0dXMYAiADKAsyEi5nb29nbGUucnBjLlN0YXR1c1IGc3RhdHVz');

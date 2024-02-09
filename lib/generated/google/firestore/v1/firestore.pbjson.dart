//
//  Generated code. Do not modify.
//  source: google/firestore/v1/firestore.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getDocumentRequestDescriptor instead')
const GetDocumentRequest$json = {
  '1': 'GetDocumentRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {
      '1': 'mask',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.DocumentMask',
      '10': 'mask'
    },
    {'1': 'transaction', '3': 3, '4': 1, '5': 12, '9': 0, '10': 'transaction'},
    {
      '1': 'read_time',
      '3': 5,
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

/// Descriptor for `GetDocumentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDocumentRequestDescriptor = $convert.base64Decode(
    'ChJHZXREb2N1bWVudFJlcXVlc3QSFwoEbmFtZRgBIAEoCUID4EECUgRuYW1lEjUKBG1hc2sYAi'
    'ABKAsyIS5nb29nbGUuZmlyZXN0b3JlLnYxLkRvY3VtZW50TWFza1IEbWFzaxIiCgt0cmFuc2Fj'
    'dGlvbhgDIAEoDEgAUgt0cmFuc2FjdGlvbhI5CglyZWFkX3RpbWUYBSABKAsyGi5nb29nbGUucH'
    'JvdG9idWYuVGltZXN0YW1wSABSCHJlYWRUaW1lQhYKFGNvbnNpc3RlbmN5X3NlbGVjdG9y');

@$core.Deprecated('Use listDocumentsRequestDescriptor instead')
const ListDocumentsRequest$json = {
  '1': 'ListDocumentsRequest',
  '2': [
    {'1': 'parent', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'parent'},
    {
      '1': 'collection_id',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'collectionId'
    },
    {'1': 'page_size', '3': 3, '4': 1, '5': 5, '8': {}, '10': 'pageSize'},
    {'1': 'page_token', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'pageToken'},
    {'1': 'order_by', '3': 6, '4': 1, '5': 9, '8': {}, '10': 'orderBy'},
    {
      '1': 'mask',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.DocumentMask',
      '8': {},
      '10': 'mask'
    },
    {'1': 'transaction', '3': 8, '4': 1, '5': 12, '9': 0, '10': 'transaction'},
    {
      '1': 'read_time',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '9': 0,
      '10': 'readTime'
    },
    {'1': 'show_missing', '3': 12, '4': 1, '5': 8, '10': 'showMissing'},
  ],
  '8': [
    {'1': 'consistency_selector'},
  ],
};

/// Descriptor for `ListDocumentsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDocumentsRequestDescriptor = $convert.base64Decode(
    'ChRMaXN0RG9jdW1lbnRzUmVxdWVzdBIbCgZwYXJlbnQYASABKAlCA+BBAlIGcGFyZW50EigKDW'
    'NvbGxlY3Rpb25faWQYAiABKAlCA+BBAVIMY29sbGVjdGlvbklkEiAKCXBhZ2Vfc2l6ZRgDIAEo'
    'BUID4EEBUghwYWdlU2l6ZRIiCgpwYWdlX3Rva2VuGAQgASgJQgPgQQFSCXBhZ2VUb2tlbhIeCg'
    'hvcmRlcl9ieRgGIAEoCUID4EEBUgdvcmRlckJ5EjoKBG1hc2sYByABKAsyIS5nb29nbGUuZmly'
    'ZXN0b3JlLnYxLkRvY3VtZW50TWFza0ID4EEBUgRtYXNrEiIKC3RyYW5zYWN0aW9uGAggASgMSA'
    'BSC3RyYW5zYWN0aW9uEjkKCXJlYWRfdGltZRgKIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1l'
    'c3RhbXBIAFIIcmVhZFRpbWUSIQoMc2hvd19taXNzaW5nGAwgASgIUgtzaG93TWlzc2luZ0IWCh'
    'Rjb25zaXN0ZW5jeV9zZWxlY3Rvcg==');

@$core.Deprecated('Use listDocumentsResponseDescriptor instead')
const ListDocumentsResponse$json = {
  '1': 'ListDocumentsResponse',
  '2': [
    {
      '1': 'documents',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.Document',
      '10': 'documents'
    },
    {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
  ],
};

/// Descriptor for `ListDocumentsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDocumentsResponseDescriptor = $convert.base64Decode(
    'ChVMaXN0RG9jdW1lbnRzUmVzcG9uc2USOwoJZG9jdW1lbnRzGAEgAygLMh0uZ29vZ2xlLmZpcm'
    'VzdG9yZS52MS5Eb2N1bWVudFIJZG9jdW1lbnRzEiYKD25leHRfcGFnZV90b2tlbhgCIAEoCVIN'
    'bmV4dFBhZ2VUb2tlbg==');

@$core.Deprecated('Use createDocumentRequestDescriptor instead')
const CreateDocumentRequest$json = {
  '1': 'CreateDocumentRequest',
  '2': [
    {'1': 'parent', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'parent'},
    {
      '1': 'collection_id',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'collectionId'
    },
    {'1': 'document_id', '3': 3, '4': 1, '5': 9, '10': 'documentId'},
    {
      '1': 'document',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Document',
      '8': {},
      '10': 'document'
    },
    {
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
    'ChVDcmVhdGVEb2N1bWVudFJlcXVlc3QSGwoGcGFyZW50GAEgASgJQgPgQQJSBnBhcmVudBIoCg'
    '1jb2xsZWN0aW9uX2lkGAIgASgJQgPgQQJSDGNvbGxlY3Rpb25JZBIfCgtkb2N1bWVudF9pZBgD'
    'IAEoCVIKZG9jdW1lbnRJZBI+Cghkb2N1bWVudBgEIAEoCzIdLmdvb2dsZS5maXJlc3RvcmUudj'
    'EuRG9jdW1lbnRCA+BBAlIIZG9jdW1lbnQSNQoEbWFzaxgFIAEoCzIhLmdvb2dsZS5maXJlc3Rv'
    'cmUudjEuRG9jdW1lbnRNYXNrUgRtYXNr');

@$core.Deprecated('Use updateDocumentRequestDescriptor instead')
const UpdateDocumentRequest$json = {
  '1': 'UpdateDocumentRequest',
  '2': [
    {
      '1': 'document',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Document',
      '8': {},
      '10': 'document'
    },
    {
      '1': 'update_mask',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.DocumentMask',
      '10': 'updateMask'
    },
    {
      '1': 'mask',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.DocumentMask',
      '10': 'mask'
    },
    {
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
    'ChVVcGRhdGVEb2N1bWVudFJlcXVlc3QSPgoIZG9jdW1lbnQYASABKAsyHS5nb29nbGUuZmlyZX'
    'N0b3JlLnYxLkRvY3VtZW50QgPgQQJSCGRvY3VtZW50EkIKC3VwZGF0ZV9tYXNrGAIgASgLMiEu'
    'Z29vZ2xlLmZpcmVzdG9yZS52MS5Eb2N1bWVudE1hc2tSCnVwZGF0ZU1hc2sSNQoEbWFzaxgDIA'
    'EoCzIhLmdvb2dsZS5maXJlc3RvcmUudjEuRG9jdW1lbnRNYXNrUgRtYXNrEkwKEGN1cnJlbnRf'
    'ZG9jdW1lbnQYBCABKAsyIS5nb29nbGUuZmlyZXN0b3JlLnYxLlByZWNvbmRpdGlvblIPY3Vycm'
    'VudERvY3VtZW50');

@$core.Deprecated('Use deleteDocumentRequestDescriptor instead')
const DeleteDocumentRequest$json = {
  '1': 'DeleteDocumentRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {
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
    'ChVEZWxldGVEb2N1bWVudFJlcXVlc3QSFwoEbmFtZRgBIAEoCUID4EECUgRuYW1lEkwKEGN1cn'
    'JlbnRfZG9jdW1lbnQYAiABKAsyIS5nb29nbGUuZmlyZXN0b3JlLnYxLlByZWNvbmRpdGlvblIP'
    'Y3VycmVudERvY3VtZW50');

@$core.Deprecated('Use batchGetDocumentsRequestDescriptor instead')
const BatchGetDocumentsRequest$json = {
  '1': 'BatchGetDocumentsRequest',
  '2': [
    {'1': 'database', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'database'},
    {'1': 'documents', '3': 2, '4': 3, '5': 9, '10': 'documents'},
    {
      '1': 'mask',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.DocumentMask',
      '10': 'mask'
    },
    {'1': 'transaction', '3': 4, '4': 1, '5': 12, '9': 0, '10': 'transaction'},
    {
      '1': 'new_transaction',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.TransactionOptions',
      '9': 0,
      '10': 'newTransaction'
    },
    {
      '1': 'read_time',
      '3': 7,
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

/// Descriptor for `BatchGetDocumentsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchGetDocumentsRequestDescriptor = $convert.base64Decode(
    'ChhCYXRjaEdldERvY3VtZW50c1JlcXVlc3QSHwoIZGF0YWJhc2UYASABKAlCA+BBAlIIZGF0YW'
    'Jhc2USHAoJZG9jdW1lbnRzGAIgAygJUglkb2N1bWVudHMSNQoEbWFzaxgDIAEoCzIhLmdvb2ds'
    'ZS5maXJlc3RvcmUudjEuRG9jdW1lbnRNYXNrUgRtYXNrEiIKC3RyYW5zYWN0aW9uGAQgASgMSA'
    'BSC3RyYW5zYWN0aW9uElIKD25ld190cmFuc2FjdGlvbhgFIAEoCzInLmdvb2dsZS5maXJlc3Rv'
    'cmUudjEuVHJhbnNhY3Rpb25PcHRpb25zSABSDm5ld1RyYW5zYWN0aW9uEjkKCXJlYWRfdGltZR'
    'gHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAFIIcmVhZFRpbWVCFgoUY29uc2lz'
    'dGVuY3lfc2VsZWN0b3I=');

@$core.Deprecated('Use batchGetDocumentsResponseDescriptor instead')
const BatchGetDocumentsResponse$json = {
  '1': 'BatchGetDocumentsResponse',
  '2': [
    {
      '1': 'found',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Document',
      '9': 0,
      '10': 'found'
    },
    {'1': 'missing', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'missing'},
    {'1': 'transaction', '3': 3, '4': 1, '5': 12, '10': 'transaction'},
    {
      '1': 'read_time',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'readTime'
    },
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `BatchGetDocumentsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchGetDocumentsResponseDescriptor = $convert.base64Decode(
    'ChlCYXRjaEdldERvY3VtZW50c1Jlc3BvbnNlEjUKBWZvdW5kGAEgASgLMh0uZ29vZ2xlLmZpcm'
    'VzdG9yZS52MS5Eb2N1bWVudEgAUgVmb3VuZBIaCgdtaXNzaW5nGAIgASgJSABSB21pc3NpbmcS'
    'IAoLdHJhbnNhY3Rpb24YAyABKAxSC3RyYW5zYWN0aW9uEjcKCXJlYWRfdGltZRgEIAEoCzIaLm'
    'dvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCHJlYWRUaW1lQggKBnJlc3VsdA==');

@$core.Deprecated('Use beginTransactionRequestDescriptor instead')
const BeginTransactionRequest$json = {
  '1': 'BeginTransactionRequest',
  '2': [
    {'1': 'database', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'database'},
    {
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
final $typed_data.Uint8List beginTransactionRequestDescriptor = $convert.base64Decode(
    'ChdCZWdpblRyYW5zYWN0aW9uUmVxdWVzdBIfCghkYXRhYmFzZRgBIAEoCUID4EECUghkYXRhYm'
    'FzZRJBCgdvcHRpb25zGAIgASgLMicuZ29vZ2xlLmZpcmVzdG9yZS52MS5UcmFuc2FjdGlvbk9w'
    'dGlvbnNSB29wdGlvbnM=');

@$core.Deprecated('Use beginTransactionResponseDescriptor instead')
const BeginTransactionResponse$json = {
  '1': 'BeginTransactionResponse',
  '2': [
    {'1': 'transaction', '3': 1, '4': 1, '5': 12, '10': 'transaction'},
  ],
};

/// Descriptor for `BeginTransactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List beginTransactionResponseDescriptor =
    $convert.base64Decode(
        'ChhCZWdpblRyYW5zYWN0aW9uUmVzcG9uc2USIAoLdHJhbnNhY3Rpb24YASABKAxSC3RyYW5zYW'
        'N0aW9u');

@$core.Deprecated('Use commitRequestDescriptor instead')
const CommitRequest$json = {
  '1': 'CommitRequest',
  '2': [
    {'1': 'database', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'database'},
    {
      '1': 'writes',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.Write',
      '10': 'writes'
    },
    {'1': 'transaction', '3': 3, '4': 1, '5': 12, '10': 'transaction'},
  ],
};

/// Descriptor for `CommitRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commitRequestDescriptor = $convert.base64Decode(
    'Cg1Db21taXRSZXF1ZXN0Eh8KCGRhdGFiYXNlGAEgASgJQgPgQQJSCGRhdGFiYXNlEjIKBndyaX'
    'RlcxgCIAMoCzIaLmdvb2dsZS5maXJlc3RvcmUudjEuV3JpdGVSBndyaXRlcxIgCgt0cmFuc2Fj'
    'dGlvbhgDIAEoDFILdHJhbnNhY3Rpb24=');

@$core.Deprecated('Use commitResponseDescriptor instead')
const CommitResponse$json = {
  '1': 'CommitResponse',
  '2': [
    {
      '1': 'write_results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.WriteResult',
      '10': 'writeResults'
    },
    {
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
    'Cg5Db21taXRSZXNwb25zZRJFCg13cml0ZV9yZXN1bHRzGAEgAygLMiAuZ29vZ2xlLmZpcmVzdG'
    '9yZS52MS5Xcml0ZVJlc3VsdFIMd3JpdGVSZXN1bHRzEjsKC2NvbW1pdF90aW1lGAIgASgLMhou'
    'Z29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIKY29tbWl0VGltZQ==');

@$core.Deprecated('Use rollbackRequestDescriptor instead')
const RollbackRequest$json = {
  '1': 'RollbackRequest',
  '2': [
    {'1': 'database', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'database'},
    {'1': 'transaction', '3': 2, '4': 1, '5': 12, '8': {}, '10': 'transaction'},
  ],
};

/// Descriptor for `RollbackRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rollbackRequestDescriptor = $convert.base64Decode(
    'Cg9Sb2xsYmFja1JlcXVlc3QSHwoIZGF0YWJhc2UYASABKAlCA+BBAlIIZGF0YWJhc2USJQoLdH'
    'JhbnNhY3Rpb24YAiABKAxCA+BBAlILdHJhbnNhY3Rpb24=');

@$core.Deprecated('Use runQueryRequestDescriptor instead')
const RunQueryRequest$json = {
  '1': 'RunQueryRequest',
  '2': [
    {'1': 'parent', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'parent'},
    {
      '1': 'structured_query',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery',
      '9': 0,
      '10': 'structuredQuery'
    },
    {'1': 'transaction', '3': 5, '4': 1, '5': 12, '9': 1, '10': 'transaction'},
    {
      '1': 'new_transaction',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.TransactionOptions',
      '9': 1,
      '10': 'newTransaction'
    },
    {
      '1': 'read_time',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '9': 1,
      '10': 'readTime'
    },
  ],
  '8': [
    {'1': 'query_type'},
    {'1': 'consistency_selector'},
  ],
};

/// Descriptor for `RunQueryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runQueryRequestDescriptor = $convert.base64Decode(
    'Cg9SdW5RdWVyeVJlcXVlc3QSGwoGcGFyZW50GAEgASgJQgPgQQJSBnBhcmVudBJRChBzdHJ1Y3'
    'R1cmVkX3F1ZXJ5GAIgASgLMiQuZ29vZ2xlLmZpcmVzdG9yZS52MS5TdHJ1Y3R1cmVkUXVlcnlI'
    'AFIPc3RydWN0dXJlZFF1ZXJ5EiIKC3RyYW5zYWN0aW9uGAUgASgMSAFSC3RyYW5zYWN0aW9uEl'
    'IKD25ld190cmFuc2FjdGlvbhgGIAEoCzInLmdvb2dsZS5maXJlc3RvcmUudjEuVHJhbnNhY3Rp'
    'b25PcHRpb25zSAFSDm5ld1RyYW5zYWN0aW9uEjkKCXJlYWRfdGltZRgHIAEoCzIaLmdvb2dsZS'
    '5wcm90b2J1Zi5UaW1lc3RhbXBIAVIIcmVhZFRpbWVCDAoKcXVlcnlfdHlwZUIWChRjb25zaXN0'
    'ZW5jeV9zZWxlY3Rvcg==');

@$core.Deprecated('Use runQueryResponseDescriptor instead')
const RunQueryResponse$json = {
  '1': 'RunQueryResponse',
  '2': [
    {'1': 'transaction', '3': 2, '4': 1, '5': 12, '10': 'transaction'},
    {
      '1': 'document',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Document',
      '10': 'document'
    },
    {
      '1': 'read_time',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'readTime'
    },
    {'1': 'skipped_results', '3': 4, '4': 1, '5': 5, '10': 'skippedResults'},
    {'1': 'done', '3': 6, '4': 1, '5': 8, '9': 0, '10': 'done'},
  ],
  '8': [
    {'1': 'continuation_selector'},
  ],
};

/// Descriptor for `RunQueryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runQueryResponseDescriptor = $convert.base64Decode(
    'ChBSdW5RdWVyeVJlc3BvbnNlEiAKC3RyYW5zYWN0aW9uGAIgASgMUgt0cmFuc2FjdGlvbhI5Cg'
    'hkb2N1bWVudBgBIAEoCzIdLmdvb2dsZS5maXJlc3RvcmUudjEuRG9jdW1lbnRSCGRvY3VtZW50'
    'EjcKCXJlYWRfdGltZRgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCHJlYWRUaW'
    '1lEicKD3NraXBwZWRfcmVzdWx0cxgEIAEoBVIOc2tpcHBlZFJlc3VsdHMSFAoEZG9uZRgGIAEo'
    'CEgAUgRkb25lQhcKFWNvbnRpbnVhdGlvbl9zZWxlY3Rvcg==');

@$core.Deprecated('Use runAggregationQueryRequestDescriptor instead')
const RunAggregationQueryRequest$json = {
  '1': 'RunAggregationQueryRequest',
  '2': [
    {'1': 'parent', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'parent'},
    {
      '1': 'structured_aggregation_query',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredAggregationQuery',
      '9': 0,
      '10': 'structuredAggregationQuery'
    },
    {'1': 'transaction', '3': 4, '4': 1, '5': 12, '9': 1, '10': 'transaction'},
    {
      '1': 'new_transaction',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.TransactionOptions',
      '9': 1,
      '10': 'newTransaction'
    },
    {
      '1': 'read_time',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '9': 1,
      '10': 'readTime'
    },
  ],
  '8': [
    {'1': 'query_type'},
    {'1': 'consistency_selector'},
  ],
};

/// Descriptor for `RunAggregationQueryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runAggregationQueryRequestDescriptor = $convert.base64Decode(
    'ChpSdW5BZ2dyZWdhdGlvblF1ZXJ5UmVxdWVzdBIbCgZwYXJlbnQYASABKAlCA+BBAlIGcGFyZW'
    '50EnMKHHN0cnVjdHVyZWRfYWdncmVnYXRpb25fcXVlcnkYAiABKAsyLy5nb29nbGUuZmlyZXN0'
    'b3JlLnYxLlN0cnVjdHVyZWRBZ2dyZWdhdGlvblF1ZXJ5SABSGnN0cnVjdHVyZWRBZ2dyZWdhdG'
    'lvblF1ZXJ5EiIKC3RyYW5zYWN0aW9uGAQgASgMSAFSC3RyYW5zYWN0aW9uElIKD25ld190cmFu'
    'c2FjdGlvbhgFIAEoCzInLmdvb2dsZS5maXJlc3RvcmUudjEuVHJhbnNhY3Rpb25PcHRpb25zSA'
    'FSDm5ld1RyYW5zYWN0aW9uEjkKCXJlYWRfdGltZRgGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5U'
    'aW1lc3RhbXBIAVIIcmVhZFRpbWVCDAoKcXVlcnlfdHlwZUIWChRjb25zaXN0ZW5jeV9zZWxlY3'
    'Rvcg==');

@$core.Deprecated('Use runAggregationQueryResponseDescriptor instead')
const RunAggregationQueryResponse$json = {
  '1': 'RunAggregationQueryResponse',
  '2': [
    {
      '1': 'result',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.AggregationResult',
      '10': 'result'
    },
    {'1': 'transaction', '3': 2, '4': 1, '5': 12, '10': 'transaction'},
    {
      '1': 'read_time',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'readTime'
    },
  ],
};

/// Descriptor for `RunAggregationQueryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runAggregationQueryResponseDescriptor = $convert.base64Decode(
    'ChtSdW5BZ2dyZWdhdGlvblF1ZXJ5UmVzcG9uc2USPgoGcmVzdWx0GAEgASgLMiYuZ29vZ2xlLm'
    'ZpcmVzdG9yZS52MS5BZ2dyZWdhdGlvblJlc3VsdFIGcmVzdWx0EiAKC3RyYW5zYWN0aW9uGAIg'
    'ASgMUgt0cmFuc2FjdGlvbhI3CglyZWFkX3RpbWUYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVG'
    'ltZXN0YW1wUghyZWFkVGltZQ==');

@$core.Deprecated('Use partitionQueryRequestDescriptor instead')
const PartitionQueryRequest$json = {
  '1': 'PartitionQueryRequest',
  '2': [
    {'1': 'parent', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'parent'},
    {
      '1': 'structured_query',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery',
      '9': 0,
      '10': 'structuredQuery'
    },
    {'1': 'partition_count', '3': 3, '4': 1, '5': 3, '10': 'partitionCount'},
    {'1': 'page_token', '3': 4, '4': 1, '5': 9, '10': 'pageToken'},
    {'1': 'page_size', '3': 5, '4': 1, '5': 5, '10': 'pageSize'},
    {
      '1': 'read_time',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '9': 1,
      '10': 'readTime'
    },
  ],
  '8': [
    {'1': 'query_type'},
    {'1': 'consistency_selector'},
  ],
};

/// Descriptor for `PartitionQueryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List partitionQueryRequestDescriptor = $convert.base64Decode(
    'ChVQYXJ0aXRpb25RdWVyeVJlcXVlc3QSGwoGcGFyZW50GAEgASgJQgPgQQJSBnBhcmVudBJRCh'
    'BzdHJ1Y3R1cmVkX3F1ZXJ5GAIgASgLMiQuZ29vZ2xlLmZpcmVzdG9yZS52MS5TdHJ1Y3R1cmVk'
    'UXVlcnlIAFIPc3RydWN0dXJlZFF1ZXJ5EicKD3BhcnRpdGlvbl9jb3VudBgDIAEoA1IOcGFydG'
    'l0aW9uQ291bnQSHQoKcGFnZV90b2tlbhgEIAEoCVIJcGFnZVRva2VuEhsKCXBhZ2Vfc2l6ZRgF'
    'IAEoBVIIcGFnZVNpemUSOQoJcmVhZF90aW1lGAYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbW'
    'VzdGFtcEgBUghyZWFkVGltZUIMCgpxdWVyeV90eXBlQhYKFGNvbnNpc3RlbmN5X3NlbGVjdG9y');

@$core.Deprecated('Use partitionQueryResponseDescriptor instead')
const PartitionQueryResponse$json = {
  '1': 'PartitionQueryResponse',
  '2': [
    {
      '1': 'partitions',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.Cursor',
      '10': 'partitions'
    },
    {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
  ],
};

/// Descriptor for `PartitionQueryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List partitionQueryResponseDescriptor = $convert.base64Decode(
    'ChZQYXJ0aXRpb25RdWVyeVJlc3BvbnNlEjsKCnBhcnRpdGlvbnMYASADKAsyGy5nb29nbGUuZm'
    'lyZXN0b3JlLnYxLkN1cnNvclIKcGFydGl0aW9ucxImCg9uZXh0X3BhZ2VfdG9rZW4YAiABKAlS'
    'DW5leHRQYWdlVG9rZW4=');

@$core.Deprecated('Use writeRequestDescriptor instead')
const WriteRequest$json = {
  '1': 'WriteRequest',
  '2': [
    {'1': 'database', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'database'},
    {'1': 'stream_id', '3': 2, '4': 1, '5': 9, '10': 'streamId'},
    {
      '1': 'writes',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.Write',
      '10': 'writes'
    },
    {'1': 'stream_token', '3': 4, '4': 1, '5': 12, '10': 'streamToken'},
    {
      '1': 'labels',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.WriteRequest.LabelsEntry',
      '10': 'labels'
    },
  ],
  '3': [WriteRequest_LabelsEntry$json],
};

@$core.Deprecated('Use writeRequestDescriptor instead')
const WriteRequest_LabelsEntry$json = {
  '1': 'LabelsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `WriteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List writeRequestDescriptor = $convert.base64Decode(
    'CgxXcml0ZVJlcXVlc3QSHwoIZGF0YWJhc2UYASABKAlCA+BBAlIIZGF0YWJhc2USGwoJc3RyZW'
    'FtX2lkGAIgASgJUghzdHJlYW1JZBIyCgZ3cml0ZXMYAyADKAsyGi5nb29nbGUuZmlyZXN0b3Jl'
    'LnYxLldyaXRlUgZ3cml0ZXMSIQoMc3RyZWFtX3Rva2VuGAQgASgMUgtzdHJlYW1Ub2tlbhJFCg'
    'ZsYWJlbHMYBSADKAsyLS5nb29nbGUuZmlyZXN0b3JlLnYxLldyaXRlUmVxdWVzdC5MYWJlbHNF'
    'bnRyeVIGbGFiZWxzGjkKC0xhYmVsc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGA'
    'IgASgJUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use writeResponseDescriptor instead')
const WriteResponse$json = {
  '1': 'WriteResponse',
  '2': [
    {'1': 'stream_id', '3': 1, '4': 1, '5': 9, '10': 'streamId'},
    {'1': 'stream_token', '3': 2, '4': 1, '5': 12, '10': 'streamToken'},
    {
      '1': 'write_results',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.WriteResult',
      '10': 'writeResults'
    },
    {
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
    'Cg1Xcml0ZVJlc3BvbnNlEhsKCXN0cmVhbV9pZBgBIAEoCVIIc3RyZWFtSWQSIQoMc3RyZWFtX3'
    'Rva2VuGAIgASgMUgtzdHJlYW1Ub2tlbhJFCg13cml0ZV9yZXN1bHRzGAMgAygLMiAuZ29vZ2xl'
    'LmZpcmVzdG9yZS52MS5Xcml0ZVJlc3VsdFIMd3JpdGVSZXN1bHRzEjsKC2NvbW1pdF90aW1lGA'
    'QgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIKY29tbWl0VGltZQ==');

@$core.Deprecated('Use listenRequestDescriptor instead')
const ListenRequest$json = {
  '1': 'ListenRequest',
  '2': [
    {'1': 'database', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'database'},
    {
      '1': 'add_target',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Target',
      '9': 0,
      '10': 'addTarget'
    },
    {
      '1': 'remove_target',
      '3': 3,
      '4': 1,
      '5': 5,
      '9': 0,
      '10': 'removeTarget'
    },
    {
      '1': 'labels',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.ListenRequest.LabelsEntry',
      '10': 'labels'
    },
  ],
  '3': [ListenRequest_LabelsEntry$json],
  '8': [
    {'1': 'target_change'},
  ],
};

@$core.Deprecated('Use listenRequestDescriptor instead')
const ListenRequest_LabelsEntry$json = {
  '1': 'LabelsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ListenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listenRequestDescriptor = $convert.base64Decode(
    'Cg1MaXN0ZW5SZXF1ZXN0Eh8KCGRhdGFiYXNlGAEgASgJQgPgQQJSCGRhdGFiYXNlEjwKCmFkZF'
    '90YXJnZXQYAiABKAsyGy5nb29nbGUuZmlyZXN0b3JlLnYxLlRhcmdldEgAUglhZGRUYXJnZXQS'
    'JQoNcmVtb3ZlX3RhcmdldBgDIAEoBUgAUgxyZW1vdmVUYXJnZXQSRgoGbGFiZWxzGAQgAygLMi'
    '4uZ29vZ2xlLmZpcmVzdG9yZS52MS5MaXN0ZW5SZXF1ZXN0LkxhYmVsc0VudHJ5UgZsYWJlbHMa'
    'OQoLTGFiZWxzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOg'
    'I4AUIPCg10YXJnZXRfY2hhbmdl');

@$core.Deprecated('Use listenResponseDescriptor instead')
const ListenResponse$json = {
  '1': 'ListenResponse',
  '2': [
    {
      '1': 'target_change',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.TargetChange',
      '9': 0,
      '10': 'targetChange'
    },
    {
      '1': 'document_change',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.DocumentChange',
      '9': 0,
      '10': 'documentChange'
    },
    {
      '1': 'document_delete',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.DocumentDelete',
      '9': 0,
      '10': 'documentDelete'
    },
    {
      '1': 'document_remove',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.DocumentRemove',
      '9': 0,
      '10': 'documentRemove'
    },
    {
      '1': 'filter',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.ExistenceFilter',
      '9': 0,
      '10': 'filter'
    },
  ],
  '8': [
    {'1': 'response_type'},
  ],
};

/// Descriptor for `ListenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listenResponseDescriptor = $convert.base64Decode(
    'Cg5MaXN0ZW5SZXNwb25zZRJICg10YXJnZXRfY2hhbmdlGAIgASgLMiEuZ29vZ2xlLmZpcmVzdG'
    '9yZS52MS5UYXJnZXRDaGFuZ2VIAFIMdGFyZ2V0Q2hhbmdlEk4KD2RvY3VtZW50X2NoYW5nZRgD'
    'IAEoCzIjLmdvb2dsZS5maXJlc3RvcmUudjEuRG9jdW1lbnRDaGFuZ2VIAFIOZG9jdW1lbnRDaG'
    'FuZ2USTgoPZG9jdW1lbnRfZGVsZXRlGAQgASgLMiMuZ29vZ2xlLmZpcmVzdG9yZS52MS5Eb2N1'
    'bWVudERlbGV0ZUgAUg5kb2N1bWVudERlbGV0ZRJOCg9kb2N1bWVudF9yZW1vdmUYBiABKAsyIy'
    '5nb29nbGUuZmlyZXN0b3JlLnYxLkRvY3VtZW50UmVtb3ZlSABSDmRvY3VtZW50UmVtb3ZlEj4K'
    'BmZpbHRlchgFIAEoCzIkLmdvb2dsZS5maXJlc3RvcmUudjEuRXhpc3RlbmNlRmlsdGVySABSBm'
    'ZpbHRlckIPCg1yZXNwb25zZV90eXBl');

@$core.Deprecated('Use targetDescriptor instead')
const Target$json = {
  '1': 'Target',
  '2': [
    {
      '1': 'query',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Target.QueryTarget',
      '9': 0,
      '10': 'query'
    },
    {
      '1': 'documents',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Target.DocumentsTarget',
      '9': 0,
      '10': 'documents'
    },
    {'1': 'resume_token', '3': 4, '4': 1, '5': 12, '9': 1, '10': 'resumeToken'},
    {
      '1': 'read_time',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '9': 1,
      '10': 'readTime'
    },
    {'1': 'target_id', '3': 5, '4': 1, '5': 5, '10': 'targetId'},
    {'1': 'once', '3': 6, '4': 1, '5': 8, '10': 'once'},
    {
      '1': 'expected_count',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Int32Value',
      '10': 'expectedCount'
    },
  ],
  '3': [Target_DocumentsTarget$json, Target_QueryTarget$json],
  '8': [
    {'1': 'target_type'},
    {'1': 'resume_type'},
  ],
};

@$core.Deprecated('Use targetDescriptor instead')
const Target_DocumentsTarget$json = {
  '1': 'DocumentsTarget',
  '2': [
    {'1': 'documents', '3': 2, '4': 3, '5': 9, '10': 'documents'},
  ],
};

@$core.Deprecated('Use targetDescriptor instead')
const Target_QueryTarget$json = {
  '1': 'QueryTarget',
  '2': [
    {'1': 'parent', '3': 1, '4': 1, '5': 9, '10': 'parent'},
    {
      '1': 'structured_query',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery',
      '9': 0,
      '10': 'structuredQuery'
    },
  ],
  '8': [
    {'1': 'query_type'},
  ],
};

/// Descriptor for `Target`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List targetDescriptor = $convert.base64Decode(
    'CgZUYXJnZXQSPwoFcXVlcnkYAiABKAsyJy5nb29nbGUuZmlyZXN0b3JlLnYxLlRhcmdldC5RdW'
    'VyeVRhcmdldEgAUgVxdWVyeRJLCglkb2N1bWVudHMYAyABKAsyKy5nb29nbGUuZmlyZXN0b3Jl'
    'LnYxLlRhcmdldC5Eb2N1bWVudHNUYXJnZXRIAFIJZG9jdW1lbnRzEiMKDHJlc3VtZV90b2tlbh'
    'gEIAEoDEgBUgtyZXN1bWVUb2tlbhI5CglyZWFkX3RpbWUYCyABKAsyGi5nb29nbGUucHJvdG9i'
    'dWYuVGltZXN0YW1wSAFSCHJlYWRUaW1lEhsKCXRhcmdldF9pZBgFIAEoBVIIdGFyZ2V0SWQSEg'
    'oEb25jZRgGIAEoCFIEb25jZRJCCg5leHBlY3RlZF9jb3VudBgMIAEoCzIbLmdvb2dsZS5wcm90'
    'b2J1Zi5JbnQzMlZhbHVlUg1leHBlY3RlZENvdW50Gi8KD0RvY3VtZW50c1RhcmdldBIcCglkb2'
    'N1bWVudHMYAiADKAlSCWRvY3VtZW50cxqGAQoLUXVlcnlUYXJnZXQSFgoGcGFyZW50GAEgASgJ'
    'UgZwYXJlbnQSUQoQc3RydWN0dXJlZF9xdWVyeRgCIAEoCzIkLmdvb2dsZS5maXJlc3RvcmUudj'
    'EuU3RydWN0dXJlZFF1ZXJ5SABSD3N0cnVjdHVyZWRRdWVyeUIMCgpxdWVyeV90eXBlQg0KC3Rh'
    'cmdldF90eXBlQg0KC3Jlc3VtZV90eXBl');

@$core.Deprecated('Use targetChangeDescriptor instead')
const TargetChange$json = {
  '1': 'TargetChange',
  '2': [
    {
      '1': 'target_change_type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.google.firestore.v1.TargetChange.TargetChangeType',
      '10': 'targetChangeType'
    },
    {'1': 'target_ids', '3': 2, '4': 3, '5': 5, '10': 'targetIds'},
    {
      '1': 'cause',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.rpc.Status',
      '10': 'cause'
    },
    {'1': 'resume_token', '3': 4, '4': 1, '5': 12, '10': 'resumeToken'},
    {
      '1': 'read_time',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'readTime'
    },
  ],
  '4': [TargetChange_TargetChangeType$json],
};

@$core.Deprecated('Use targetChangeDescriptor instead')
const TargetChange_TargetChangeType$json = {
  '1': 'TargetChangeType',
  '2': [
    {'1': 'NO_CHANGE', '2': 0},
    {'1': 'ADD', '2': 1},
    {'1': 'REMOVE', '2': 2},
    {'1': 'CURRENT', '2': 3},
    {'1': 'RESET', '2': 4},
  ],
};

/// Descriptor for `TargetChange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List targetChangeDescriptor = $convert.base64Decode(
    'CgxUYXJnZXRDaGFuZ2USYAoSdGFyZ2V0X2NoYW5nZV90eXBlGAEgASgOMjIuZ29vZ2xlLmZpcm'
    'VzdG9yZS52MS5UYXJnZXRDaGFuZ2UuVGFyZ2V0Q2hhbmdlVHlwZVIQdGFyZ2V0Q2hhbmdlVHlw'
    'ZRIdCgp0YXJnZXRfaWRzGAIgAygFUgl0YXJnZXRJZHMSKAoFY2F1c2UYAyABKAsyEi5nb29nbG'
    'UucnBjLlN0YXR1c1IFY2F1c2USIQoMcmVzdW1lX3Rva2VuGAQgASgMUgtyZXN1bWVUb2tlbhI3'
    'CglyZWFkX3RpbWUYBiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUghyZWFkVGltZS'
    'JOChBUYXJnZXRDaGFuZ2VUeXBlEg0KCU5PX0NIQU5HRRAAEgcKA0FERBABEgoKBlJFTU9WRRAC'
    'EgsKB0NVUlJFTlQQAxIJCgVSRVNFVBAE');

@$core.Deprecated('Use listCollectionIdsRequestDescriptor instead')
const ListCollectionIdsRequest$json = {
  '1': 'ListCollectionIdsRequest',
  '2': [
    {'1': 'parent', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'parent'},
    {'1': 'page_size', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'page_token', '3': 3, '4': 1, '5': 9, '10': 'pageToken'},
    {
      '1': 'read_time',
      '3': 4,
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

/// Descriptor for `ListCollectionIdsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listCollectionIdsRequestDescriptor = $convert.base64Decode(
    'ChhMaXN0Q29sbGVjdGlvbklkc1JlcXVlc3QSGwoGcGFyZW50GAEgASgJQgPgQQJSBnBhcmVudB'
    'IbCglwYWdlX3NpemUYAiABKAVSCHBhZ2VTaXplEh0KCnBhZ2VfdG9rZW4YAyABKAlSCXBhZ2VU'
    'b2tlbhI5CglyZWFkX3RpbWUYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wSABSCH'
    'JlYWRUaW1lQhYKFGNvbnNpc3RlbmN5X3NlbGVjdG9y');

@$core.Deprecated('Use listCollectionIdsResponseDescriptor instead')
const ListCollectionIdsResponse$json = {
  '1': 'ListCollectionIdsResponse',
  '2': [
    {'1': 'collection_ids', '3': 1, '4': 3, '5': 9, '10': 'collectionIds'},
    {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
  ],
};

/// Descriptor for `ListCollectionIdsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listCollectionIdsResponseDescriptor =
    $convert.base64Decode(
        'ChlMaXN0Q29sbGVjdGlvbklkc1Jlc3BvbnNlEiUKDmNvbGxlY3Rpb25faWRzGAEgAygJUg1jb2'
        'xsZWN0aW9uSWRzEiYKD25leHRfcGFnZV90b2tlbhgCIAEoCVINbmV4dFBhZ2VUb2tlbg==');

@$core.Deprecated('Use batchWriteRequestDescriptor instead')
const BatchWriteRequest$json = {
  '1': 'BatchWriteRequest',
  '2': [
    {'1': 'database', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'database'},
    {
      '1': 'writes',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.Write',
      '10': 'writes'
    },
    {
      '1': 'labels',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.BatchWriteRequest.LabelsEntry',
      '10': 'labels'
    },
  ],
  '3': [BatchWriteRequest_LabelsEntry$json],
};

@$core.Deprecated('Use batchWriteRequestDescriptor instead')
const BatchWriteRequest_LabelsEntry$json = {
  '1': 'LabelsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `BatchWriteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchWriteRequestDescriptor = $convert.base64Decode(
    'ChFCYXRjaFdyaXRlUmVxdWVzdBIfCghkYXRhYmFzZRgBIAEoCUID4EECUghkYXRhYmFzZRIyCg'
    'Z3cml0ZXMYAiADKAsyGi5nb29nbGUuZmlyZXN0b3JlLnYxLldyaXRlUgZ3cml0ZXMSSgoGbGFi'
    'ZWxzGAMgAygLMjIuZ29vZ2xlLmZpcmVzdG9yZS52MS5CYXRjaFdyaXRlUmVxdWVzdC5MYWJlbH'
    'NFbnRyeVIGbGFiZWxzGjkKC0xhYmVsc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVl'
    'GAIgASgJUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use batchWriteResponseDescriptor instead')
const BatchWriteResponse$json = {
  '1': 'BatchWriteResponse',
  '2': [
    {
      '1': 'write_results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.WriteResult',
      '10': 'writeResults'
    },
    {
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
    'ChJCYXRjaFdyaXRlUmVzcG9uc2USRQoNd3JpdGVfcmVzdWx0cxgBIAMoCzIgLmdvb2dsZS5maX'
    'Jlc3RvcmUudjEuV3JpdGVSZXN1bHRSDHdyaXRlUmVzdWx0cxIqCgZzdGF0dXMYAiADKAsyEi5n'
    'b29nbGUucnBjLlN0YXR1c1IGc3RhdHVz');

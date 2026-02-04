// This is a generated file - do not edit.
//
// Generated from google/firestore/v1/query.proto.

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

@$core.Deprecated('Use structuredQueryDescriptor instead')
const StructuredQuery$json = {
  '1': 'StructuredQuery',
  '2': [
    {
      '1': 'select',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery.Projection',
      '10': 'select'
    },
    {
      '1': 'from',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery.CollectionSelector',
      '10': 'from'
    },
    {
      '1': 'where',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery.Filter',
      '10': 'where'
    },
    {
      '1': 'order_by',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery.Order',
      '10': 'orderBy'
    },
    {
      '1': 'start_at',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Cursor',
      '10': 'startAt'
    },
    {
      '1': 'end_at',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Cursor',
      '10': 'endAt'
    },
    {'1': 'offset', '3': 6, '4': 1, '5': 5, '10': 'offset'},
    {
      '1': 'limit',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Int32Value',
      '10': 'limit'
    },
    {
      '1': 'find_nearest',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery.FindNearest',
      '8': {},
      '10': 'findNearest'
    },
  ],
  '3': [
    StructuredQuery_CollectionSelector$json,
    StructuredQuery_Filter$json,
    StructuredQuery_CompositeFilter$json,
    StructuredQuery_FieldFilter$json,
    StructuredQuery_UnaryFilter$json,
    StructuredQuery_Order$json,
    StructuredQuery_FieldReference$json,
    StructuredQuery_Projection$json,
    StructuredQuery_FindNearest$json
  ],
  '4': [StructuredQuery_Direction$json],
};

@$core.Deprecated('Use structuredQueryDescriptor instead')
const StructuredQuery_CollectionSelector$json = {
  '1': 'CollectionSelector',
  '2': [
    {'1': 'collection_id', '3': 2, '4': 1, '5': 9, '10': 'collectionId'},
    {'1': 'all_descendants', '3': 3, '4': 1, '5': 8, '10': 'allDescendants'},
  ],
};

@$core.Deprecated('Use structuredQueryDescriptor instead')
const StructuredQuery_Filter$json = {
  '1': 'Filter',
  '2': [
    {
      '1': 'composite_filter',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery.CompositeFilter',
      '9': 0,
      '10': 'compositeFilter'
    },
    {
      '1': 'field_filter',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery.FieldFilter',
      '9': 0,
      '10': 'fieldFilter'
    },
    {
      '1': 'unary_filter',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery.UnaryFilter',
      '9': 0,
      '10': 'unaryFilter'
    },
  ],
  '8': [
    {'1': 'filter_type'},
  ],
};

@$core.Deprecated('Use structuredQueryDescriptor instead')
const StructuredQuery_CompositeFilter$json = {
  '1': 'CompositeFilter',
  '2': [
    {
      '1': 'op',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.google.firestore.v1.StructuredQuery.CompositeFilter.Operator',
      '10': 'op'
    },
    {
      '1': 'filters',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery.Filter',
      '10': 'filters'
    },
  ],
  '4': [StructuredQuery_CompositeFilter_Operator$json],
};

@$core.Deprecated('Use structuredQueryDescriptor instead')
const StructuredQuery_CompositeFilter_Operator$json = {
  '1': 'Operator',
  '2': [
    {'1': 'OPERATOR_UNSPECIFIED', '2': 0},
    {'1': 'AND', '2': 1},
    {'1': 'OR', '2': 2},
  ],
};

@$core.Deprecated('Use structuredQueryDescriptor instead')
const StructuredQuery_FieldFilter$json = {
  '1': 'FieldFilter',
  '2': [
    {
      '1': 'field',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery.FieldReference',
      '10': 'field'
    },
    {
      '1': 'op',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.google.firestore.v1.StructuredQuery.FieldFilter.Operator',
      '10': 'op'
    },
    {
      '1': 'value',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Value',
      '10': 'value'
    },
  ],
  '4': [StructuredQuery_FieldFilter_Operator$json],
};

@$core.Deprecated('Use structuredQueryDescriptor instead')
const StructuredQuery_FieldFilter_Operator$json = {
  '1': 'Operator',
  '2': [
    {'1': 'OPERATOR_UNSPECIFIED', '2': 0},
    {'1': 'LESS_THAN', '2': 1},
    {'1': 'LESS_THAN_OR_EQUAL', '2': 2},
    {'1': 'GREATER_THAN', '2': 3},
    {'1': 'GREATER_THAN_OR_EQUAL', '2': 4},
    {'1': 'EQUAL', '2': 5},
    {'1': 'NOT_EQUAL', '2': 6},
    {'1': 'ARRAY_CONTAINS', '2': 7},
    {'1': 'IN', '2': 8},
    {'1': 'ARRAY_CONTAINS_ANY', '2': 9},
    {'1': 'NOT_IN', '2': 10},
  ],
};

@$core.Deprecated('Use structuredQueryDescriptor instead')
const StructuredQuery_UnaryFilter$json = {
  '1': 'UnaryFilter',
  '2': [
    {
      '1': 'op',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.google.firestore.v1.StructuredQuery.UnaryFilter.Operator',
      '10': 'op'
    },
    {
      '1': 'field',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery.FieldReference',
      '9': 0,
      '10': 'field'
    },
  ],
  '4': [StructuredQuery_UnaryFilter_Operator$json],
  '8': [
    {'1': 'operand_type'},
  ],
};

@$core.Deprecated('Use structuredQueryDescriptor instead')
const StructuredQuery_UnaryFilter_Operator$json = {
  '1': 'Operator',
  '2': [
    {'1': 'OPERATOR_UNSPECIFIED', '2': 0},
    {'1': 'IS_NAN', '2': 2},
    {'1': 'IS_NULL', '2': 3},
    {'1': 'IS_NOT_NAN', '2': 4},
    {'1': 'IS_NOT_NULL', '2': 5},
  ],
};

@$core.Deprecated('Use structuredQueryDescriptor instead')
const StructuredQuery_Order$json = {
  '1': 'Order',
  '2': [
    {
      '1': 'field',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery.FieldReference',
      '10': 'field'
    },
    {
      '1': 'direction',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.google.firestore.v1.StructuredQuery.Direction',
      '10': 'direction'
    },
  ],
};

@$core.Deprecated('Use structuredQueryDescriptor instead')
const StructuredQuery_FieldReference$json = {
  '1': 'FieldReference',
  '2': [
    {'1': 'field_path', '3': 2, '4': 1, '5': 9, '10': 'fieldPath'},
  ],
};

@$core.Deprecated('Use structuredQueryDescriptor instead')
const StructuredQuery_Projection$json = {
  '1': 'Projection',
  '2': [
    {
      '1': 'fields',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery.FieldReference',
      '10': 'fields'
    },
  ],
};

@$core.Deprecated('Use structuredQueryDescriptor instead')
const StructuredQuery_FindNearest$json = {
  '1': 'FindNearest',
  '2': [
    {
      '1': 'vector_field',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery.FieldReference',
      '8': {},
      '10': 'vectorField'
    },
    {
      '1': 'query_vector',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Value',
      '8': {},
      '10': 'queryVector'
    },
    {
      '1': 'distance_measure',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.google.firestore.v1.StructuredQuery.FindNearest.DistanceMeasure',
      '8': {},
      '10': 'distanceMeasure'
    },
    {
      '1': 'limit',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Int32Value',
      '8': {},
      '10': 'limit'
    },
    {
      '1': 'distance_result_field',
      '3': 5,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'distanceResultField'
    },
    {
      '1': 'distance_threshold',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.DoubleValue',
      '8': {},
      '10': 'distanceThreshold'
    },
  ],
  '4': [StructuredQuery_FindNearest_DistanceMeasure$json],
};

@$core.Deprecated('Use structuredQueryDescriptor instead')
const StructuredQuery_FindNearest_DistanceMeasure$json = {
  '1': 'DistanceMeasure',
  '2': [
    {'1': 'DISTANCE_MEASURE_UNSPECIFIED', '2': 0},
    {'1': 'EUCLIDEAN', '2': 1},
    {'1': 'COSINE', '2': 2},
    {'1': 'DOT_PRODUCT', '2': 3},
  ],
};

@$core.Deprecated('Use structuredQueryDescriptor instead')
const StructuredQuery_Direction$json = {
  '1': 'Direction',
  '2': [
    {'1': 'DIRECTION_UNSPECIFIED', '2': 0},
    {'1': 'ASCENDING', '2': 1},
    {'1': 'DESCENDING', '2': 2},
  ],
};

/// Descriptor for `StructuredQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List structuredQueryDescriptor = $convert.base64Decode(
    'Cg9TdHJ1Y3R1cmVkUXVlcnkSRwoGc2VsZWN0GAEgASgLMi8uZ29vZ2xlLmZpcmVzdG9yZS52MS'
    '5TdHJ1Y3R1cmVkUXVlcnkuUHJvamVjdGlvblIGc2VsZWN0EksKBGZyb20YAiADKAsyNy5nb29n'
    'bGUuZmlyZXN0b3JlLnYxLlN0cnVjdHVyZWRRdWVyeS5Db2xsZWN0aW9uU2VsZWN0b3JSBGZyb2'
    '0SQQoFd2hlcmUYAyABKAsyKy5nb29nbGUuZmlyZXN0b3JlLnYxLlN0cnVjdHVyZWRRdWVyeS5G'
    'aWx0ZXJSBXdoZXJlEkUKCG9yZGVyX2J5GAQgAygLMiouZ29vZ2xlLmZpcmVzdG9yZS52MS5TdH'
    'J1Y3R1cmVkUXVlcnkuT3JkZXJSB29yZGVyQnkSNgoIc3RhcnRfYXQYByABKAsyGy5nb29nbGUu'
    'ZmlyZXN0b3JlLnYxLkN1cnNvclIHc3RhcnRBdBIyCgZlbmRfYXQYCCABKAsyGy5nb29nbGUuZm'
    'lyZXN0b3JlLnYxLkN1cnNvclIFZW5kQXQSFgoGb2Zmc2V0GAYgASgFUgZvZmZzZXQSMQoFbGlt'
    'aXQYBSABKAsyGy5nb29nbGUucHJvdG9idWYuSW50MzJWYWx1ZVIFbGltaXQSWAoMZmluZF9uZW'
    'FyZXN0GAkgASgLMjAuZ29vZ2xlLmZpcmVzdG9yZS52MS5TdHJ1Y3R1cmVkUXVlcnkuRmluZE5l'
    'YXJlc3RCA+BBAVILZmluZE5lYXJlc3QaYgoSQ29sbGVjdGlvblNlbGVjdG9yEiMKDWNvbGxlY3'
    'Rpb25faWQYAiABKAlSDGNvbGxlY3Rpb25JZBInCg9hbGxfZGVzY2VuZGFudHMYAyABKAhSDmFs'
    'bERlc2NlbmRhbnRzGqgCCgZGaWx0ZXISYQoQY29tcG9zaXRlX2ZpbHRlchgBIAEoCzI0Lmdvb2'
    'dsZS5maXJlc3RvcmUudjEuU3RydWN0dXJlZFF1ZXJ5LkNvbXBvc2l0ZUZpbHRlckgAUg9jb21w'
    'b3NpdGVGaWx0ZXISVQoMZmllbGRfZmlsdGVyGAIgASgLMjAuZ29vZ2xlLmZpcmVzdG9yZS52MS'
    '5TdHJ1Y3R1cmVkUXVlcnkuRmllbGRGaWx0ZXJIAFILZmllbGRGaWx0ZXISVQoMdW5hcnlfZmls'
    'dGVyGAMgASgLMjAuZ29vZ2xlLmZpcmVzdG9yZS52MS5TdHJ1Y3R1cmVkUXVlcnkuVW5hcnlGaW'
    'x0ZXJIAFILdW5hcnlGaWx0ZXJCDQoLZmlsdGVyX3R5cGUa3gEKD0NvbXBvc2l0ZUZpbHRlchJN'
    'CgJvcBgBIAEoDjI9Lmdvb2dsZS5maXJlc3RvcmUudjEuU3RydWN0dXJlZFF1ZXJ5LkNvbXBvc2'
    'l0ZUZpbHRlci5PcGVyYXRvclICb3ASRQoHZmlsdGVycxgCIAMoCzIrLmdvb2dsZS5maXJlc3Rv'
    'cmUudjEuU3RydWN0dXJlZFF1ZXJ5LkZpbHRlclIHZmlsdGVycyI1CghPcGVyYXRvchIYChRPUE'
    'VSQVRPUl9VTlNQRUNJRklFRBAAEgcKA0FORBABEgYKAk9SEAIaqgMKC0ZpZWxkRmlsdGVyEkkK'
    'BWZpZWxkGAEgASgLMjMuZ29vZ2xlLmZpcmVzdG9yZS52MS5TdHJ1Y3R1cmVkUXVlcnkuRmllbG'
    'RSZWZlcmVuY2VSBWZpZWxkEkkKAm9wGAIgASgOMjkuZ29vZ2xlLmZpcmVzdG9yZS52MS5TdHJ1'
    'Y3R1cmVkUXVlcnkuRmllbGRGaWx0ZXIuT3BlcmF0b3JSAm9wEjAKBXZhbHVlGAMgASgLMhouZ2'
    '9vZ2xlLmZpcmVzdG9yZS52MS5WYWx1ZVIFdmFsdWUi0gEKCE9wZXJhdG9yEhgKFE9QRVJBVE9S'
    'X1VOU1BFQ0lGSUVEEAASDQoJTEVTU19USEFOEAESFgoSTEVTU19USEFOX09SX0VRVUFMEAISEA'
    'oMR1JFQVRFUl9USEFOEAMSGQoVR1JFQVRFUl9USEFOX09SX0VRVUFMEAQSCQoFRVFVQUwQBRIN'
    'CglOT1RfRVFVQUwQBhISCg5BUlJBWV9DT05UQUlOUxAHEgYKAklOEAgSFgoSQVJSQVlfQ09OVE'
    'FJTlNfQU5ZEAkSCgoGTk9UX0lOEAoalQIKC1VuYXJ5RmlsdGVyEkkKAm9wGAEgASgOMjkuZ29v'
    'Z2xlLmZpcmVzdG9yZS52MS5TdHJ1Y3R1cmVkUXVlcnkuVW5hcnlGaWx0ZXIuT3BlcmF0b3JSAm'
    '9wEksKBWZpZWxkGAIgASgLMjMuZ29vZ2xlLmZpcmVzdG9yZS52MS5TdHJ1Y3R1cmVkUXVlcnku'
    'RmllbGRSZWZlcmVuY2VIAFIFZmllbGQiXgoIT3BlcmF0b3ISGAoUT1BFUkFUT1JfVU5TUEVDSU'
    'ZJRUQQABIKCgZJU19OQU4QAhILCgdJU19OVUxMEAMSDgoKSVNfTk9UX05BThAEEg8KC0lTX05P'
    'VF9OVUxMEAVCDgoMb3BlcmFuZF90eXBlGqABCgVPcmRlchJJCgVmaWVsZBgBIAEoCzIzLmdvb2'
    'dsZS5maXJlc3RvcmUudjEuU3RydWN0dXJlZFF1ZXJ5LkZpZWxkUmVmZXJlbmNlUgVmaWVsZBJM'
    'CglkaXJlY3Rpb24YAiABKA4yLi5nb29nbGUuZmlyZXN0b3JlLnYxLlN0cnVjdHVyZWRRdWVyeS'
    '5EaXJlY3Rpb25SCWRpcmVjdGlvbhovCg5GaWVsZFJlZmVyZW5jZRIdCgpmaWVsZF9wYXRoGAIg'
    'ASgJUglmaWVsZFBhdGgaWQoKUHJvamVjdGlvbhJLCgZmaWVsZHMYAiADKAsyMy5nb29nbGUuZm'
    'lyZXN0b3JlLnYxLlN0cnVjdHVyZWRRdWVyeS5GaWVsZFJlZmVyZW5jZVIGZmllbGRzGsQECgtG'
    'aW5kTmVhcmVzdBJbCgx2ZWN0b3JfZmllbGQYASABKAsyMy5nb29nbGUuZmlyZXN0b3JlLnYxLl'
    'N0cnVjdHVyZWRRdWVyeS5GaWVsZFJlZmVyZW5jZUID4EECUgt2ZWN0b3JGaWVsZBJCCgxxdWVy'
    'eV92ZWN0b3IYAiABKAsyGi5nb29nbGUuZmlyZXN0b3JlLnYxLlZhbHVlQgPgQQJSC3F1ZXJ5Vm'
    'VjdG9yEnAKEGRpc3RhbmNlX21lYXN1cmUYAyABKA4yQC5nb29nbGUuZmlyZXN0b3JlLnYxLlN0'
    'cnVjdHVyZWRRdWVyeS5GaW5kTmVhcmVzdC5EaXN0YW5jZU1lYXN1cmVCA+BBAlIPZGlzdGFuY2'
    'VNZWFzdXJlEjYKBWxpbWl0GAQgASgLMhsuZ29vZ2xlLnByb3RvYnVmLkludDMyVmFsdWVCA+BB'
    'AlIFbGltaXQSNwoVZGlzdGFuY2VfcmVzdWx0X2ZpZWxkGAUgASgJQgPgQQFSE2Rpc3RhbmNlUm'
    'VzdWx0RmllbGQSUAoSZGlzdGFuY2VfdGhyZXNob2xkGAYgASgLMhwuZ29vZ2xlLnByb3RvYnVm'
    'LkRvdWJsZVZhbHVlQgPgQQFSEWRpc3RhbmNlVGhyZXNob2xkIl8KD0Rpc3RhbmNlTWVhc3VyZR'
    'IgChxESVNUQU5DRV9NRUFTVVJFX1VOU1BFQ0lGSUVEEAASDQoJRVVDTElERUFOEAESCgoGQ09T'
    'SU5FEAISDwoLRE9UX1BST0RVQ1QQAyJFCglEaXJlY3Rpb24SGQoVRElSRUNUSU9OX1VOU1BFQ0'
    'lGSUVEEAASDQoJQVNDRU5ESU5HEAESDgoKREVTQ0VORElORxAC');

@$core.Deprecated('Use structuredAggregationQueryDescriptor instead')
const StructuredAggregationQuery$json = {
  '1': 'StructuredAggregationQuery',
  '2': [
    {
      '1': 'structured_query',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery',
      '9': 0,
      '10': 'structuredQuery'
    },
    {
      '1': 'aggregations',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.StructuredAggregationQuery.Aggregation',
      '8': {},
      '10': 'aggregations'
    },
  ],
  '3': [StructuredAggregationQuery_Aggregation$json],
  '8': [
    {'1': 'query_type'},
  ],
};

@$core.Deprecated('Use structuredAggregationQueryDescriptor instead')
const StructuredAggregationQuery_Aggregation$json = {
  '1': 'Aggregation',
  '2': [
    {
      '1': 'count',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredAggregationQuery.Aggregation.Count',
      '9': 0,
      '10': 'count'
    },
    {
      '1': 'sum',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredAggregationQuery.Aggregation.Sum',
      '9': 0,
      '10': 'sum'
    },
    {
      '1': 'avg',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredAggregationQuery.Aggregation.Avg',
      '9': 0,
      '10': 'avg'
    },
    {'1': 'alias', '3': 7, '4': 1, '5': 9, '8': {}, '10': 'alias'},
  ],
  '3': [
    StructuredAggregationQuery_Aggregation_Count$json,
    StructuredAggregationQuery_Aggregation_Sum$json,
    StructuredAggregationQuery_Aggregation_Avg$json
  ],
  '8': [
    {'1': 'operator'},
  ],
};

@$core.Deprecated('Use structuredAggregationQueryDescriptor instead')
const StructuredAggregationQuery_Aggregation_Count$json = {
  '1': 'Count',
  '2': [
    {
      '1': 'up_to',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Int64Value',
      '8': {},
      '10': 'upTo'
    },
  ],
};

@$core.Deprecated('Use structuredAggregationQueryDescriptor instead')
const StructuredAggregationQuery_Aggregation_Sum$json = {
  '1': 'Sum',
  '2': [
    {
      '1': 'field',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery.FieldReference',
      '10': 'field'
    },
  ],
};

@$core.Deprecated('Use structuredAggregationQueryDescriptor instead')
const StructuredAggregationQuery_Aggregation_Avg$json = {
  '1': 'Avg',
  '2': [
    {
      '1': 'field',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery.FieldReference',
      '10': 'field'
    },
  ],
};

/// Descriptor for `StructuredAggregationQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List structuredAggregationQueryDescriptor = $convert.base64Decode(
    'ChpTdHJ1Y3R1cmVkQWdncmVnYXRpb25RdWVyeRJRChBzdHJ1Y3R1cmVkX3F1ZXJ5GAEgASgLMi'
    'QuZ29vZ2xlLmZpcmVzdG9yZS52MS5TdHJ1Y3R1cmVkUXVlcnlIAFIPc3RydWN0dXJlZFF1ZXJ5'
    'EmQKDGFnZ3JlZ2F0aW9ucxgDIAMoCzI7Lmdvb2dsZS5maXJlc3RvcmUudjEuU3RydWN0dXJlZE'
    'FnZ3JlZ2F0aW9uUXVlcnkuQWdncmVnYXRpb25CA+BBAVIMYWdncmVnYXRpb25zGp0ECgtBZ2dy'
    'ZWdhdGlvbhJZCgVjb3VudBgBIAEoCzJBLmdvb2dsZS5maXJlc3RvcmUudjEuU3RydWN0dXJlZE'
    'FnZ3JlZ2F0aW9uUXVlcnkuQWdncmVnYXRpb24uQ291bnRIAFIFY291bnQSUwoDc3VtGAIgASgL'
    'Mj8uZ29vZ2xlLmZpcmVzdG9yZS52MS5TdHJ1Y3R1cmVkQWdncmVnYXRpb25RdWVyeS5BZ2dyZW'
    'dhdGlvbi5TdW1IAFIDc3VtElMKA2F2ZxgDIAEoCzI/Lmdvb2dsZS5maXJlc3RvcmUudjEuU3Ry'
    'dWN0dXJlZEFnZ3JlZ2F0aW9uUXVlcnkuQWdncmVnYXRpb24uQXZnSABSA2F2ZxIZCgVhbGlhcx'
    'gHIAEoCUID4EEBUgVhbGlhcxo+CgVDb3VudBI1CgV1cF90bxgBIAEoCzIbLmdvb2dsZS5wcm90'
    'b2J1Zi5JbnQ2NFZhbHVlQgPgQQFSBHVwVG8aUAoDU3VtEkkKBWZpZWxkGAEgASgLMjMuZ29vZ2'
    'xlLmZpcmVzdG9yZS52MS5TdHJ1Y3R1cmVkUXVlcnkuRmllbGRSZWZlcmVuY2VSBWZpZWxkGlAK'
    'A0F2ZxJJCgVmaWVsZBgBIAEoCzIzLmdvb2dsZS5maXJlc3RvcmUudjEuU3RydWN0dXJlZFF1ZX'
    'J5LkZpZWxkUmVmZXJlbmNlUgVmaWVsZEIKCghvcGVyYXRvckIMCgpxdWVyeV90eXBl');

@$core.Deprecated('Use cursorDescriptor instead')
const Cursor$json = {
  '1': 'Cursor',
  '2': [
    {
      '1': 'values',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.Value',
      '10': 'values'
    },
    {'1': 'before', '3': 2, '4': 1, '5': 8, '10': 'before'},
  ],
};

/// Descriptor for `Cursor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cursorDescriptor = $convert.base64Decode(
    'CgZDdXJzb3ISMgoGdmFsdWVzGAEgAygLMhouZ29vZ2xlLmZpcmVzdG9yZS52MS5WYWx1ZVIGdm'
    'FsdWVzEhYKBmJlZm9yZRgCIAEoCFIGYmVmb3Jl');

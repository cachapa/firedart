///
//  Generated code. Do not modify.
//  source: google/firestore/v1/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use structuredQueryDescriptor instead')
const StructuredQuery$json = const {
  '1': 'StructuredQuery',
  '2': const [
    const {
      '1': 'select',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery.Projection',
      '10': 'select'
    },
    const {
      '1': 'from',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery.CollectionSelector',
      '10': 'from'
    },
    const {
      '1': 'where',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery.Filter',
      '10': 'where'
    },
    const {
      '1': 'order_by',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery.Order',
      '10': 'orderBy'
    },
    const {
      '1': 'start_at',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Cursor',
      '10': 'startAt'
    },
    const {
      '1': 'end_at',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Cursor',
      '10': 'endAt'
    },
    const {'1': 'offset', '3': 6, '4': 1, '5': 5, '10': 'offset'},
    const {
      '1': 'limit',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Int32Value',
      '10': 'limit'
    },
  ],
  '3': const [
    StructuredQuery_CollectionSelector$json,
    StructuredQuery_Filter$json,
    StructuredQuery_CompositeFilter$json,
    StructuredQuery_FieldFilter$json,
    StructuredQuery_UnaryFilter$json,
    StructuredQuery_Order$json,
    StructuredQuery_FieldReference$json,
    StructuredQuery_Projection$json
  ],
  '4': const [StructuredQuery_Direction$json],
};

@$core.Deprecated('Use structuredQueryDescriptor instead')
const StructuredQuery_CollectionSelector$json = const {
  '1': 'CollectionSelector',
  '2': const [
    const {'1': 'collection_id', '3': 2, '4': 1, '5': 9, '10': 'collectionId'},
    const {
      '1': 'all_descendants',
      '3': 3,
      '4': 1,
      '5': 8,
      '10': 'allDescendants'
    },
  ],
};

@$core.Deprecated('Use structuredQueryDescriptor instead')
const StructuredQuery_Filter$json = const {
  '1': 'Filter',
  '2': const [
    const {
      '1': 'composite_filter',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery.CompositeFilter',
      '9': 0,
      '10': 'compositeFilter'
    },
    const {
      '1': 'field_filter',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery.FieldFilter',
      '9': 0,
      '10': 'fieldFilter'
    },
    const {
      '1': 'unary_filter',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery.UnaryFilter',
      '9': 0,
      '10': 'unaryFilter'
    },
  ],
  '8': const [
    const {'1': 'filter_type'},
  ],
};

@$core.Deprecated('Use structuredQueryDescriptor instead')
const StructuredQuery_CompositeFilter$json = const {
  '1': 'CompositeFilter',
  '2': const [
    const {
      '1': 'op',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.google.firestore.v1.StructuredQuery.CompositeFilter.Operator',
      '10': 'op'
    },
    const {
      '1': 'filters',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery.Filter',
      '10': 'filters'
    },
  ],
  '4': const [StructuredQuery_CompositeFilter_Operator$json],
};

@$core.Deprecated('Use structuredQueryDescriptor instead')
const StructuredQuery_CompositeFilter_Operator$json = const {
  '1': 'Operator',
  '2': const [
    const {'1': 'OPERATOR_UNSPECIFIED', '2': 0},
    const {'1': 'AND', '2': 1},
  ],
};

@$core.Deprecated('Use structuredQueryDescriptor instead')
const StructuredQuery_FieldFilter$json = const {
  '1': 'FieldFilter',
  '2': const [
    const {
      '1': 'field',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery.FieldReference',
      '10': 'field'
    },
    const {
      '1': 'op',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.google.firestore.v1.StructuredQuery.FieldFilter.Operator',
      '10': 'op'
    },
    const {
      '1': 'value',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Value',
      '10': 'value'
    },
  ],
  '4': const [StructuredQuery_FieldFilter_Operator$json],
};

@$core.Deprecated('Use structuredQueryDescriptor instead')
const StructuredQuery_FieldFilter_Operator$json = const {
  '1': 'Operator',
  '2': const [
    const {'1': 'OPERATOR_UNSPECIFIED', '2': 0},
    const {'1': 'LESS_THAN', '2': 1},
    const {'1': 'LESS_THAN_OR_EQUAL', '2': 2},
    const {'1': 'GREATER_THAN', '2': 3},
    const {'1': 'GREATER_THAN_OR_EQUAL', '2': 4},
    const {'1': 'EQUAL', '2': 5},
    const {'1': 'NOT_EQUAL', '2': 6},
    const {'1': 'ARRAY_CONTAINS', '2': 7},
    const {'1': 'IN', '2': 8},
    const {'1': 'ARRAY_CONTAINS_ANY', '2': 9},
    const {'1': 'NOT_IN', '2': 10},
  ],
};

@$core.Deprecated('Use structuredQueryDescriptor instead')
const StructuredQuery_UnaryFilter$json = const {
  '1': 'UnaryFilter',
  '2': const [
    const {
      '1': 'op',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.google.firestore.v1.StructuredQuery.UnaryFilter.Operator',
      '10': 'op'
    },
    const {
      '1': 'field',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery.FieldReference',
      '9': 0,
      '10': 'field'
    },
  ],
  '4': const [StructuredQuery_UnaryFilter_Operator$json],
  '8': const [
    const {'1': 'operand_type'},
  ],
};

@$core.Deprecated('Use structuredQueryDescriptor instead')
const StructuredQuery_UnaryFilter_Operator$json = const {
  '1': 'Operator',
  '2': const [
    const {'1': 'OPERATOR_UNSPECIFIED', '2': 0},
    const {'1': 'IS_NAN', '2': 2},
    const {'1': 'IS_NULL', '2': 3},
    const {'1': 'IS_NOT_NAN', '2': 4},
    const {'1': 'IS_NOT_NULL', '2': 5},
  ],
};

@$core.Deprecated('Use structuredQueryDescriptor instead')
const StructuredQuery_Order$json = const {
  '1': 'Order',
  '2': const [
    const {
      '1': 'field',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.StructuredQuery.FieldReference',
      '10': 'field'
    },
    const {
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
const StructuredQuery_FieldReference$json = const {
  '1': 'FieldReference',
  '2': const [
    const {'1': 'field_path', '3': 2, '4': 1, '5': 9, '10': 'fieldPath'},
  ],
};

@$core.Deprecated('Use structuredQueryDescriptor instead')
const StructuredQuery_Projection$json = const {
  '1': 'Projection',
  '2': const [
    const {
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
const StructuredQuery_Direction$json = const {
  '1': 'Direction',
  '2': const [
    const {'1': 'DIRECTION_UNSPECIFIED', '2': 0},
    const {'1': 'ASCENDING', '2': 1},
    const {'1': 'DESCENDING', '2': 2},
  ],
};

/// Descriptor for `StructuredQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List structuredQueryDescriptor = $convert.base64Decode(
    'Cg9TdHJ1Y3R1cmVkUXVlcnkSRwoGc2VsZWN0GAEgASgLMi8uZ29vZ2xlLmZpcmVzdG9yZS52MS5TdHJ1Y3R1cmVkUXVlcnkuUHJvamVjdGlvblIGc2VsZWN0EksKBGZyb20YAiADKAsyNy5nb29nbGUuZmlyZXN0b3JlLnYxLlN0cnVjdHVyZWRRdWVyeS5Db2xsZWN0aW9uU2VsZWN0b3JSBGZyb20SQQoFd2hlcmUYAyABKAsyKy5nb29nbGUuZmlyZXN0b3JlLnYxLlN0cnVjdHVyZWRRdWVyeS5GaWx0ZXJSBXdoZXJlEkUKCG9yZGVyX2J5GAQgAygLMiouZ29vZ2xlLmZpcmVzdG9yZS52MS5TdHJ1Y3R1cmVkUXVlcnkuT3JkZXJSB29yZGVyQnkSNgoIc3RhcnRfYXQYByABKAsyGy5nb29nbGUuZmlyZXN0b3JlLnYxLkN1cnNvclIHc3RhcnRBdBIyCgZlbmRfYXQYCCABKAsyGy5nb29nbGUuZmlyZXN0b3JlLnYxLkN1cnNvclIFZW5kQXQSFgoGb2Zmc2V0GAYgASgFUgZvZmZzZXQSMQoFbGltaXQYBSABKAsyGy5nb29nbGUucHJvdG9idWYuSW50MzJWYWx1ZVIFbGltaXQaYgoSQ29sbGVjdGlvblNlbGVjdG9yEiMKDWNvbGxlY3Rpb25faWQYAiABKAlSDGNvbGxlY3Rpb25JZBInCg9hbGxfZGVzY2VuZGFudHMYAyABKAhSDmFsbERlc2NlbmRhbnRzGqgCCgZGaWx0ZXISYQoQY29tcG9zaXRlX2ZpbHRlchgBIAEoCzI0Lmdvb2dsZS5maXJlc3RvcmUudjEuU3RydWN0dXJlZFF1ZXJ5LkNvbXBvc2l0ZUZpbHRlckgAUg9jb21wb3NpdGVGaWx0ZXISVQoMZmllbGRfZmlsdGVyGAIgASgLMjAuZ29vZ2xlLmZpcmVzdG9yZS52MS5TdHJ1Y3R1cmVkUXVlcnkuRmllbGRGaWx0ZXJIAFILZmllbGRGaWx0ZXISVQoMdW5hcnlfZmlsdGVyGAMgASgLMjAuZ29vZ2xlLmZpcmVzdG9yZS52MS5TdHJ1Y3R1cmVkUXVlcnkuVW5hcnlGaWx0ZXJIAFILdW5hcnlGaWx0ZXJCDQoLZmlsdGVyX3R5cGUa1gEKD0NvbXBvc2l0ZUZpbHRlchJNCgJvcBgBIAEoDjI9Lmdvb2dsZS5maXJlc3RvcmUudjEuU3RydWN0dXJlZFF1ZXJ5LkNvbXBvc2l0ZUZpbHRlci5PcGVyYXRvclICb3ASRQoHZmlsdGVycxgCIAMoCzIrLmdvb2dsZS5maXJlc3RvcmUudjEuU3RydWN0dXJlZFF1ZXJ5LkZpbHRlclIHZmlsdGVycyItCghPcGVyYXRvchIYChRPUEVSQVRPUl9VTlNQRUNJRklFRBAAEgcKA0FORBABGqoDCgtGaWVsZEZpbHRlchJJCgVmaWVsZBgBIAEoCzIzLmdvb2dsZS5maXJlc3RvcmUudjEuU3RydWN0dXJlZFF1ZXJ5LkZpZWxkUmVmZXJlbmNlUgVmaWVsZBJJCgJvcBgCIAEoDjI5Lmdvb2dsZS5maXJlc3RvcmUudjEuU3RydWN0dXJlZFF1ZXJ5LkZpZWxkRmlsdGVyLk9wZXJhdG9yUgJvcBIwCgV2YWx1ZRgDIAEoCzIaLmdvb2dsZS5maXJlc3RvcmUudjEuVmFsdWVSBXZhbHVlItIBCghPcGVyYXRvchIYChRPUEVSQVRPUl9VTlNQRUNJRklFRBAAEg0KCUxFU1NfVEhBThABEhYKEkxFU1NfVEhBTl9PUl9FUVVBTBACEhAKDEdSRUFURVJfVEhBThADEhkKFUdSRUFURVJfVEhBTl9PUl9FUVVBTBAEEgkKBUVRVUFMEAUSDQoJTk9UX0VRVUFMEAYSEgoOQVJSQVlfQ09OVEFJTlMQBxIGCgJJThAIEhYKEkFSUkFZX0NPTlRBSU5TX0FOWRAJEgoKBk5PVF9JThAKGpUCCgtVbmFyeUZpbHRlchJJCgJvcBgBIAEoDjI5Lmdvb2dsZS5maXJlc3RvcmUudjEuU3RydWN0dXJlZFF1ZXJ5LlVuYXJ5RmlsdGVyLk9wZXJhdG9yUgJvcBJLCgVmaWVsZBgCIAEoCzIzLmdvb2dsZS5maXJlc3RvcmUudjEuU3RydWN0dXJlZFF1ZXJ5LkZpZWxkUmVmZXJlbmNlSABSBWZpZWxkIl4KCE9wZXJhdG9yEhgKFE9QRVJBVE9SX1VOU1BFQ0lGSUVEEAASCgoGSVNfTkFOEAISCwoHSVNfTlVMTBADEg4KCklTX05PVF9OQU4QBBIPCgtJU19OT1RfTlVMTBAFQg4KDG9wZXJhbmRfdHlwZRqgAQoFT3JkZXISSQoFZmllbGQYASABKAsyMy5nb29nbGUuZmlyZXN0b3JlLnYxLlN0cnVjdHVyZWRRdWVyeS5GaWVsZFJlZmVyZW5jZVIFZmllbGQSTAoJZGlyZWN0aW9uGAIgASgOMi4uZ29vZ2xlLmZpcmVzdG9yZS52MS5TdHJ1Y3R1cmVkUXVlcnkuRGlyZWN0aW9uUglkaXJlY3Rpb24aLwoORmllbGRSZWZlcmVuY2USHQoKZmllbGRfcGF0aBgCIAEoCVIJZmllbGRQYXRoGlkKClByb2plY3Rpb24SSwoGZmllbGRzGAIgAygLMjMuZ29vZ2xlLmZpcmVzdG9yZS52MS5TdHJ1Y3R1cmVkUXVlcnkuRmllbGRSZWZlcmVuY2VSBmZpZWxkcyJFCglEaXJlY3Rpb24SGQoVRElSRUNUSU9OX1VOU1BFQ0lGSUVEEAASDQoJQVNDRU5ESU5HEAESDgoKREVTQ0VORElORxAC');
@$core.Deprecated('Use cursorDescriptor instead')
const Cursor$json = const {
  '1': 'Cursor',
  '2': const [
    const {
      '1': 'values',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.google.firestore.v1.Value',
      '10': 'values'
    },
    const {'1': 'before', '3': 2, '4': 1, '5': 8, '10': 'before'},
  ],
};

/// Descriptor for `Cursor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cursorDescriptor = $convert.base64Decode(
    'CgZDdXJzb3ISMgoGdmFsdWVzGAEgAygLMhouZ29vZ2xlLmZpcmVzdG9yZS52MS5WYWx1ZVIGdmFsdWVzEhYKBmJlZm9yZRgCIAEoCFIGYmVmb3Jl');

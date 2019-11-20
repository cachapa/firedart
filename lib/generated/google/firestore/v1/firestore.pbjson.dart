///
//  Generated code. Do not modify.
//  source: google/firestore/v1/firestore.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const GetDocumentRequest$json = const {
  '1': 'GetDocumentRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
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

const ListDocumentsRequest$json = const {
  '1': 'ListDocumentsRequest',
  '2': const [
    const {'1': 'parent', '3': 1, '4': 1, '5': 9, '10': 'parent'},
    const {'1': 'collection_id', '3': 2, '4': 1, '5': 9, '10': 'collectionId'},
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

const CreateDocumentRequest$json = const {
  '1': 'CreateDocumentRequest',
  '2': const [
    const {'1': 'parent', '3': 1, '4': 1, '5': 9, '10': 'parent'},
    const {'1': 'collection_id', '3': 2, '4': 1, '5': 9, '10': 'collectionId'},
    const {'1': 'document_id', '3': 3, '4': 1, '5': 9, '10': 'documentId'},
    const {
      '1': 'document',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Document',
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

const UpdateDocumentRequest$json = const {
  '1': 'UpdateDocumentRequest',
  '2': const [
    const {
      '1': 'document',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.firestore.v1.Document',
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

const DeleteDocumentRequest$json = const {
  '1': 'DeleteDocumentRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
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

const BatchGetDocumentsRequest$json = const {
  '1': 'BatchGetDocumentsRequest',
  '2': const [
    const {'1': 'database', '3': 1, '4': 1, '5': 9, '10': 'database'},
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

const BeginTransactionRequest$json = const {
  '1': 'BeginTransactionRequest',
  '2': const [
    const {'1': 'database', '3': 1, '4': 1, '5': 9, '10': 'database'},
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

const BeginTransactionResponse$json = const {
  '1': 'BeginTransactionResponse',
  '2': const [
    const {'1': 'transaction', '3': 1, '4': 1, '5': 12, '10': 'transaction'},
  ],
};

const CommitRequest$json = const {
  '1': 'CommitRequest',
  '2': const [
    const {'1': 'database', '3': 1, '4': 1, '5': 9, '10': 'database'},
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

const RollbackRequest$json = const {
  '1': 'RollbackRequest',
  '2': const [
    const {'1': 'database', '3': 1, '4': 1, '5': 9, '10': 'database'},
    const {'1': 'transaction', '3': 2, '4': 1, '5': 12, '10': 'transaction'},
  ],
};

const RunQueryRequest$json = const {
  '1': 'RunQueryRequest',
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

const WriteRequest$json = const {
  '1': 'WriteRequest',
  '2': const [
    const {'1': 'database', '3': 1, '4': 1, '5': 9, '10': 'database'},
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

const WriteRequest_LabelsEntry$json = const {
  '1': 'LabelsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

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

const ListenRequest$json = const {
  '1': 'ListenRequest',
  '2': const [
    const {'1': 'database', '3': 1, '4': 1, '5': 9, '10': 'database'},
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

const ListenRequest_LabelsEntry$json = const {
  '1': 'LabelsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

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

const Target_DocumentsTarget$json = const {
  '1': 'DocumentsTarget',
  '2': const [
    const {'1': 'documents', '3': 2, '4': 3, '5': 9, '10': 'documents'},
  ],
};

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

const ListCollectionIdsRequest$json = const {
  '1': 'ListCollectionIdsRequest',
  '2': const [
    const {'1': 'parent', '3': 1, '4': 1, '5': 9, '10': 'parent'},
    const {'1': 'page_size', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    const {'1': 'page_token', '3': 3, '4': 1, '5': 9, '10': 'pageToken'},
  ],
};

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

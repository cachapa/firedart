///
//  Generated code. Do not modify.
//  source: google/firestore/v1/write.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

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

const DocumentTransform_FieldTransform_ServerValue$json = const {
  '1': 'ServerValue',
  '2': const [
    const {'1': 'SERVER_VALUE_UNSPECIFIED', '2': 0},
    const {'1': 'REQUEST_TIME', '2': 1},
  ],
};

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

const ExistenceFilter$json = const {
  '1': 'ExistenceFilter',
  '2': const [
    const {'1': 'target_id', '3': 1, '4': 1, '5': 5, '10': 'targetId'},
    const {'1': 'count', '3': 2, '4': 1, '5': 5, '10': 'count'},
  ],
};

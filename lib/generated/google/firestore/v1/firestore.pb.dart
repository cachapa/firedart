//
//  Generated code. Do not modify.
//  source: google/firestore/v1/firestore.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../protobuf/timestamp.pb.dart' as $4;
import '../../protobuf/wrappers.pb.dart' as $8;
import '../../rpc/status.pb.dart' as $9;
import 'aggregation_result.pb.dart' as $7;
import 'common.pb.dart' as $3;
import 'document.pb.dart' as $1;
import 'firestore.pbenum.dart';
import 'query.pb.dart' as $6;
import 'write.pb.dart' as $5;

export 'firestore.pbenum.dart';

enum GetDocumentRequest_ConsistencySelector { transaction, readTime, notSet }

/// The request for
/// [Firestore.GetDocument][google.firestore.v1.Firestore.GetDocument].
class GetDocumentRequest extends $pb.GeneratedMessage {
  factory GetDocumentRequest({
    $core.String? name,
    $3.DocumentMask? mask,
    $core.List<$core.int>? transaction,
    $4.Timestamp? readTime,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (mask != null) {
      $result.mask = mask;
    }
    if (transaction != null) {
      $result.transaction = transaction;
    }
    if (readTime != null) {
      $result.readTime = readTime;
    }
    return $result;
  }
  GetDocumentRequest._() : super();
  factory GetDocumentRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetDocumentRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, GetDocumentRequest_ConsistencySelector>
      _GetDocumentRequest_ConsistencySelectorByTag = {
    3: GetDocumentRequest_ConsistencySelector.transaction,
    5: GetDocumentRequest_ConsistencySelector.readTime,
    0: GetDocumentRequest_ConsistencySelector.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetDocumentRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [3, 5])
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<$3.DocumentMask>(2, _omitFieldNames ? '' : 'mask',
        subBuilder: $3.DocumentMask.create)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'transaction', $pb.PbFieldType.OY)
    ..aOM<$4.Timestamp>(5, _omitFieldNames ? '' : 'readTime',
        subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetDocumentRequest clone() => GetDocumentRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetDocumentRequest copyWith(void Function(GetDocumentRequest) updates) =>
      super.copyWith((message) => updates(message as GetDocumentRequest))
          as GetDocumentRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDocumentRequest create() => GetDocumentRequest._();
  GetDocumentRequest createEmptyInstance() => create();
  static $pb.PbList<GetDocumentRequest> createRepeated() =>
      $pb.PbList<GetDocumentRequest>();
  @$core.pragma('dart2js:noInline')
  static GetDocumentRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetDocumentRequest>(create);
  static GetDocumentRequest? _defaultInstance;

  GetDocumentRequest_ConsistencySelector whichConsistencySelector() =>
      _GetDocumentRequest_ConsistencySelectorByTag[$_whichOneof(0)]!;
  void clearConsistencySelector() => clearField($_whichOneof(0));

  /// Required. The resource name of the Document to get. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  ///  The fields to return. If not set, returns all fields.
  ///
  ///  If the document has a field that is not present in this mask, that field
  ///  will not be returned in the response.
  @$pb.TagNumber(2)
  $3.DocumentMask get mask => $_getN(1);
  @$pb.TagNumber(2)
  set mask($3.DocumentMask v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMask() => $_has(1);
  @$pb.TagNumber(2)
  void clearMask() => clearField(2);
  @$pb.TagNumber(2)
  $3.DocumentMask ensureMask() => $_ensure(1);

  /// Reads the document in a transaction.
  @$pb.TagNumber(3)
  $core.List<$core.int> get transaction => $_getN(2);
  @$pb.TagNumber(3)
  set transaction($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTransaction() => $_has(2);
  @$pb.TagNumber(3)
  void clearTransaction() => clearField(3);

  ///  Reads the version of the document at the given time.
  ///
  ///  This must be a microsecond precision timestamp within the past one hour,
  ///  or if Point-in-Time Recovery is enabled, can additionally be a whole
  ///  minute timestamp within the past 7 days.
  @$pb.TagNumber(5)
  $4.Timestamp get readTime => $_getN(3);
  @$pb.TagNumber(5)
  set readTime($4.Timestamp v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasReadTime() => $_has(3);
  @$pb.TagNumber(5)
  void clearReadTime() => clearField(5);
  @$pb.TagNumber(5)
  $4.Timestamp ensureReadTime() => $_ensure(3);
}

enum ListDocumentsRequest_ConsistencySelector { transaction, readTime, notSet }

/// The request for
/// [Firestore.ListDocuments][google.firestore.v1.Firestore.ListDocuments].
class ListDocumentsRequest extends $pb.GeneratedMessage {
  factory ListDocumentsRequest({
    $core.String? parent,
    $core.String? collectionId,
    $core.int? pageSize,
    $core.String? pageToken,
    $core.String? orderBy,
    $3.DocumentMask? mask,
    $core.List<$core.int>? transaction,
    $4.Timestamp? readTime,
    $core.bool? showMissing,
  }) {
    final $result = create();
    if (parent != null) {
      $result.parent = parent;
    }
    if (collectionId != null) {
      $result.collectionId = collectionId;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (pageToken != null) {
      $result.pageToken = pageToken;
    }
    if (orderBy != null) {
      $result.orderBy = orderBy;
    }
    if (mask != null) {
      $result.mask = mask;
    }
    if (transaction != null) {
      $result.transaction = transaction;
    }
    if (readTime != null) {
      $result.readTime = readTime;
    }
    if (showMissing != null) {
      $result.showMissing = showMissing;
    }
    return $result;
  }
  ListDocumentsRequest._() : super();
  factory ListDocumentsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListDocumentsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ListDocumentsRequest_ConsistencySelector>
      _ListDocumentsRequest_ConsistencySelectorByTag = {
    8: ListDocumentsRequest_ConsistencySelector.transaction,
    10: ListDocumentsRequest_ConsistencySelector.readTime,
    0: ListDocumentsRequest_ConsistencySelector.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListDocumentsRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [8, 10])
    ..aOS(1, _omitFieldNames ? '' : 'parent')
    ..aOS(2, _omitFieldNames ? '' : 'collectionId')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'pageToken')
    ..aOS(6, _omitFieldNames ? '' : 'orderBy')
    ..aOM<$3.DocumentMask>(7, _omitFieldNames ? '' : 'mask',
        subBuilder: $3.DocumentMask.create)
    ..a<$core.List<$core.int>>(
        8, _omitFieldNames ? '' : 'transaction', $pb.PbFieldType.OY)
    ..aOM<$4.Timestamp>(10, _omitFieldNames ? '' : 'readTime',
        subBuilder: $4.Timestamp.create)
    ..aOB(12, _omitFieldNames ? '' : 'showMissing')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListDocumentsRequest clone() =>
      ListDocumentsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListDocumentsRequest copyWith(void Function(ListDocumentsRequest) updates) =>
      super.copyWith((message) => updates(message as ListDocumentsRequest))
          as ListDocumentsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListDocumentsRequest create() => ListDocumentsRequest._();
  ListDocumentsRequest createEmptyInstance() => create();
  static $pb.PbList<ListDocumentsRequest> createRepeated() =>
      $pb.PbList<ListDocumentsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListDocumentsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListDocumentsRequest>(create);
  static ListDocumentsRequest? _defaultInstance;

  ListDocumentsRequest_ConsistencySelector whichConsistencySelector() =>
      _ListDocumentsRequest_ConsistencySelectorByTag[$_whichOneof(0)]!;
  void clearConsistencySelector() => clearField($_whichOneof(0));

  ///  Required. The parent resource name. In the format:
  ///  `projects/{project_id}/databases/{database_id}/documents` or
  ///  `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  ///
  ///  For example:
  ///  `projects/my-project/databases/my-database/documents` or
  ///  `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`
  @$pb.TagNumber(1)
  $core.String get parent => $_getSZ(0);
  @$pb.TagNumber(1)
  set parent($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasParent() => $_has(0);
  @$pb.TagNumber(1)
  void clearParent() => clearField(1);

  ///  Optional. The collection ID, relative to `parent`, to list.
  ///
  ///  For example: `chatrooms` or `messages`.
  ///
  ///  This is optional, and when not provided, Firestore will list documents
  ///  from all collections under the provided `parent`.
  @$pb.TagNumber(2)
  $core.String get collectionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set collectionId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCollectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionId() => clearField(2);

  ///  Optional. The maximum number of documents to return in a single response.
  ///
  ///  Firestore may return fewer than this value.
  @$pb.TagNumber(3)
  $core.int get pageSize => $_getIZ(2);
  @$pb.TagNumber(3)
  set pageSize($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPageSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearPageSize() => clearField(3);

  ///  Optional. A page token, received from a previous `ListDocuments` response.
  ///
  ///  Provide this to retrieve the subsequent page. When paginating, all other
  ///  parameters (with the exception of `page_size`) must match the values set
  ///  in the request that generated the page token.
  @$pb.TagNumber(4)
  $core.String get pageToken => $_getSZ(3);
  @$pb.TagNumber(4)
  set pageToken($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPageToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearPageToken() => clearField(4);

  ///  Optional. The optional ordering of the documents to return.
  ///
  ///  For example: `priority desc, __name__ desc`.
  ///
  ///  This mirrors the [`ORDER BY`][google.firestore.v1.StructuredQuery.order_by]
  ///  used in Firestore queries but in a string representation. When absent,
  ///  documents are ordered based on `__name__ ASC`.
  @$pb.TagNumber(6)
  $core.String get orderBy => $_getSZ(4);
  @$pb.TagNumber(6)
  set orderBy($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasOrderBy() => $_has(4);
  @$pb.TagNumber(6)
  void clearOrderBy() => clearField(6);

  ///  Optional. The fields to return. If not set, returns all fields.
  ///
  ///  If a document has a field that is not present in this mask, that field
  ///  will not be returned in the response.
  @$pb.TagNumber(7)
  $3.DocumentMask get mask => $_getN(5);
  @$pb.TagNumber(7)
  set mask($3.DocumentMask v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasMask() => $_has(5);
  @$pb.TagNumber(7)
  void clearMask() => clearField(7);
  @$pb.TagNumber(7)
  $3.DocumentMask ensureMask() => $_ensure(5);

  /// Perform the read as part of an already active transaction.
  @$pb.TagNumber(8)
  $core.List<$core.int> get transaction => $_getN(6);
  @$pb.TagNumber(8)
  set transaction($core.List<$core.int> v) {
    $_setBytes(6, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasTransaction() => $_has(6);
  @$pb.TagNumber(8)
  void clearTransaction() => clearField(8);

  ///  Perform the read at the provided time.
  ///
  ///  This must be a microsecond precision timestamp within the past one hour,
  ///  or if Point-in-Time Recovery is enabled, can additionally be a whole
  ///  minute timestamp within the past 7 days.
  @$pb.TagNumber(10)
  $4.Timestamp get readTime => $_getN(7);
  @$pb.TagNumber(10)
  set readTime($4.Timestamp v) {
    setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasReadTime() => $_has(7);
  @$pb.TagNumber(10)
  void clearReadTime() => clearField(10);
  @$pb.TagNumber(10)
  $4.Timestamp ensureReadTime() => $_ensure(7);

  ///  If the list should show missing documents.
  ///
  ///  A document is missing if it does not exist, but there are sub-documents
  ///  nested underneath it. When true, such missing documents will be returned
  ///  with a key but will not have fields,
  ///  [`create_time`][google.firestore.v1.Document.create_time], or
  ///  [`update_time`][google.firestore.v1.Document.update_time] set.
  ///
  ///  Requests with `show_missing` may not specify `where` or `order_by`.
  @$pb.TagNumber(12)
  $core.bool get showMissing => $_getBF(8);
  @$pb.TagNumber(12)
  set showMissing($core.bool v) {
    $_setBool(8, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasShowMissing() => $_has(8);
  @$pb.TagNumber(12)
  void clearShowMissing() => clearField(12);
}

/// The response for
/// [Firestore.ListDocuments][google.firestore.v1.Firestore.ListDocuments].
class ListDocumentsResponse extends $pb.GeneratedMessage {
  factory ListDocumentsResponse({
    $core.Iterable<$1.Document>? documents,
    $core.String? nextPageToken,
  }) {
    final $result = create();
    if (documents != null) {
      $result.documents.addAll(documents);
    }
    if (nextPageToken != null) {
      $result.nextPageToken = nextPageToken;
    }
    return $result;
  }
  ListDocumentsResponse._() : super();
  factory ListDocumentsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListDocumentsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListDocumentsResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..pc<$1.Document>(1, _omitFieldNames ? '' : 'documents', $pb.PbFieldType.PM,
        subBuilder: $1.Document.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextPageToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListDocumentsResponse clone() =>
      ListDocumentsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListDocumentsResponse copyWith(
          void Function(ListDocumentsResponse) updates) =>
      super.copyWith((message) => updates(message as ListDocumentsResponse))
          as ListDocumentsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListDocumentsResponse create() => ListDocumentsResponse._();
  ListDocumentsResponse createEmptyInstance() => create();
  static $pb.PbList<ListDocumentsResponse> createRepeated() =>
      $pb.PbList<ListDocumentsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListDocumentsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListDocumentsResponse>(create);
  static ListDocumentsResponse? _defaultInstance;

  /// The Documents found.
  @$pb.TagNumber(1)
  $core.List<$1.Document> get documents => $_getList(0);

  ///  A token to retrieve the next page of documents.
  ///
  ///  If this field is omitted, there are no subsequent pages.
  @$pb.TagNumber(2)
  $core.String get nextPageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextPageToken($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNextPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextPageToken() => clearField(2);
}

/// The request for
/// [Firestore.CreateDocument][google.firestore.v1.Firestore.CreateDocument].
class CreateDocumentRequest extends $pb.GeneratedMessage {
  factory CreateDocumentRequest({
    $core.String? parent,
    $core.String? collectionId,
    $core.String? documentId,
    $1.Document? document,
    $3.DocumentMask? mask,
  }) {
    final $result = create();
    if (parent != null) {
      $result.parent = parent;
    }
    if (collectionId != null) {
      $result.collectionId = collectionId;
    }
    if (documentId != null) {
      $result.documentId = documentId;
    }
    if (document != null) {
      $result.document = document;
    }
    if (mask != null) {
      $result.mask = mask;
    }
    return $result;
  }
  CreateDocumentRequest._() : super();
  factory CreateDocumentRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateDocumentRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateDocumentRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'parent')
    ..aOS(2, _omitFieldNames ? '' : 'collectionId')
    ..aOS(3, _omitFieldNames ? '' : 'documentId')
    ..aOM<$1.Document>(4, _omitFieldNames ? '' : 'document',
        subBuilder: $1.Document.create)
    ..aOM<$3.DocumentMask>(5, _omitFieldNames ? '' : 'mask',
        subBuilder: $3.DocumentMask.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateDocumentRequest clone() =>
      CreateDocumentRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateDocumentRequest copyWith(
          void Function(CreateDocumentRequest) updates) =>
      super.copyWith((message) => updates(message as CreateDocumentRequest))
          as CreateDocumentRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateDocumentRequest create() => CreateDocumentRequest._();
  CreateDocumentRequest createEmptyInstance() => create();
  static $pb.PbList<CreateDocumentRequest> createRepeated() =>
      $pb.PbList<CreateDocumentRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateDocumentRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateDocumentRequest>(create);
  static CreateDocumentRequest? _defaultInstance;

  /// Required. The parent resource. For example:
  /// `projects/{project_id}/databases/{database_id}/documents` or
  /// `projects/{project_id}/databases/{database_id}/documents/chatrooms/{chatroom_id}`
  @$pb.TagNumber(1)
  $core.String get parent => $_getSZ(0);
  @$pb.TagNumber(1)
  set parent($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasParent() => $_has(0);
  @$pb.TagNumber(1)
  void clearParent() => clearField(1);

  /// Required. The collection ID, relative to `parent`, to list. For example:
  /// `chatrooms`.
  @$pb.TagNumber(2)
  $core.String get collectionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set collectionId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCollectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCollectionId() => clearField(2);

  ///  The client-assigned document ID to use for this document.
  ///
  ///  Optional. If not specified, an ID will be assigned by the service.
  @$pb.TagNumber(3)
  $core.String get documentId => $_getSZ(2);
  @$pb.TagNumber(3)
  set documentId($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDocumentId() => $_has(2);
  @$pb.TagNumber(3)
  void clearDocumentId() => clearField(3);

  /// Required. The document to create. `name` must not be set.
  @$pb.TagNumber(4)
  $1.Document get document => $_getN(3);
  @$pb.TagNumber(4)
  set document($1.Document v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDocument() => $_has(3);
  @$pb.TagNumber(4)
  void clearDocument() => clearField(4);
  @$pb.TagNumber(4)
  $1.Document ensureDocument() => $_ensure(3);

  ///  The fields to return. If not set, returns all fields.
  ///
  ///  If the document has a field that is not present in this mask, that field
  ///  will not be returned in the response.
  @$pb.TagNumber(5)
  $3.DocumentMask get mask => $_getN(4);
  @$pb.TagNumber(5)
  set mask($3.DocumentMask v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasMask() => $_has(4);
  @$pb.TagNumber(5)
  void clearMask() => clearField(5);
  @$pb.TagNumber(5)
  $3.DocumentMask ensureMask() => $_ensure(4);
}

/// The request for
/// [Firestore.UpdateDocument][google.firestore.v1.Firestore.UpdateDocument].
class UpdateDocumentRequest extends $pb.GeneratedMessage {
  factory UpdateDocumentRequest({
    $1.Document? document,
    $3.DocumentMask? updateMask,
    $3.DocumentMask? mask,
    $3.Precondition? currentDocument,
  }) {
    final $result = create();
    if (document != null) {
      $result.document = document;
    }
    if (updateMask != null) {
      $result.updateMask = updateMask;
    }
    if (mask != null) {
      $result.mask = mask;
    }
    if (currentDocument != null) {
      $result.currentDocument = currentDocument;
    }
    return $result;
  }
  UpdateDocumentRequest._() : super();
  factory UpdateDocumentRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateDocumentRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateDocumentRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOM<$1.Document>(1, _omitFieldNames ? '' : 'document',
        subBuilder: $1.Document.create)
    ..aOM<$3.DocumentMask>(2, _omitFieldNames ? '' : 'updateMask',
        subBuilder: $3.DocumentMask.create)
    ..aOM<$3.DocumentMask>(3, _omitFieldNames ? '' : 'mask',
        subBuilder: $3.DocumentMask.create)
    ..aOM<$3.Precondition>(4, _omitFieldNames ? '' : 'currentDocument',
        subBuilder: $3.Precondition.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateDocumentRequest clone() =>
      UpdateDocumentRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateDocumentRequest copyWith(
          void Function(UpdateDocumentRequest) updates) =>
      super.copyWith((message) => updates(message as UpdateDocumentRequest))
          as UpdateDocumentRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateDocumentRequest create() => UpdateDocumentRequest._();
  UpdateDocumentRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateDocumentRequest> createRepeated() =>
      $pb.PbList<UpdateDocumentRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateDocumentRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateDocumentRequest>(create);
  static UpdateDocumentRequest? _defaultInstance;

  /// Required. The updated document.
  /// Creates the document if it does not already exist.
  @$pb.TagNumber(1)
  $1.Document get document => $_getN(0);
  @$pb.TagNumber(1)
  set document($1.Document v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDocument() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocument() => clearField(1);
  @$pb.TagNumber(1)
  $1.Document ensureDocument() => $_ensure(0);

  ///  The fields to update.
  ///  None of the field paths in the mask may contain a reserved name.
  ///
  ///  If the document exists on the server and has fields not referenced in the
  ///  mask, they are left unchanged.
  ///  Fields referenced in the mask, but not present in the input document, are
  ///  deleted from the document on the server.
  @$pb.TagNumber(2)
  $3.DocumentMask get updateMask => $_getN(1);
  @$pb.TagNumber(2)
  set updateMask($3.DocumentMask v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUpdateMask() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateMask() => clearField(2);
  @$pb.TagNumber(2)
  $3.DocumentMask ensureUpdateMask() => $_ensure(1);

  ///  The fields to return. If not set, returns all fields.
  ///
  ///  If the document has a field that is not present in this mask, that field
  ///  will not be returned in the response.
  @$pb.TagNumber(3)
  $3.DocumentMask get mask => $_getN(2);
  @$pb.TagNumber(3)
  set mask($3.DocumentMask v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMask() => $_has(2);
  @$pb.TagNumber(3)
  void clearMask() => clearField(3);
  @$pb.TagNumber(3)
  $3.DocumentMask ensureMask() => $_ensure(2);

  /// An optional precondition on the document.
  /// The request will fail if this is set and not met by the target document.
  @$pb.TagNumber(4)
  $3.Precondition get currentDocument => $_getN(3);
  @$pb.TagNumber(4)
  set currentDocument($3.Precondition v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasCurrentDocument() => $_has(3);
  @$pb.TagNumber(4)
  void clearCurrentDocument() => clearField(4);
  @$pb.TagNumber(4)
  $3.Precondition ensureCurrentDocument() => $_ensure(3);
}

/// The request for
/// [Firestore.DeleteDocument][google.firestore.v1.Firestore.DeleteDocument].
class DeleteDocumentRequest extends $pb.GeneratedMessage {
  factory DeleteDocumentRequest({
    $core.String? name,
    $3.Precondition? currentDocument,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (currentDocument != null) {
      $result.currentDocument = currentDocument;
    }
    return $result;
  }
  DeleteDocumentRequest._() : super();
  factory DeleteDocumentRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteDocumentRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteDocumentRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<$3.Precondition>(2, _omitFieldNames ? '' : 'currentDocument',
        subBuilder: $3.Precondition.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteDocumentRequest clone() =>
      DeleteDocumentRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteDocumentRequest copyWith(
          void Function(DeleteDocumentRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteDocumentRequest))
          as DeleteDocumentRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteDocumentRequest create() => DeleteDocumentRequest._();
  DeleteDocumentRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteDocumentRequest> createRepeated() =>
      $pb.PbList<DeleteDocumentRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteDocumentRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteDocumentRequest>(create);
  static DeleteDocumentRequest? _defaultInstance;

  /// Required. The resource name of the Document to delete. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// An optional precondition on the document.
  /// The request will fail if this is set and not met by the target document.
  @$pb.TagNumber(2)
  $3.Precondition get currentDocument => $_getN(1);
  @$pb.TagNumber(2)
  set currentDocument($3.Precondition v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCurrentDocument() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrentDocument() => clearField(2);
  @$pb.TagNumber(2)
  $3.Precondition ensureCurrentDocument() => $_ensure(1);
}

enum BatchGetDocumentsRequest_ConsistencySelector {
  transaction,
  newTransaction,
  readTime,
  notSet
}

/// The request for
/// [Firestore.BatchGetDocuments][google.firestore.v1.Firestore.BatchGetDocuments].
class BatchGetDocumentsRequest extends $pb.GeneratedMessage {
  factory BatchGetDocumentsRequest({
    $core.String? database,
    $core.Iterable<$core.String>? documents,
    $3.DocumentMask? mask,
    $core.List<$core.int>? transaction,
    $3.TransactionOptions? newTransaction,
    $4.Timestamp? readTime,
  }) {
    final $result = create();
    if (database != null) {
      $result.database = database;
    }
    if (documents != null) {
      $result.documents.addAll(documents);
    }
    if (mask != null) {
      $result.mask = mask;
    }
    if (transaction != null) {
      $result.transaction = transaction;
    }
    if (newTransaction != null) {
      $result.newTransaction = newTransaction;
    }
    if (readTime != null) {
      $result.readTime = readTime;
    }
    return $result;
  }
  BatchGetDocumentsRequest._() : super();
  factory BatchGetDocumentsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BatchGetDocumentsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core
      .Map<$core.int, BatchGetDocumentsRequest_ConsistencySelector>
      _BatchGetDocumentsRequest_ConsistencySelectorByTag = {
    4: BatchGetDocumentsRequest_ConsistencySelector.transaction,
    5: BatchGetDocumentsRequest_ConsistencySelector.newTransaction,
    7: BatchGetDocumentsRequest_ConsistencySelector.readTime,
    0: BatchGetDocumentsRequest_ConsistencySelector.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BatchGetDocumentsRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [4, 5, 7])
    ..aOS(1, _omitFieldNames ? '' : 'database')
    ..pPS(2, _omitFieldNames ? '' : 'documents')
    ..aOM<$3.DocumentMask>(3, _omitFieldNames ? '' : 'mask',
        subBuilder: $3.DocumentMask.create)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'transaction', $pb.PbFieldType.OY)
    ..aOM<$3.TransactionOptions>(5, _omitFieldNames ? '' : 'newTransaction',
        subBuilder: $3.TransactionOptions.create)
    ..aOM<$4.Timestamp>(7, _omitFieldNames ? '' : 'readTime',
        subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BatchGetDocumentsRequest clone() =>
      BatchGetDocumentsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BatchGetDocumentsRequest copyWith(
          void Function(BatchGetDocumentsRequest) updates) =>
      super.copyWith((message) => updates(message as BatchGetDocumentsRequest))
          as BatchGetDocumentsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchGetDocumentsRequest create() => BatchGetDocumentsRequest._();
  BatchGetDocumentsRequest createEmptyInstance() => create();
  static $pb.PbList<BatchGetDocumentsRequest> createRepeated() =>
      $pb.PbList<BatchGetDocumentsRequest>();
  @$core.pragma('dart2js:noInline')
  static BatchGetDocumentsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatchGetDocumentsRequest>(create);
  static BatchGetDocumentsRequest? _defaultInstance;

  BatchGetDocumentsRequest_ConsistencySelector whichConsistencySelector() =>
      _BatchGetDocumentsRequest_ConsistencySelectorByTag[$_whichOneof(0)]!;
  void clearConsistencySelector() => clearField($_whichOneof(0));

  /// Required. The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  @$pb.TagNumber(1)
  $core.String get database => $_getSZ(0);
  @$pb.TagNumber(1)
  set database($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDatabase() => $_has(0);
  @$pb.TagNumber(1)
  void clearDatabase() => clearField(1);

  /// The names of the documents to retrieve. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// The request will fail if any of the document is not a child resource of the
  /// given `database`. Duplicate names will be elided.
  @$pb.TagNumber(2)
  $core.List<$core.String> get documents => $_getList(1);

  ///  The fields to return. If not set, returns all fields.
  ///
  ///  If a document has a field that is not present in this mask, that field will
  ///  not be returned in the response.
  @$pb.TagNumber(3)
  $3.DocumentMask get mask => $_getN(2);
  @$pb.TagNumber(3)
  set mask($3.DocumentMask v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMask() => $_has(2);
  @$pb.TagNumber(3)
  void clearMask() => clearField(3);
  @$pb.TagNumber(3)
  $3.DocumentMask ensureMask() => $_ensure(2);

  /// Reads documents in a transaction.
  @$pb.TagNumber(4)
  $core.List<$core.int> get transaction => $_getN(3);
  @$pb.TagNumber(4)
  set transaction($core.List<$core.int> v) {
    $_setBytes(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasTransaction() => $_has(3);
  @$pb.TagNumber(4)
  void clearTransaction() => clearField(4);

  /// Starts a new transaction and reads the documents.
  /// Defaults to a read-only transaction.
  /// The new transaction ID will be returned as the first response in the
  /// stream.
  @$pb.TagNumber(5)
  $3.TransactionOptions get newTransaction => $_getN(4);
  @$pb.TagNumber(5)
  set newTransaction($3.TransactionOptions v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasNewTransaction() => $_has(4);
  @$pb.TagNumber(5)
  void clearNewTransaction() => clearField(5);
  @$pb.TagNumber(5)
  $3.TransactionOptions ensureNewTransaction() => $_ensure(4);

  ///  Reads documents as they were at the given time.
  ///
  ///  This must be a microsecond precision timestamp within the past one hour,
  ///  or if Point-in-Time Recovery is enabled, can additionally be a whole
  ///  minute timestamp within the past 7 days.
  @$pb.TagNumber(7)
  $4.Timestamp get readTime => $_getN(5);
  @$pb.TagNumber(7)
  set readTime($4.Timestamp v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasReadTime() => $_has(5);
  @$pb.TagNumber(7)
  void clearReadTime() => clearField(7);
  @$pb.TagNumber(7)
  $4.Timestamp ensureReadTime() => $_ensure(5);
}

enum BatchGetDocumentsResponse_Result { found, missing, notSet }

/// The streamed response for
/// [Firestore.BatchGetDocuments][google.firestore.v1.Firestore.BatchGetDocuments].
class BatchGetDocumentsResponse extends $pb.GeneratedMessage {
  factory BatchGetDocumentsResponse({
    $1.Document? found,
    $core.String? missing,
    $core.List<$core.int>? transaction,
    $4.Timestamp? readTime,
  }) {
    final $result = create();
    if (found != null) {
      $result.found = found;
    }
    if (missing != null) {
      $result.missing = missing;
    }
    if (transaction != null) {
      $result.transaction = transaction;
    }
    if (readTime != null) {
      $result.readTime = readTime;
    }
    return $result;
  }
  BatchGetDocumentsResponse._() : super();
  factory BatchGetDocumentsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BatchGetDocumentsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, BatchGetDocumentsResponse_Result>
      _BatchGetDocumentsResponse_ResultByTag = {
    1: BatchGetDocumentsResponse_Result.found,
    2: BatchGetDocumentsResponse_Result.missing,
    0: BatchGetDocumentsResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BatchGetDocumentsResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$1.Document>(1, _omitFieldNames ? '' : 'found',
        subBuilder: $1.Document.create)
    ..aOS(2, _omitFieldNames ? '' : 'missing')
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'transaction', $pb.PbFieldType.OY)
    ..aOM<$4.Timestamp>(4, _omitFieldNames ? '' : 'readTime',
        subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BatchGetDocumentsResponse clone() =>
      BatchGetDocumentsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BatchGetDocumentsResponse copyWith(
          void Function(BatchGetDocumentsResponse) updates) =>
      super.copyWith((message) => updates(message as BatchGetDocumentsResponse))
          as BatchGetDocumentsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchGetDocumentsResponse create() => BatchGetDocumentsResponse._();
  BatchGetDocumentsResponse createEmptyInstance() => create();
  static $pb.PbList<BatchGetDocumentsResponse> createRepeated() =>
      $pb.PbList<BatchGetDocumentsResponse>();
  @$core.pragma('dart2js:noInline')
  static BatchGetDocumentsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatchGetDocumentsResponse>(create);
  static BatchGetDocumentsResponse? _defaultInstance;

  BatchGetDocumentsResponse_Result whichResult() =>
      _BatchGetDocumentsResponse_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  /// A document that was requested.
  @$pb.TagNumber(1)
  $1.Document get found => $_getN(0);
  @$pb.TagNumber(1)
  set found($1.Document v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFound() => $_has(0);
  @$pb.TagNumber(1)
  void clearFound() => clearField(1);
  @$pb.TagNumber(1)
  $1.Document ensureFound() => $_ensure(0);

  /// A document name that was requested but does not exist. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  @$pb.TagNumber(2)
  $core.String get missing => $_getSZ(1);
  @$pb.TagNumber(2)
  set missing($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMissing() => $_has(1);
  @$pb.TagNumber(2)
  void clearMissing() => clearField(2);

  /// The transaction that was started as part of this request.
  /// Will only be set in the first response, and only if
  /// [BatchGetDocumentsRequest.new_transaction][google.firestore.v1.BatchGetDocumentsRequest.new_transaction]
  /// was set in the request.
  @$pb.TagNumber(3)
  $core.List<$core.int> get transaction => $_getN(2);
  @$pb.TagNumber(3)
  set transaction($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTransaction() => $_has(2);
  @$pb.TagNumber(3)
  void clearTransaction() => clearField(3);

  /// The time at which the document was read.
  /// This may be monotically increasing, in this case the previous documents in
  /// the result stream are guaranteed not to have changed between their
  /// read_time and this one.
  @$pb.TagNumber(4)
  $4.Timestamp get readTime => $_getN(3);
  @$pb.TagNumber(4)
  set readTime($4.Timestamp v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasReadTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearReadTime() => clearField(4);
  @$pb.TagNumber(4)
  $4.Timestamp ensureReadTime() => $_ensure(3);
}

/// The request for
/// [Firestore.BeginTransaction][google.firestore.v1.Firestore.BeginTransaction].
class BeginTransactionRequest extends $pb.GeneratedMessage {
  factory BeginTransactionRequest({
    $core.String? database,
    $3.TransactionOptions? options,
  }) {
    final $result = create();
    if (database != null) {
      $result.database = database;
    }
    if (options != null) {
      $result.options = options;
    }
    return $result;
  }
  BeginTransactionRequest._() : super();
  factory BeginTransactionRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BeginTransactionRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BeginTransactionRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'database')
    ..aOM<$3.TransactionOptions>(2, _omitFieldNames ? '' : 'options',
        subBuilder: $3.TransactionOptions.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BeginTransactionRequest clone() =>
      BeginTransactionRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BeginTransactionRequest copyWith(
          void Function(BeginTransactionRequest) updates) =>
      super.copyWith((message) => updates(message as BeginTransactionRequest))
          as BeginTransactionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BeginTransactionRequest create() => BeginTransactionRequest._();
  BeginTransactionRequest createEmptyInstance() => create();
  static $pb.PbList<BeginTransactionRequest> createRepeated() =>
      $pb.PbList<BeginTransactionRequest>();
  @$core.pragma('dart2js:noInline')
  static BeginTransactionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BeginTransactionRequest>(create);
  static BeginTransactionRequest? _defaultInstance;

  /// Required. The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  @$pb.TagNumber(1)
  $core.String get database => $_getSZ(0);
  @$pb.TagNumber(1)
  set database($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDatabase() => $_has(0);
  @$pb.TagNumber(1)
  void clearDatabase() => clearField(1);

  /// The options for the transaction.
  /// Defaults to a read-write transaction.
  @$pb.TagNumber(2)
  $3.TransactionOptions get options => $_getN(1);
  @$pb.TagNumber(2)
  set options($3.TransactionOptions v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOptions() => $_has(1);
  @$pb.TagNumber(2)
  void clearOptions() => clearField(2);
  @$pb.TagNumber(2)
  $3.TransactionOptions ensureOptions() => $_ensure(1);
}

/// The response for
/// [Firestore.BeginTransaction][google.firestore.v1.Firestore.BeginTransaction].
class BeginTransactionResponse extends $pb.GeneratedMessage {
  factory BeginTransactionResponse({
    $core.List<$core.int>? transaction,
  }) {
    final $result = create();
    if (transaction != null) {
      $result.transaction = transaction;
    }
    return $result;
  }
  BeginTransactionResponse._() : super();
  factory BeginTransactionResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BeginTransactionResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BeginTransactionResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'transaction', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BeginTransactionResponse clone() =>
      BeginTransactionResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BeginTransactionResponse copyWith(
          void Function(BeginTransactionResponse) updates) =>
      super.copyWith((message) => updates(message as BeginTransactionResponse))
          as BeginTransactionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BeginTransactionResponse create() => BeginTransactionResponse._();
  BeginTransactionResponse createEmptyInstance() => create();
  static $pb.PbList<BeginTransactionResponse> createRepeated() =>
      $pb.PbList<BeginTransactionResponse>();
  @$core.pragma('dart2js:noInline')
  static BeginTransactionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BeginTransactionResponse>(create);
  static BeginTransactionResponse? _defaultInstance;

  /// The transaction that was started.
  @$pb.TagNumber(1)
  $core.List<$core.int> get transaction => $_getN(0);
  @$pb.TagNumber(1)
  set transaction($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTransaction() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransaction() => clearField(1);
}

/// The request for [Firestore.Commit][google.firestore.v1.Firestore.Commit].
class CommitRequest extends $pb.GeneratedMessage {
  factory CommitRequest({
    $core.String? database,
    $core.Iterable<$5.Write>? writes,
    $core.List<$core.int>? transaction,
  }) {
    final $result = create();
    if (database != null) {
      $result.database = database;
    }
    if (writes != null) {
      $result.writes.addAll(writes);
    }
    if (transaction != null) {
      $result.transaction = transaction;
    }
    return $result;
  }
  CommitRequest._() : super();
  factory CommitRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CommitRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CommitRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'database')
    ..pc<$5.Write>(2, _omitFieldNames ? '' : 'writes', $pb.PbFieldType.PM,
        subBuilder: $5.Write.create)
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'transaction', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CommitRequest clone() => CommitRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CommitRequest copyWith(void Function(CommitRequest) updates) =>
      super.copyWith((message) => updates(message as CommitRequest))
          as CommitRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommitRequest create() => CommitRequest._();
  CommitRequest createEmptyInstance() => create();
  static $pb.PbList<CommitRequest> createRepeated() =>
      $pb.PbList<CommitRequest>();
  @$core.pragma('dart2js:noInline')
  static CommitRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CommitRequest>(create);
  static CommitRequest? _defaultInstance;

  /// Required. The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  @$pb.TagNumber(1)
  $core.String get database => $_getSZ(0);
  @$pb.TagNumber(1)
  set database($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDatabase() => $_has(0);
  @$pb.TagNumber(1)
  void clearDatabase() => clearField(1);

  ///  The writes to apply.
  ///
  ///  Always executed atomically and in order.
  @$pb.TagNumber(2)
  $core.List<$5.Write> get writes => $_getList(1);

  /// If set, applies all writes in this transaction, and commits it.
  @$pb.TagNumber(3)
  $core.List<$core.int> get transaction => $_getN(2);
  @$pb.TagNumber(3)
  set transaction($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTransaction() => $_has(2);
  @$pb.TagNumber(3)
  void clearTransaction() => clearField(3);
}

/// The response for [Firestore.Commit][google.firestore.v1.Firestore.Commit].
class CommitResponse extends $pb.GeneratedMessage {
  factory CommitResponse({
    $core.Iterable<$5.WriteResult>? writeResults,
    $4.Timestamp? commitTime,
  }) {
    final $result = create();
    if (writeResults != null) {
      $result.writeResults.addAll(writeResults);
    }
    if (commitTime != null) {
      $result.commitTime = commitTime;
    }
    return $result;
  }
  CommitResponse._() : super();
  factory CommitResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CommitResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CommitResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..pc<$5.WriteResult>(
        1, _omitFieldNames ? '' : 'writeResults', $pb.PbFieldType.PM,
        subBuilder: $5.WriteResult.create)
    ..aOM<$4.Timestamp>(2, _omitFieldNames ? '' : 'commitTime',
        subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CommitResponse clone() => CommitResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CommitResponse copyWith(void Function(CommitResponse) updates) =>
      super.copyWith((message) => updates(message as CommitResponse))
          as CommitResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommitResponse create() => CommitResponse._();
  CommitResponse createEmptyInstance() => create();
  static $pb.PbList<CommitResponse> createRepeated() =>
      $pb.PbList<CommitResponse>();
  @$core.pragma('dart2js:noInline')
  static CommitResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CommitResponse>(create);
  static CommitResponse? _defaultInstance;

  ///  The result of applying the writes.
  ///
  ///  This i-th write result corresponds to the i-th write in the
  ///  request.
  @$pb.TagNumber(1)
  $core.List<$5.WriteResult> get writeResults => $_getList(0);

  /// The time at which the commit occurred. Any read with an equal or greater
  /// `read_time` is guaranteed to see the effects of the commit.
  @$pb.TagNumber(2)
  $4.Timestamp get commitTime => $_getN(1);
  @$pb.TagNumber(2)
  set commitTime($4.Timestamp v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCommitTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommitTime() => clearField(2);
  @$pb.TagNumber(2)
  $4.Timestamp ensureCommitTime() => $_ensure(1);
}

/// The request for [Firestore.Rollback][google.firestore.v1.Firestore.Rollback].
class RollbackRequest extends $pb.GeneratedMessage {
  factory RollbackRequest({
    $core.String? database,
    $core.List<$core.int>? transaction,
  }) {
    final $result = create();
    if (database != null) {
      $result.database = database;
    }
    if (transaction != null) {
      $result.transaction = transaction;
    }
    return $result;
  }
  RollbackRequest._() : super();
  factory RollbackRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RollbackRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RollbackRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'database')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'transaction', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RollbackRequest clone() => RollbackRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RollbackRequest copyWith(void Function(RollbackRequest) updates) =>
      super.copyWith((message) => updates(message as RollbackRequest))
          as RollbackRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RollbackRequest create() => RollbackRequest._();
  RollbackRequest createEmptyInstance() => create();
  static $pb.PbList<RollbackRequest> createRepeated() =>
      $pb.PbList<RollbackRequest>();
  @$core.pragma('dart2js:noInline')
  static RollbackRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RollbackRequest>(create);
  static RollbackRequest? _defaultInstance;

  /// Required. The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  @$pb.TagNumber(1)
  $core.String get database => $_getSZ(0);
  @$pb.TagNumber(1)
  set database($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDatabase() => $_has(0);
  @$pb.TagNumber(1)
  void clearDatabase() => clearField(1);

  /// Required. The transaction to roll back.
  @$pb.TagNumber(2)
  $core.List<$core.int> get transaction => $_getN(1);
  @$pb.TagNumber(2)
  set transaction($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTransaction() => $_has(1);
  @$pb.TagNumber(2)
  void clearTransaction() => clearField(2);
}

enum RunQueryRequest_QueryType { structuredQuery, notSet }

enum RunQueryRequest_ConsistencySelector {
  transaction,
  newTransaction,
  readTime,
  notSet
}

/// The request for [Firestore.RunQuery][google.firestore.v1.Firestore.RunQuery].
class RunQueryRequest extends $pb.GeneratedMessage {
  factory RunQueryRequest({
    $core.String? parent,
    $6.StructuredQuery? structuredQuery,
    $core.List<$core.int>? transaction,
    $3.TransactionOptions? newTransaction,
    $4.Timestamp? readTime,
  }) {
    final $result = create();
    if (parent != null) {
      $result.parent = parent;
    }
    if (structuredQuery != null) {
      $result.structuredQuery = structuredQuery;
    }
    if (transaction != null) {
      $result.transaction = transaction;
    }
    if (newTransaction != null) {
      $result.newTransaction = newTransaction;
    }
    if (readTime != null) {
      $result.readTime = readTime;
    }
    return $result;
  }
  RunQueryRequest._() : super();
  factory RunQueryRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RunQueryRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, RunQueryRequest_QueryType>
      _RunQueryRequest_QueryTypeByTag = {
    2: RunQueryRequest_QueryType.structuredQuery,
    0: RunQueryRequest_QueryType.notSet
  };
  static const $core.Map<$core.int, RunQueryRequest_ConsistencySelector>
      _RunQueryRequest_ConsistencySelectorByTag = {
    5: RunQueryRequest_ConsistencySelector.transaction,
    6: RunQueryRequest_ConsistencySelector.newTransaction,
    7: RunQueryRequest_ConsistencySelector.readTime,
    0: RunQueryRequest_ConsistencySelector.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RunQueryRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [2])
    ..oo(1, [5, 6, 7])
    ..aOS(1, _omitFieldNames ? '' : 'parent')
    ..aOM<$6.StructuredQuery>(2, _omitFieldNames ? '' : 'structuredQuery',
        subBuilder: $6.StructuredQuery.create)
    ..a<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'transaction', $pb.PbFieldType.OY)
    ..aOM<$3.TransactionOptions>(6, _omitFieldNames ? '' : 'newTransaction',
        subBuilder: $3.TransactionOptions.create)
    ..aOM<$4.Timestamp>(7, _omitFieldNames ? '' : 'readTime',
        subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RunQueryRequest clone() => RunQueryRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RunQueryRequest copyWith(void Function(RunQueryRequest) updates) =>
      super.copyWith((message) => updates(message as RunQueryRequest))
          as RunQueryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RunQueryRequest create() => RunQueryRequest._();
  RunQueryRequest createEmptyInstance() => create();
  static $pb.PbList<RunQueryRequest> createRepeated() =>
      $pb.PbList<RunQueryRequest>();
  @$core.pragma('dart2js:noInline')
  static RunQueryRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RunQueryRequest>(create);
  static RunQueryRequest? _defaultInstance;

  RunQueryRequest_QueryType whichQueryType() =>
      _RunQueryRequest_QueryTypeByTag[$_whichOneof(0)]!;
  void clearQueryType() => clearField($_whichOneof(0));

  RunQueryRequest_ConsistencySelector whichConsistencySelector() =>
      _RunQueryRequest_ConsistencySelectorByTag[$_whichOneof(1)]!;
  void clearConsistencySelector() => clearField($_whichOneof(1));

  /// Required. The parent resource name. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents` or
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// For example:
  /// `projects/my-project/databases/my-database/documents` or
  /// `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`
  @$pb.TagNumber(1)
  $core.String get parent => $_getSZ(0);
  @$pb.TagNumber(1)
  set parent($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasParent() => $_has(0);
  @$pb.TagNumber(1)
  void clearParent() => clearField(1);

  /// A structured query.
  @$pb.TagNumber(2)
  $6.StructuredQuery get structuredQuery => $_getN(1);
  @$pb.TagNumber(2)
  set structuredQuery($6.StructuredQuery v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStructuredQuery() => $_has(1);
  @$pb.TagNumber(2)
  void clearStructuredQuery() => clearField(2);
  @$pb.TagNumber(2)
  $6.StructuredQuery ensureStructuredQuery() => $_ensure(1);

  ///  Run the query within an already active transaction.
  ///
  ///  The value here is the opaque transaction ID to execute the query in.
  @$pb.TagNumber(5)
  $core.List<$core.int> get transaction => $_getN(2);
  @$pb.TagNumber(5)
  set transaction($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasTransaction() => $_has(2);
  @$pb.TagNumber(5)
  void clearTransaction() => clearField(5);

  /// Starts a new transaction and reads the documents.
  /// Defaults to a read-only transaction.
  /// The new transaction ID will be returned as the first response in the
  /// stream.
  @$pb.TagNumber(6)
  $3.TransactionOptions get newTransaction => $_getN(3);
  @$pb.TagNumber(6)
  set newTransaction($3.TransactionOptions v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasNewTransaction() => $_has(3);
  @$pb.TagNumber(6)
  void clearNewTransaction() => clearField(6);
  @$pb.TagNumber(6)
  $3.TransactionOptions ensureNewTransaction() => $_ensure(3);

  ///  Reads documents as they were at the given time.
  ///
  ///  This must be a microsecond precision timestamp within the past one hour,
  ///  or if Point-in-Time Recovery is enabled, can additionally be a whole
  ///  minute timestamp within the past 7 days.
  @$pb.TagNumber(7)
  $4.Timestamp get readTime => $_getN(4);
  @$pb.TagNumber(7)
  set readTime($4.Timestamp v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasReadTime() => $_has(4);
  @$pb.TagNumber(7)
  void clearReadTime() => clearField(7);
  @$pb.TagNumber(7)
  $4.Timestamp ensureReadTime() => $_ensure(4);
}

enum RunQueryResponse_ContinuationSelector { done, notSet }

/// The response for
/// [Firestore.RunQuery][google.firestore.v1.Firestore.RunQuery].
class RunQueryResponse extends $pb.GeneratedMessage {
  factory RunQueryResponse({
    $1.Document? document,
    $core.List<$core.int>? transaction,
    $4.Timestamp? readTime,
    $core.int? skippedResults,
    $core.bool? done,
  }) {
    final $result = create();
    if (document != null) {
      $result.document = document;
    }
    if (transaction != null) {
      $result.transaction = transaction;
    }
    if (readTime != null) {
      $result.readTime = readTime;
    }
    if (skippedResults != null) {
      $result.skippedResults = skippedResults;
    }
    if (done != null) {
      $result.done = done;
    }
    return $result;
  }
  RunQueryResponse._() : super();
  factory RunQueryResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RunQueryResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, RunQueryResponse_ContinuationSelector>
      _RunQueryResponse_ContinuationSelectorByTag = {
    6: RunQueryResponse_ContinuationSelector.done,
    0: RunQueryResponse_ContinuationSelector.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RunQueryResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [6])
    ..aOM<$1.Document>(1, _omitFieldNames ? '' : 'document',
        subBuilder: $1.Document.create)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'transaction', $pb.PbFieldType.OY)
    ..aOM<$4.Timestamp>(3, _omitFieldNames ? '' : 'readTime',
        subBuilder: $4.Timestamp.create)
    ..a<$core.int>(
        4, _omitFieldNames ? '' : 'skippedResults', $pb.PbFieldType.O3)
    ..aOB(6, _omitFieldNames ? '' : 'done')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RunQueryResponse clone() => RunQueryResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RunQueryResponse copyWith(void Function(RunQueryResponse) updates) =>
      super.copyWith((message) => updates(message as RunQueryResponse))
          as RunQueryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RunQueryResponse create() => RunQueryResponse._();
  RunQueryResponse createEmptyInstance() => create();
  static $pb.PbList<RunQueryResponse> createRepeated() =>
      $pb.PbList<RunQueryResponse>();
  @$core.pragma('dart2js:noInline')
  static RunQueryResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RunQueryResponse>(create);
  static RunQueryResponse? _defaultInstance;

  RunQueryResponse_ContinuationSelector whichContinuationSelector() =>
      _RunQueryResponse_ContinuationSelectorByTag[$_whichOneof(0)]!;
  void clearContinuationSelector() => clearField($_whichOneof(0));

  /// A query result, not set when reporting partial progress.
  @$pb.TagNumber(1)
  $1.Document get document => $_getN(0);
  @$pb.TagNumber(1)
  set document($1.Document v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDocument() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocument() => clearField(1);
  @$pb.TagNumber(1)
  $1.Document ensureDocument() => $_ensure(0);

  /// The transaction that was started as part of this request.
  /// Can only be set in the first response, and only if
  /// [RunQueryRequest.new_transaction][google.firestore.v1.RunQueryRequest.new_transaction]
  /// was set in the request. If set, no other fields will be set in this
  /// response.
  @$pb.TagNumber(2)
  $core.List<$core.int> get transaction => $_getN(1);
  @$pb.TagNumber(2)
  set transaction($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTransaction() => $_has(1);
  @$pb.TagNumber(2)
  void clearTransaction() => clearField(2);

  ///  The time at which the document was read. This may be monotonically
  ///  increasing; in this case, the previous documents in the result stream are
  ///  guaranteed not to have changed between their `read_time` and this one.
  ///
  ///  If the query returns no results, a response with `read_time` and no
  ///  `document` will be sent, and this represents the time at which the query
  ///  was run.
  @$pb.TagNumber(3)
  $4.Timestamp get readTime => $_getN(2);
  @$pb.TagNumber(3)
  set readTime($4.Timestamp v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasReadTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearReadTime() => clearField(3);
  @$pb.TagNumber(3)
  $4.Timestamp ensureReadTime() => $_ensure(2);

  /// The number of results that have been skipped due to an offset between
  /// the last response and the current response.
  @$pb.TagNumber(4)
  $core.int get skippedResults => $_getIZ(3);
  @$pb.TagNumber(4)
  set skippedResults($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSkippedResults() => $_has(3);
  @$pb.TagNumber(4)
  void clearSkippedResults() => clearField(4);

  /// If present, Firestore has completely finished the request and no more
  /// documents will be returned.
  @$pb.TagNumber(6)
  $core.bool get done => $_getBF(4);
  @$pb.TagNumber(6)
  set done($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasDone() => $_has(4);
  @$pb.TagNumber(6)
  void clearDone() => clearField(6);
}

enum RunAggregationQueryRequest_QueryType { structuredAggregationQuery, notSet }

enum RunAggregationQueryRequest_ConsistencySelector {
  transaction,
  newTransaction,
  readTime,
  notSet
}

/// The request for
/// [Firestore.RunAggregationQuery][google.firestore.v1.Firestore.RunAggregationQuery].
class RunAggregationQueryRequest extends $pb.GeneratedMessage {
  factory RunAggregationQueryRequest({
    $core.String? parent,
    $6.StructuredAggregationQuery? structuredAggregationQuery,
    $core.List<$core.int>? transaction,
    $3.TransactionOptions? newTransaction,
    $4.Timestamp? readTime,
  }) {
    final $result = create();
    if (parent != null) {
      $result.parent = parent;
    }
    if (structuredAggregationQuery != null) {
      $result.structuredAggregationQuery = structuredAggregationQuery;
    }
    if (transaction != null) {
      $result.transaction = transaction;
    }
    if (newTransaction != null) {
      $result.newTransaction = newTransaction;
    }
    if (readTime != null) {
      $result.readTime = readTime;
    }
    return $result;
  }
  RunAggregationQueryRequest._() : super();
  factory RunAggregationQueryRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RunAggregationQueryRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, RunAggregationQueryRequest_QueryType>
      _RunAggregationQueryRequest_QueryTypeByTag = {
    2: RunAggregationQueryRequest_QueryType.structuredAggregationQuery,
    0: RunAggregationQueryRequest_QueryType.notSet
  };
  static const $core
      .Map<$core.int, RunAggregationQueryRequest_ConsistencySelector>
      _RunAggregationQueryRequest_ConsistencySelectorByTag = {
    4: RunAggregationQueryRequest_ConsistencySelector.transaction,
    5: RunAggregationQueryRequest_ConsistencySelector.newTransaction,
    6: RunAggregationQueryRequest_ConsistencySelector.readTime,
    0: RunAggregationQueryRequest_ConsistencySelector.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RunAggregationQueryRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [2])
    ..oo(1, [4, 5, 6])
    ..aOS(1, _omitFieldNames ? '' : 'parent')
    ..aOM<$6.StructuredAggregationQuery>(
        2, _omitFieldNames ? '' : 'structuredAggregationQuery',
        subBuilder: $6.StructuredAggregationQuery.create)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'transaction', $pb.PbFieldType.OY)
    ..aOM<$3.TransactionOptions>(5, _omitFieldNames ? '' : 'newTransaction',
        subBuilder: $3.TransactionOptions.create)
    ..aOM<$4.Timestamp>(6, _omitFieldNames ? '' : 'readTime',
        subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RunAggregationQueryRequest clone() =>
      RunAggregationQueryRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RunAggregationQueryRequest copyWith(
          void Function(RunAggregationQueryRequest) updates) =>
      super.copyWith(
              (message) => updates(message as RunAggregationQueryRequest))
          as RunAggregationQueryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RunAggregationQueryRequest create() => RunAggregationQueryRequest._();
  RunAggregationQueryRequest createEmptyInstance() => create();
  static $pb.PbList<RunAggregationQueryRequest> createRepeated() =>
      $pb.PbList<RunAggregationQueryRequest>();
  @$core.pragma('dart2js:noInline')
  static RunAggregationQueryRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RunAggregationQueryRequest>(create);
  static RunAggregationQueryRequest? _defaultInstance;

  RunAggregationQueryRequest_QueryType whichQueryType() =>
      _RunAggregationQueryRequest_QueryTypeByTag[$_whichOneof(0)]!;
  void clearQueryType() => clearField($_whichOneof(0));

  RunAggregationQueryRequest_ConsistencySelector whichConsistencySelector() =>
      _RunAggregationQueryRequest_ConsistencySelectorByTag[$_whichOneof(1)]!;
  void clearConsistencySelector() => clearField($_whichOneof(1));

  /// Required. The parent resource name. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents` or
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// For example:
  /// `projects/my-project/databases/my-database/documents` or
  /// `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`
  @$pb.TagNumber(1)
  $core.String get parent => $_getSZ(0);
  @$pb.TagNumber(1)
  set parent($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasParent() => $_has(0);
  @$pb.TagNumber(1)
  void clearParent() => clearField(1);

  /// An aggregation query.
  @$pb.TagNumber(2)
  $6.StructuredAggregationQuery get structuredAggregationQuery => $_getN(1);
  @$pb.TagNumber(2)
  set structuredAggregationQuery($6.StructuredAggregationQuery v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStructuredAggregationQuery() => $_has(1);
  @$pb.TagNumber(2)
  void clearStructuredAggregationQuery() => clearField(2);
  @$pb.TagNumber(2)
  $6.StructuredAggregationQuery ensureStructuredAggregationQuery() =>
      $_ensure(1);

  ///  Run the aggregation within an already active transaction.
  ///
  ///  The value here is the opaque transaction ID to execute the query in.
  @$pb.TagNumber(4)
  $core.List<$core.int> get transaction => $_getN(2);
  @$pb.TagNumber(4)
  set transaction($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasTransaction() => $_has(2);
  @$pb.TagNumber(4)
  void clearTransaction() => clearField(4);

  ///  Starts a new transaction as part of the query, defaulting to read-only.
  ///
  ///  The new transaction ID will be returned as the first response in the
  ///  stream.
  @$pb.TagNumber(5)
  $3.TransactionOptions get newTransaction => $_getN(3);
  @$pb.TagNumber(5)
  set newTransaction($3.TransactionOptions v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasNewTransaction() => $_has(3);
  @$pb.TagNumber(5)
  void clearNewTransaction() => clearField(5);
  @$pb.TagNumber(5)
  $3.TransactionOptions ensureNewTransaction() => $_ensure(3);

  ///  Executes the query at the given timestamp.
  ///
  ///  This must be a microsecond precision timestamp within the past one hour,
  ///  or if Point-in-Time Recovery is enabled, can additionally be a whole
  ///  minute timestamp within the past 7 days.
  @$pb.TagNumber(6)
  $4.Timestamp get readTime => $_getN(4);
  @$pb.TagNumber(6)
  set readTime($4.Timestamp v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasReadTime() => $_has(4);
  @$pb.TagNumber(6)
  void clearReadTime() => clearField(6);
  @$pb.TagNumber(6)
  $4.Timestamp ensureReadTime() => $_ensure(4);
}

/// The response for
/// [Firestore.RunAggregationQuery][google.firestore.v1.Firestore.RunAggregationQuery].
class RunAggregationQueryResponse extends $pb.GeneratedMessage {
  factory RunAggregationQueryResponse({
    $7.AggregationResult? result,
    $core.List<$core.int>? transaction,
    $4.Timestamp? readTime,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    if (transaction != null) {
      $result.transaction = transaction;
    }
    if (readTime != null) {
      $result.readTime = readTime;
    }
    return $result;
  }
  RunAggregationQueryResponse._() : super();
  factory RunAggregationQueryResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RunAggregationQueryResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RunAggregationQueryResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOM<$7.AggregationResult>(1, _omitFieldNames ? '' : 'result',
        subBuilder: $7.AggregationResult.create)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'transaction', $pb.PbFieldType.OY)
    ..aOM<$4.Timestamp>(3, _omitFieldNames ? '' : 'readTime',
        subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RunAggregationQueryResponse clone() =>
      RunAggregationQueryResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RunAggregationQueryResponse copyWith(
          void Function(RunAggregationQueryResponse) updates) =>
      super.copyWith(
              (message) => updates(message as RunAggregationQueryResponse))
          as RunAggregationQueryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RunAggregationQueryResponse create() =>
      RunAggregationQueryResponse._();
  RunAggregationQueryResponse createEmptyInstance() => create();
  static $pb.PbList<RunAggregationQueryResponse> createRepeated() =>
      $pb.PbList<RunAggregationQueryResponse>();
  @$core.pragma('dart2js:noInline')
  static RunAggregationQueryResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RunAggregationQueryResponse>(create);
  static RunAggregationQueryResponse? _defaultInstance;

  ///  A single aggregation result.
  ///
  ///  Not present when reporting partial progress.
  @$pb.TagNumber(1)
  $7.AggregationResult get result => $_getN(0);
  @$pb.TagNumber(1)
  set result($7.AggregationResult v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
  @$pb.TagNumber(1)
  $7.AggregationResult ensureResult() => $_ensure(0);

  ///  The transaction that was started as part of this request.
  ///
  ///  Only present on the first response when the request requested to start
  ///  a new transaction.
  @$pb.TagNumber(2)
  $core.List<$core.int> get transaction => $_getN(1);
  @$pb.TagNumber(2)
  set transaction($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTransaction() => $_has(1);
  @$pb.TagNumber(2)
  void clearTransaction() => clearField(2);

  ///  The time at which the aggregate result was computed. This is always
  ///  monotonically increasing; in this case, the previous AggregationResult in
  ///  the result stream are guaranteed not to have changed between their
  ///  `read_time` and this one.
  ///
  ///  If the query returns no results, a response with `read_time` and no
  ///  `result` will be sent, and this represents the time at which the query
  ///  was run.
  @$pb.TagNumber(3)
  $4.Timestamp get readTime => $_getN(2);
  @$pb.TagNumber(3)
  set readTime($4.Timestamp v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasReadTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearReadTime() => clearField(3);
  @$pb.TagNumber(3)
  $4.Timestamp ensureReadTime() => $_ensure(2);
}

enum PartitionQueryRequest_QueryType { structuredQuery, notSet }

enum PartitionQueryRequest_ConsistencySelector { readTime, notSet }

/// The request for
/// [Firestore.PartitionQuery][google.firestore.v1.Firestore.PartitionQuery].
class PartitionQueryRequest extends $pb.GeneratedMessage {
  factory PartitionQueryRequest({
    $core.String? parent,
    $6.StructuredQuery? structuredQuery,
    $fixnum.Int64? partitionCount,
    $core.String? pageToken,
    $core.int? pageSize,
    $4.Timestamp? readTime,
  }) {
    final $result = create();
    if (parent != null) {
      $result.parent = parent;
    }
    if (structuredQuery != null) {
      $result.structuredQuery = structuredQuery;
    }
    if (partitionCount != null) {
      $result.partitionCount = partitionCount;
    }
    if (pageToken != null) {
      $result.pageToken = pageToken;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (readTime != null) {
      $result.readTime = readTime;
    }
    return $result;
  }
  PartitionQueryRequest._() : super();
  factory PartitionQueryRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PartitionQueryRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, PartitionQueryRequest_QueryType>
      _PartitionQueryRequest_QueryTypeByTag = {
    2: PartitionQueryRequest_QueryType.structuredQuery,
    0: PartitionQueryRequest_QueryType.notSet
  };
  static const $core.Map<$core.int, PartitionQueryRequest_ConsistencySelector>
      _PartitionQueryRequest_ConsistencySelectorByTag = {
    6: PartitionQueryRequest_ConsistencySelector.readTime,
    0: PartitionQueryRequest_ConsistencySelector.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PartitionQueryRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [2])
    ..oo(1, [6])
    ..aOS(1, _omitFieldNames ? '' : 'parent')
    ..aOM<$6.StructuredQuery>(2, _omitFieldNames ? '' : 'structuredQuery',
        subBuilder: $6.StructuredQuery.create)
    ..aInt64(3, _omitFieldNames ? '' : 'partitionCount')
    ..aOS(4, _omitFieldNames ? '' : 'pageToken')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..aOM<$4.Timestamp>(6, _omitFieldNames ? '' : 'readTime',
        subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PartitionQueryRequest clone() =>
      PartitionQueryRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PartitionQueryRequest copyWith(
          void Function(PartitionQueryRequest) updates) =>
      super.copyWith((message) => updates(message as PartitionQueryRequest))
          as PartitionQueryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PartitionQueryRequest create() => PartitionQueryRequest._();
  PartitionQueryRequest createEmptyInstance() => create();
  static $pb.PbList<PartitionQueryRequest> createRepeated() =>
      $pb.PbList<PartitionQueryRequest>();
  @$core.pragma('dart2js:noInline')
  static PartitionQueryRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PartitionQueryRequest>(create);
  static PartitionQueryRequest? _defaultInstance;

  PartitionQueryRequest_QueryType whichQueryType() =>
      _PartitionQueryRequest_QueryTypeByTag[$_whichOneof(0)]!;
  void clearQueryType() => clearField($_whichOneof(0));

  PartitionQueryRequest_ConsistencySelector whichConsistencySelector() =>
      _PartitionQueryRequest_ConsistencySelectorByTag[$_whichOneof(1)]!;
  void clearConsistencySelector() => clearField($_whichOneof(1));

  /// Required. The parent resource name. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents`.
  /// Document resource names are not supported; only database resource names
  /// can be specified.
  @$pb.TagNumber(1)
  $core.String get parent => $_getSZ(0);
  @$pb.TagNumber(1)
  set parent($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasParent() => $_has(0);
  @$pb.TagNumber(1)
  void clearParent() => clearField(1);

  /// A structured query.
  /// Query must specify collection with all descendants and be ordered by name
  /// ascending. Other filters, order bys, limits, offsets, and start/end
  /// cursors are not supported.
  @$pb.TagNumber(2)
  $6.StructuredQuery get structuredQuery => $_getN(1);
  @$pb.TagNumber(2)
  set structuredQuery($6.StructuredQuery v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStructuredQuery() => $_has(1);
  @$pb.TagNumber(2)
  void clearStructuredQuery() => clearField(2);
  @$pb.TagNumber(2)
  $6.StructuredQuery ensureStructuredQuery() => $_ensure(1);

  ///  The desired maximum number of partition points.
  ///  The partitions may be returned across multiple pages of results.
  ///  The number must be positive. The actual number of partitions
  ///  returned may be fewer.
  ///
  ///  For example, this may be set to one fewer than the number of parallel
  ///  queries to be run, or in running a data pipeline job, one fewer than the
  ///  number of workers or compute instances available.
  @$pb.TagNumber(3)
  $fixnum.Int64 get partitionCount => $_getI64(2);
  @$pb.TagNumber(3)
  set partitionCount($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPartitionCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearPartitionCount() => clearField(3);

  ///  The `next_page_token` value returned from a previous call to
  ///  PartitionQuery that may be used to get an additional set of results.
  ///  There are no ordering guarantees between sets of results. Thus, using
  ///  multiple sets of results will require merging the different result sets.
  ///
  ///  For example, two subsequent calls using a page_token may return:
  ///
  ///   * cursor B, cursor M, cursor Q
  ///   * cursor A, cursor U, cursor W
  ///
  ///  To obtain a complete result set ordered with respect to the results of the
  ///  query supplied to PartitionQuery, the results sets should be merged:
  ///  cursor A, cursor B, cursor M, cursor Q, cursor U, cursor W
  @$pb.TagNumber(4)
  $core.String get pageToken => $_getSZ(3);
  @$pb.TagNumber(4)
  set pageToken($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPageToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearPageToken() => clearField(4);

  ///  The maximum number of partitions to return in this call, subject to
  ///  `partition_count`.
  ///
  ///  For example, if `partition_count` = 10 and `page_size` = 8, the first call
  ///  to PartitionQuery will return up to 8 partitions and a `next_page_token`
  ///  if more results exist. A second call to PartitionQuery will return up to
  ///  2 partitions, to complete the total of 10 specified in `partition_count`.
  @$pb.TagNumber(5)
  $core.int get pageSize => $_getIZ(4);
  @$pb.TagNumber(5)
  set pageSize($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasPageSize() => $_has(4);
  @$pb.TagNumber(5)
  void clearPageSize() => clearField(5);

  ///  Reads documents as they were at the given time.
  ///
  ///  This must be a microsecond precision timestamp within the past one hour,
  ///  or if Point-in-Time Recovery is enabled, can additionally be a whole
  ///  minute timestamp within the past 7 days.
  @$pb.TagNumber(6)
  $4.Timestamp get readTime => $_getN(5);
  @$pb.TagNumber(6)
  set readTime($4.Timestamp v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasReadTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearReadTime() => clearField(6);
  @$pb.TagNumber(6)
  $4.Timestamp ensureReadTime() => $_ensure(5);
}

/// The response for
/// [Firestore.PartitionQuery][google.firestore.v1.Firestore.PartitionQuery].
class PartitionQueryResponse extends $pb.GeneratedMessage {
  factory PartitionQueryResponse({
    $core.Iterable<$6.Cursor>? partitions,
    $core.String? nextPageToken,
  }) {
    final $result = create();
    if (partitions != null) {
      $result.partitions.addAll(partitions);
    }
    if (nextPageToken != null) {
      $result.nextPageToken = nextPageToken;
    }
    return $result;
  }
  PartitionQueryResponse._() : super();
  factory PartitionQueryResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PartitionQueryResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PartitionQueryResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..pc<$6.Cursor>(1, _omitFieldNames ? '' : 'partitions', $pb.PbFieldType.PM,
        subBuilder: $6.Cursor.create)
    ..aOS(2, _omitFieldNames ? '' : 'nextPageToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PartitionQueryResponse clone() =>
      PartitionQueryResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PartitionQueryResponse copyWith(
          void Function(PartitionQueryResponse) updates) =>
      super.copyWith((message) => updates(message as PartitionQueryResponse))
          as PartitionQueryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PartitionQueryResponse create() => PartitionQueryResponse._();
  PartitionQueryResponse createEmptyInstance() => create();
  static $pb.PbList<PartitionQueryResponse> createRepeated() =>
      $pb.PbList<PartitionQueryResponse>();
  @$core.pragma('dart2js:noInline')
  static PartitionQueryResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PartitionQueryResponse>(create);
  static PartitionQueryResponse? _defaultInstance;

  ///  Partition results.
  ///  Each partition is a split point that can be used by RunQuery as a starting
  ///  or end point for the query results. The RunQuery requests must be made with
  ///  the same query supplied to this PartitionQuery request. The partition
  ///  cursors will be ordered according to same ordering as the results of the
  ///  query supplied to PartitionQuery.
  ///
  ///  For example, if a PartitionQuery request returns partition cursors A and B,
  ///  running the following three queries will return the entire result set of
  ///  the original query:
  ///
  ///   * query, end_at A
  ///   * query, start_at A, end_at B
  ///   * query, start_at B
  ///
  ///  An empty result may indicate that the query has too few results to be
  ///  partitioned, or that the query is not yet supported for partitioning.
  @$pb.TagNumber(1)
  $core.List<$6.Cursor> get partitions => $_getList(0);

  /// A page token that may be used to request an additional set of results, up
  /// to the number specified by `partition_count` in the PartitionQuery request.
  /// If blank, there are no more results.
  @$pb.TagNumber(2)
  $core.String get nextPageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextPageToken($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNextPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextPageToken() => clearField(2);
}

///  The request for [Firestore.Write][google.firestore.v1.Firestore.Write].
///
///  The first request creates a stream, or resumes an existing one from a token.
///
///  When creating a new stream, the server replies with a response containing
///  only an ID and a token, to use in the next request.
///
///  When resuming a stream, the server first streams any responses later than the
///  given token, then a response containing only an up-to-date token, to use in
///  the next request.
class WriteRequest extends $pb.GeneratedMessage {
  factory WriteRequest({
    $core.String? database,
    $core.String? streamId,
    $core.Iterable<$5.Write>? writes,
    $core.List<$core.int>? streamToken,
    $core.Map<$core.String, $core.String>? labels,
  }) {
    final $result = create();
    if (database != null) {
      $result.database = database;
    }
    if (streamId != null) {
      $result.streamId = streamId;
    }
    if (writes != null) {
      $result.writes.addAll(writes);
    }
    if (streamToken != null) {
      $result.streamToken = streamToken;
    }
    if (labels != null) {
      $result.labels.addAll(labels);
    }
    return $result;
  }
  WriteRequest._() : super();
  factory WriteRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WriteRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WriteRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'database')
    ..aOS(2, _omitFieldNames ? '' : 'streamId')
    ..pc<$5.Write>(3, _omitFieldNames ? '' : 'writes', $pb.PbFieldType.PM,
        subBuilder: $5.Write.create)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'streamToken', $pb.PbFieldType.OY)
    ..m<$core.String, $core.String>(5, _omitFieldNames ? '' : 'labels',
        entryClassName: 'WriteRequest.LabelsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('google.firestore.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WriteRequest clone() => WriteRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WriteRequest copyWith(void Function(WriteRequest) updates) =>
      super.copyWith((message) => updates(message as WriteRequest))
          as WriteRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WriteRequest create() => WriteRequest._();
  WriteRequest createEmptyInstance() => create();
  static $pb.PbList<WriteRequest> createRepeated() =>
      $pb.PbList<WriteRequest>();
  @$core.pragma('dart2js:noInline')
  static WriteRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WriteRequest>(create);
  static WriteRequest? _defaultInstance;

  /// Required. The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  /// This is only required in the first message.
  @$pb.TagNumber(1)
  $core.String get database => $_getSZ(0);
  @$pb.TagNumber(1)
  set database($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDatabase() => $_has(0);
  @$pb.TagNumber(1)
  void clearDatabase() => clearField(1);

  /// The ID of the write stream to resume.
  /// This may only be set in the first message. When left empty, a new write
  /// stream will be created.
  @$pb.TagNumber(2)
  $core.String get streamId => $_getSZ(1);
  @$pb.TagNumber(2)
  set streamId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStreamId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStreamId() => clearField(2);

  ///  The writes to apply.
  ///
  ///  Always executed atomically and in order.
  ///  This must be empty on the first request.
  ///  This may be empty on the last request.
  ///  This must not be empty on all other requests.
  @$pb.TagNumber(3)
  $core.List<$5.Write> get writes => $_getList(2);

  ///  A stream token that was previously sent by the server.
  ///
  ///  The client should set this field to the token from the most recent
  ///  [WriteResponse][google.firestore.v1.WriteResponse] it has received. This
  ///  acknowledges that the client has received responses up to this token. After
  ///  sending this token, earlier tokens may not be used anymore.
  ///
  ///  The server may close the stream if there are too many unacknowledged
  ///  responses.
  ///
  ///  Leave this field unset when creating a new stream. To resume a stream at
  ///  a specific point, set this field and the `stream_id` field.
  ///
  ///  Leave this field unset when creating a new stream.
  @$pb.TagNumber(4)
  $core.List<$core.int> get streamToken => $_getN(3);
  @$pb.TagNumber(4)
  set streamToken($core.List<$core.int> v) {
    $_setBytes(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasStreamToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearStreamToken() => clearField(4);

  /// Labels associated with this write request.
  @$pb.TagNumber(5)
  $core.Map<$core.String, $core.String> get labels => $_getMap(4);
}

/// The response for [Firestore.Write][google.firestore.v1.Firestore.Write].
class WriteResponse extends $pb.GeneratedMessage {
  factory WriteResponse({
    $core.String? streamId,
    $core.List<$core.int>? streamToken,
    $core.Iterable<$5.WriteResult>? writeResults,
    $4.Timestamp? commitTime,
  }) {
    final $result = create();
    if (streamId != null) {
      $result.streamId = streamId;
    }
    if (streamToken != null) {
      $result.streamToken = streamToken;
    }
    if (writeResults != null) {
      $result.writeResults.addAll(writeResults);
    }
    if (commitTime != null) {
      $result.commitTime = commitTime;
    }
    return $result;
  }
  WriteResponse._() : super();
  factory WriteResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WriteResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WriteResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'streamId')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'streamToken', $pb.PbFieldType.OY)
    ..pc<$5.WriteResult>(
        3, _omitFieldNames ? '' : 'writeResults', $pb.PbFieldType.PM,
        subBuilder: $5.WriteResult.create)
    ..aOM<$4.Timestamp>(4, _omitFieldNames ? '' : 'commitTime',
        subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WriteResponse clone() => WriteResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WriteResponse copyWith(void Function(WriteResponse) updates) =>
      super.copyWith((message) => updates(message as WriteResponse))
          as WriteResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WriteResponse create() => WriteResponse._();
  WriteResponse createEmptyInstance() => create();
  static $pb.PbList<WriteResponse> createRepeated() =>
      $pb.PbList<WriteResponse>();
  @$core.pragma('dart2js:noInline')
  static WriteResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WriteResponse>(create);
  static WriteResponse? _defaultInstance;

  /// The ID of the stream.
  /// Only set on the first message, when a new stream was created.
  @$pb.TagNumber(1)
  $core.String get streamId => $_getSZ(0);
  @$pb.TagNumber(1)
  set streamId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStreamId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStreamId() => clearField(1);

  ///  A token that represents the position of this response in the stream.
  ///  This can be used by a client to resume the stream at this point.
  ///
  ///  This field is always set.
  @$pb.TagNumber(2)
  $core.List<$core.int> get streamToken => $_getN(1);
  @$pb.TagNumber(2)
  set streamToken($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStreamToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearStreamToken() => clearField(2);

  ///  The result of applying the writes.
  ///
  ///  This i-th write result corresponds to the i-th write in the
  ///  request.
  @$pb.TagNumber(3)
  $core.List<$5.WriteResult> get writeResults => $_getList(2);

  /// The time at which the commit occurred. Any read with an equal or greater
  /// `read_time` is guaranteed to see the effects of the write.
  @$pb.TagNumber(4)
  $4.Timestamp get commitTime => $_getN(3);
  @$pb.TagNumber(4)
  set commitTime($4.Timestamp v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasCommitTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearCommitTime() => clearField(4);
  @$pb.TagNumber(4)
  $4.Timestamp ensureCommitTime() => $_ensure(3);
}

enum ListenRequest_TargetChange { addTarget, removeTarget, notSet }

/// A request for [Firestore.Listen][google.firestore.v1.Firestore.Listen]
class ListenRequest extends $pb.GeneratedMessage {
  factory ListenRequest({
    $core.String? database,
    Target? addTarget,
    $core.int? removeTarget,
    $core.Map<$core.String, $core.String>? labels,
  }) {
    final $result = create();
    if (database != null) {
      $result.database = database;
    }
    if (addTarget != null) {
      $result.addTarget = addTarget;
    }
    if (removeTarget != null) {
      $result.removeTarget = removeTarget;
    }
    if (labels != null) {
      $result.labels.addAll(labels);
    }
    return $result;
  }
  ListenRequest._() : super();
  factory ListenRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListenRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ListenRequest_TargetChange>
      _ListenRequest_TargetChangeByTag = {
    2: ListenRequest_TargetChange.addTarget,
    3: ListenRequest_TargetChange.removeTarget,
    0: ListenRequest_TargetChange.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListenRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOS(1, _omitFieldNames ? '' : 'database')
    ..aOM<Target>(2, _omitFieldNames ? '' : 'addTarget',
        subBuilder: Target.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'removeTarget', $pb.PbFieldType.O3)
    ..m<$core.String, $core.String>(4, _omitFieldNames ? '' : 'labels',
        entryClassName: 'ListenRequest.LabelsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('google.firestore.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListenRequest clone() => ListenRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListenRequest copyWith(void Function(ListenRequest) updates) =>
      super.copyWith((message) => updates(message as ListenRequest))
          as ListenRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListenRequest create() => ListenRequest._();
  ListenRequest createEmptyInstance() => create();
  static $pb.PbList<ListenRequest> createRepeated() =>
      $pb.PbList<ListenRequest>();
  @$core.pragma('dart2js:noInline')
  static ListenRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListenRequest>(create);
  static ListenRequest? _defaultInstance;

  ListenRequest_TargetChange whichTargetChange() =>
      _ListenRequest_TargetChangeByTag[$_whichOneof(0)]!;
  void clearTargetChange() => clearField($_whichOneof(0));

  /// Required. The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  @$pb.TagNumber(1)
  $core.String get database => $_getSZ(0);
  @$pb.TagNumber(1)
  set database($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDatabase() => $_has(0);
  @$pb.TagNumber(1)
  void clearDatabase() => clearField(1);

  /// A target to add to this stream.
  @$pb.TagNumber(2)
  Target get addTarget => $_getN(1);
  @$pb.TagNumber(2)
  set addTarget(Target v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAddTarget() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddTarget() => clearField(2);
  @$pb.TagNumber(2)
  Target ensureAddTarget() => $_ensure(1);

  /// The ID of a target to remove from this stream.
  @$pb.TagNumber(3)
  $core.int get removeTarget => $_getIZ(2);
  @$pb.TagNumber(3)
  set removeTarget($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasRemoveTarget() => $_has(2);
  @$pb.TagNumber(3)
  void clearRemoveTarget() => clearField(3);

  /// Labels associated with this target change.
  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.String> get labels => $_getMap(3);
}

enum ListenResponse_ResponseType {
  targetChange,
  documentChange,
  documentDelete,
  filter,
  documentRemove,
  notSet
}

/// The response for [Firestore.Listen][google.firestore.v1.Firestore.Listen].
class ListenResponse extends $pb.GeneratedMessage {
  factory ListenResponse({
    TargetChange? targetChange,
    $5.DocumentChange? documentChange,
    $5.DocumentDelete? documentDelete,
    $5.ExistenceFilter? filter,
    $5.DocumentRemove? documentRemove,
  }) {
    final $result = create();
    if (targetChange != null) {
      $result.targetChange = targetChange;
    }
    if (documentChange != null) {
      $result.documentChange = documentChange;
    }
    if (documentDelete != null) {
      $result.documentDelete = documentDelete;
    }
    if (filter != null) {
      $result.filter = filter;
    }
    if (documentRemove != null) {
      $result.documentRemove = documentRemove;
    }
    return $result;
  }
  ListenResponse._() : super();
  factory ListenResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListenResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ListenResponse_ResponseType>
      _ListenResponse_ResponseTypeByTag = {
    2: ListenResponse_ResponseType.targetChange,
    3: ListenResponse_ResponseType.documentChange,
    4: ListenResponse_ResponseType.documentDelete,
    5: ListenResponse_ResponseType.filter,
    6: ListenResponse_ResponseType.documentRemove,
    0: ListenResponse_ResponseType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListenResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5, 6])
    ..aOM<TargetChange>(2, _omitFieldNames ? '' : 'targetChange',
        subBuilder: TargetChange.create)
    ..aOM<$5.DocumentChange>(3, _omitFieldNames ? '' : 'documentChange',
        subBuilder: $5.DocumentChange.create)
    ..aOM<$5.DocumentDelete>(4, _omitFieldNames ? '' : 'documentDelete',
        subBuilder: $5.DocumentDelete.create)
    ..aOM<$5.ExistenceFilter>(5, _omitFieldNames ? '' : 'filter',
        subBuilder: $5.ExistenceFilter.create)
    ..aOM<$5.DocumentRemove>(6, _omitFieldNames ? '' : 'documentRemove',
        subBuilder: $5.DocumentRemove.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListenResponse clone() => ListenResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListenResponse copyWith(void Function(ListenResponse) updates) =>
      super.copyWith((message) => updates(message as ListenResponse))
          as ListenResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListenResponse create() => ListenResponse._();
  ListenResponse createEmptyInstance() => create();
  static $pb.PbList<ListenResponse> createRepeated() =>
      $pb.PbList<ListenResponse>();
  @$core.pragma('dart2js:noInline')
  static ListenResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListenResponse>(create);
  static ListenResponse? _defaultInstance;

  ListenResponse_ResponseType whichResponseType() =>
      _ListenResponse_ResponseTypeByTag[$_whichOneof(0)]!;
  void clearResponseType() => clearField($_whichOneof(0));

  /// Targets have changed.
  @$pb.TagNumber(2)
  TargetChange get targetChange => $_getN(0);
  @$pb.TagNumber(2)
  set targetChange(TargetChange v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTargetChange() => $_has(0);
  @$pb.TagNumber(2)
  void clearTargetChange() => clearField(2);
  @$pb.TagNumber(2)
  TargetChange ensureTargetChange() => $_ensure(0);

  /// A [Document][google.firestore.v1.Document] has changed.
  @$pb.TagNumber(3)
  $5.DocumentChange get documentChange => $_getN(1);
  @$pb.TagNumber(3)
  set documentChange($5.DocumentChange v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDocumentChange() => $_has(1);
  @$pb.TagNumber(3)
  void clearDocumentChange() => clearField(3);
  @$pb.TagNumber(3)
  $5.DocumentChange ensureDocumentChange() => $_ensure(1);

  /// A [Document][google.firestore.v1.Document] has been deleted.
  @$pb.TagNumber(4)
  $5.DocumentDelete get documentDelete => $_getN(2);
  @$pb.TagNumber(4)
  set documentDelete($5.DocumentDelete v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDocumentDelete() => $_has(2);
  @$pb.TagNumber(4)
  void clearDocumentDelete() => clearField(4);
  @$pb.TagNumber(4)
  $5.DocumentDelete ensureDocumentDelete() => $_ensure(2);

  ///  A filter to apply to the set of documents previously returned for the
  ///  given target.
  ///
  ///  Returned when documents may have been removed from the given target, but
  ///  the exact documents are unknown.
  @$pb.TagNumber(5)
  $5.ExistenceFilter get filter => $_getN(3);
  @$pb.TagNumber(5)
  set filter($5.ExistenceFilter v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasFilter() => $_has(3);
  @$pb.TagNumber(5)
  void clearFilter() => clearField(5);
  @$pb.TagNumber(5)
  $5.ExistenceFilter ensureFilter() => $_ensure(3);

  /// A [Document][google.firestore.v1.Document] has been removed from a target
  /// (because it is no longer relevant to that target).
  @$pb.TagNumber(6)
  $5.DocumentRemove get documentRemove => $_getN(4);
  @$pb.TagNumber(6)
  set documentRemove($5.DocumentRemove v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasDocumentRemove() => $_has(4);
  @$pb.TagNumber(6)
  void clearDocumentRemove() => clearField(6);
  @$pb.TagNumber(6)
  $5.DocumentRemove ensureDocumentRemove() => $_ensure(4);
}

/// A target specified by a set of documents names.
class Target_DocumentsTarget extends $pb.GeneratedMessage {
  factory Target_DocumentsTarget({
    $core.Iterable<$core.String>? documents,
  }) {
    final $result = create();
    if (documents != null) {
      $result.documents.addAll(documents);
    }
    return $result;
  }
  Target_DocumentsTarget._() : super();
  factory Target_DocumentsTarget.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Target_DocumentsTarget.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Target.DocumentsTarget',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..pPS(2, _omitFieldNames ? '' : 'documents')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Target_DocumentsTarget clone() =>
      Target_DocumentsTarget()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Target_DocumentsTarget copyWith(
          void Function(Target_DocumentsTarget) updates) =>
      super.copyWith((message) => updates(message as Target_DocumentsTarget))
          as Target_DocumentsTarget;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Target_DocumentsTarget create() => Target_DocumentsTarget._();
  Target_DocumentsTarget createEmptyInstance() => create();
  static $pb.PbList<Target_DocumentsTarget> createRepeated() =>
      $pb.PbList<Target_DocumentsTarget>();
  @$core.pragma('dart2js:noInline')
  static Target_DocumentsTarget getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Target_DocumentsTarget>(create);
  static Target_DocumentsTarget? _defaultInstance;

  /// The names of the documents to retrieve. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// The request will fail if any of the document is not a child resource of
  /// the given `database`. Duplicate names will be elided.
  @$pb.TagNumber(2)
  $core.List<$core.String> get documents => $_getList(0);
}

enum Target_QueryTarget_QueryType { structuredQuery, notSet }

/// A target specified by a query.
class Target_QueryTarget extends $pb.GeneratedMessage {
  factory Target_QueryTarget({
    $core.String? parent,
    $6.StructuredQuery? structuredQuery,
  }) {
    final $result = create();
    if (parent != null) {
      $result.parent = parent;
    }
    if (structuredQuery != null) {
      $result.structuredQuery = structuredQuery;
    }
    return $result;
  }
  Target_QueryTarget._() : super();
  factory Target_QueryTarget.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Target_QueryTarget.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Target_QueryTarget_QueryType>
      _Target_QueryTarget_QueryTypeByTag = {
    2: Target_QueryTarget_QueryType.structuredQuery,
    0: Target_QueryTarget_QueryType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Target.QueryTarget',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [2])
    ..aOS(1, _omitFieldNames ? '' : 'parent')
    ..aOM<$6.StructuredQuery>(2, _omitFieldNames ? '' : 'structuredQuery',
        subBuilder: $6.StructuredQuery.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Target_QueryTarget clone() => Target_QueryTarget()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Target_QueryTarget copyWith(void Function(Target_QueryTarget) updates) =>
      super.copyWith((message) => updates(message as Target_QueryTarget))
          as Target_QueryTarget;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Target_QueryTarget create() => Target_QueryTarget._();
  Target_QueryTarget createEmptyInstance() => create();
  static $pb.PbList<Target_QueryTarget> createRepeated() =>
      $pb.PbList<Target_QueryTarget>();
  @$core.pragma('dart2js:noInline')
  static Target_QueryTarget getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Target_QueryTarget>(create);
  static Target_QueryTarget? _defaultInstance;

  Target_QueryTarget_QueryType whichQueryType() =>
      _Target_QueryTarget_QueryTypeByTag[$_whichOneof(0)]!;
  void clearQueryType() => clearField($_whichOneof(0));

  /// The parent resource name. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents` or
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// For example:
  /// `projects/my-project/databases/my-database/documents` or
  /// `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`
  @$pb.TagNumber(1)
  $core.String get parent => $_getSZ(0);
  @$pb.TagNumber(1)
  set parent($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasParent() => $_has(0);
  @$pb.TagNumber(1)
  void clearParent() => clearField(1);

  /// A structured query.
  @$pb.TagNumber(2)
  $6.StructuredQuery get structuredQuery => $_getN(1);
  @$pb.TagNumber(2)
  set structuredQuery($6.StructuredQuery v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStructuredQuery() => $_has(1);
  @$pb.TagNumber(2)
  void clearStructuredQuery() => clearField(2);
  @$pb.TagNumber(2)
  $6.StructuredQuery ensureStructuredQuery() => $_ensure(1);
}

enum Target_TargetType { query, documents, notSet }

enum Target_ResumeType { resumeToken, readTime, notSet }

/// A specification of a set of documents to listen to.
class Target extends $pb.GeneratedMessage {
  factory Target({
    Target_QueryTarget? query,
    Target_DocumentsTarget? documents,
    $core.List<$core.int>? resumeToken,
    $core.int? targetId,
    $core.bool? once,
    $4.Timestamp? readTime,
    $8.Int32Value? expectedCount,
  }) {
    final $result = create();
    if (query != null) {
      $result.query = query;
    }
    if (documents != null) {
      $result.documents = documents;
    }
    if (resumeToken != null) {
      $result.resumeToken = resumeToken;
    }
    if (targetId != null) {
      $result.targetId = targetId;
    }
    if (once != null) {
      $result.once = once;
    }
    if (readTime != null) {
      $result.readTime = readTime;
    }
    if (expectedCount != null) {
      $result.expectedCount = expectedCount;
    }
    return $result;
  }
  Target._() : super();
  factory Target.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Target.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Target_TargetType> _Target_TargetTypeByTag =
      {
    2: Target_TargetType.query,
    3: Target_TargetType.documents,
    0: Target_TargetType.notSet
  };
  static const $core.Map<$core.int, Target_ResumeType> _Target_ResumeTypeByTag =
      {
    4: Target_ResumeType.resumeToken,
    11: Target_ResumeType.readTime,
    0: Target_ResumeType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Target',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..oo(1, [4, 11])
    ..aOM<Target_QueryTarget>(2, _omitFieldNames ? '' : 'query',
        subBuilder: Target_QueryTarget.create)
    ..aOM<Target_DocumentsTarget>(3, _omitFieldNames ? '' : 'documents',
        subBuilder: Target_DocumentsTarget.create)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'resumeToken', $pb.PbFieldType.OY)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'targetId', $pb.PbFieldType.O3)
    ..aOB(6, _omitFieldNames ? '' : 'once')
    ..aOM<$4.Timestamp>(11, _omitFieldNames ? '' : 'readTime',
        subBuilder: $4.Timestamp.create)
    ..aOM<$8.Int32Value>(12, _omitFieldNames ? '' : 'expectedCount',
        subBuilder: $8.Int32Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Target clone() => Target()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Target copyWith(void Function(Target) updates) =>
      super.copyWith((message) => updates(message as Target)) as Target;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Target create() => Target._();
  Target createEmptyInstance() => create();
  static $pb.PbList<Target> createRepeated() => $pb.PbList<Target>();
  @$core.pragma('dart2js:noInline')
  static Target getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Target>(create);
  static Target? _defaultInstance;

  Target_TargetType whichTargetType() =>
      _Target_TargetTypeByTag[$_whichOneof(0)]!;
  void clearTargetType() => clearField($_whichOneof(0));

  Target_ResumeType whichResumeType() =>
      _Target_ResumeTypeByTag[$_whichOneof(1)]!;
  void clearResumeType() => clearField($_whichOneof(1));

  /// A target specified by a query.
  @$pb.TagNumber(2)
  Target_QueryTarget get query => $_getN(0);
  @$pb.TagNumber(2)
  set query(Target_QueryTarget v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(2)
  void clearQuery() => clearField(2);
  @$pb.TagNumber(2)
  Target_QueryTarget ensureQuery() => $_ensure(0);

  /// A target specified by a set of document names.
  @$pb.TagNumber(3)
  Target_DocumentsTarget get documents => $_getN(1);
  @$pb.TagNumber(3)
  set documents(Target_DocumentsTarget v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDocuments() => $_has(1);
  @$pb.TagNumber(3)
  void clearDocuments() => clearField(3);
  @$pb.TagNumber(3)
  Target_DocumentsTarget ensureDocuments() => $_ensure(1);

  ///  A resume token from a prior
  ///  [TargetChange][google.firestore.v1.TargetChange] for an identical target.
  ///
  ///  Using a resume token with a different target is unsupported and may fail.
  @$pb.TagNumber(4)
  $core.List<$core.int> get resumeToken => $_getN(2);
  @$pb.TagNumber(4)
  set resumeToken($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasResumeToken() => $_has(2);
  @$pb.TagNumber(4)
  void clearResumeToken() => clearField(4);

  ///  The target ID that identifies the target on the stream. Must be a positive
  ///  number and non-zero.
  ///
  ///  If `target_id` is 0 (or unspecified), the server will assign an ID for this
  ///  target and return that in a `TargetChange::ADD` event. Once a target with
  ///  `target_id=0` is added, all subsequent targets must also have
  ///  `target_id=0`. If an `AddTarget` request with `target_id != 0` is
  ///  sent to the server after a target with `target_id=0` is added, the server
  ///  will immediately send a response with a `TargetChange::Remove` event.
  ///
  ///  Note that if the client sends multiple `AddTarget` requests
  ///  without an ID, the order of IDs returned in `TargetChage.target_ids` are
  ///  undefined. Therefore, clients should provide a target ID instead of relying
  ///  on the server to assign one.
  ///
  ///  If `target_id` is non-zero, there must not be an existing active target on
  ///  this stream with the same ID.
  @$pb.TagNumber(5)
  $core.int get targetId => $_getIZ(3);
  @$pb.TagNumber(5)
  set targetId($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasTargetId() => $_has(3);
  @$pb.TagNumber(5)
  void clearTargetId() => clearField(5);

  /// If the target should be removed once it is current and consistent.
  @$pb.TagNumber(6)
  $core.bool get once => $_getBF(4);
  @$pb.TagNumber(6)
  set once($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasOnce() => $_has(4);
  @$pb.TagNumber(6)
  void clearOnce() => clearField(6);

  ///  Start listening after a specific `read_time`.
  ///
  ///  The client must know the state of matching documents at this time.
  @$pb.TagNumber(11)
  $4.Timestamp get readTime => $_getN(5);
  @$pb.TagNumber(11)
  set readTime($4.Timestamp v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasReadTime() => $_has(5);
  @$pb.TagNumber(11)
  void clearReadTime() => clearField(11);
  @$pb.TagNumber(11)
  $4.Timestamp ensureReadTime() => $_ensure(5);

  ///  The number of documents that last matched the query at the resume token or
  ///  read time.
  ///
  ///  This value is only relevant when a `resume_type` is provided. This value
  ///  being present and greater than zero signals that the client wants
  ///  `ExistenceFilter.unchanged_names` to be included in the response.
  @$pb.TagNumber(12)
  $8.Int32Value get expectedCount => $_getN(6);
  @$pb.TagNumber(12)
  set expectedCount($8.Int32Value v) {
    setField(12, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasExpectedCount() => $_has(6);
  @$pb.TagNumber(12)
  void clearExpectedCount() => clearField(12);
  @$pb.TagNumber(12)
  $8.Int32Value ensureExpectedCount() => $_ensure(6);
}

/// Targets being watched have changed.
class TargetChange extends $pb.GeneratedMessage {
  factory TargetChange({
    TargetChange_TargetChangeType? targetChangeType,
    $core.Iterable<$core.int>? targetIds,
    $9.Status? cause,
    $core.List<$core.int>? resumeToken,
    $4.Timestamp? readTime,
  }) {
    final $result = create();
    if (targetChangeType != null) {
      $result.targetChangeType = targetChangeType;
    }
    if (targetIds != null) {
      $result.targetIds.addAll(targetIds);
    }
    if (cause != null) {
      $result.cause = cause;
    }
    if (resumeToken != null) {
      $result.resumeToken = resumeToken;
    }
    if (readTime != null) {
      $result.readTime = readTime;
    }
    return $result;
  }
  TargetChange._() : super();
  factory TargetChange.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TargetChange.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TargetChange',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..e<TargetChange_TargetChangeType>(
        1, _omitFieldNames ? '' : 'targetChangeType', $pb.PbFieldType.OE,
        defaultOrMaker: TargetChange_TargetChangeType.NO_CHANGE,
        valueOf: TargetChange_TargetChangeType.valueOf,
        enumValues: TargetChange_TargetChangeType.values)
    ..p<$core.int>(2, _omitFieldNames ? '' : 'targetIds', $pb.PbFieldType.K3)
    ..aOM<$9.Status>(3, _omitFieldNames ? '' : 'cause',
        subBuilder: $9.Status.create)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'resumeToken', $pb.PbFieldType.OY)
    ..aOM<$4.Timestamp>(6, _omitFieldNames ? '' : 'readTime',
        subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TargetChange clone() => TargetChange()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TargetChange copyWith(void Function(TargetChange) updates) =>
      super.copyWith((message) => updates(message as TargetChange))
          as TargetChange;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TargetChange create() => TargetChange._();
  TargetChange createEmptyInstance() => create();
  static $pb.PbList<TargetChange> createRepeated() =>
      $pb.PbList<TargetChange>();
  @$core.pragma('dart2js:noInline')
  static TargetChange getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TargetChange>(create);
  static TargetChange? _defaultInstance;

  /// The type of change that occurred.
  @$pb.TagNumber(1)
  TargetChange_TargetChangeType get targetChangeType => $_getN(0);
  @$pb.TagNumber(1)
  set targetChangeType(TargetChange_TargetChangeType v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTargetChangeType() => $_has(0);
  @$pb.TagNumber(1)
  void clearTargetChangeType() => clearField(1);

  ///  The target IDs of targets that have changed.
  ///
  ///  If empty, the change applies to all targets.
  ///
  ///  The order of the target IDs is not defined.
  @$pb.TagNumber(2)
  $core.List<$core.int> get targetIds => $_getList(1);

  /// The error that resulted in this change, if applicable.
  @$pb.TagNumber(3)
  $9.Status get cause => $_getN(2);
  @$pb.TagNumber(3)
  set cause($9.Status v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCause() => $_has(2);
  @$pb.TagNumber(3)
  void clearCause() => clearField(3);
  @$pb.TagNumber(3)
  $9.Status ensureCause() => $_ensure(2);

  ///  A token that can be used to resume the stream for the given `target_ids`,
  ///  or all targets if `target_ids` is empty.
  ///
  ///  Not set on every target change.
  @$pb.TagNumber(4)
  $core.List<$core.int> get resumeToken => $_getN(3);
  @$pb.TagNumber(4)
  set resumeToken($core.List<$core.int> v) {
    $_setBytes(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasResumeToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearResumeToken() => clearField(4);

  ///  The consistent `read_time` for the given `target_ids` (omitted when the
  ///  target_ids are not at a consistent snapshot).
  ///
  ///  The stream is guaranteed to send a `read_time` with `target_ids` empty
  ///  whenever the entire stream reaches a new consistent snapshot. ADD,
  ///  CURRENT, and RESET messages are guaranteed to (eventually) result in a
  ///  new consistent snapshot (while NO_CHANGE and REMOVE messages are not).
  ///
  ///  For a given stream, `read_time` is guaranteed to be monotonically
  ///  increasing.
  @$pb.TagNumber(6)
  $4.Timestamp get readTime => $_getN(4);
  @$pb.TagNumber(6)
  set readTime($4.Timestamp v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasReadTime() => $_has(4);
  @$pb.TagNumber(6)
  void clearReadTime() => clearField(6);
  @$pb.TagNumber(6)
  $4.Timestamp ensureReadTime() => $_ensure(4);
}

enum ListCollectionIdsRequest_ConsistencySelector { readTime, notSet }

/// The request for
/// [Firestore.ListCollectionIds][google.firestore.v1.Firestore.ListCollectionIds].
class ListCollectionIdsRequest extends $pb.GeneratedMessage {
  factory ListCollectionIdsRequest({
    $core.String? parent,
    $core.int? pageSize,
    $core.String? pageToken,
    $4.Timestamp? readTime,
  }) {
    final $result = create();
    if (parent != null) {
      $result.parent = parent;
    }
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (pageToken != null) {
      $result.pageToken = pageToken;
    }
    if (readTime != null) {
      $result.readTime = readTime;
    }
    return $result;
  }
  ListCollectionIdsRequest._() : super();
  factory ListCollectionIdsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListCollectionIdsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core
      .Map<$core.int, ListCollectionIdsRequest_ConsistencySelector>
      _ListCollectionIdsRequest_ConsistencySelectorByTag = {
    4: ListCollectionIdsRequest_ConsistencySelector.readTime,
    0: ListCollectionIdsRequest_ConsistencySelector.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListCollectionIdsRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [4])
    ..aOS(1, _omitFieldNames ? '' : 'parent')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'pageToken')
    ..aOM<$4.Timestamp>(4, _omitFieldNames ? '' : 'readTime',
        subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListCollectionIdsRequest clone() =>
      ListCollectionIdsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListCollectionIdsRequest copyWith(
          void Function(ListCollectionIdsRequest) updates) =>
      super.copyWith((message) => updates(message as ListCollectionIdsRequest))
          as ListCollectionIdsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListCollectionIdsRequest create() => ListCollectionIdsRequest._();
  ListCollectionIdsRequest createEmptyInstance() => create();
  static $pb.PbList<ListCollectionIdsRequest> createRepeated() =>
      $pb.PbList<ListCollectionIdsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListCollectionIdsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListCollectionIdsRequest>(create);
  static ListCollectionIdsRequest? _defaultInstance;

  ListCollectionIdsRequest_ConsistencySelector whichConsistencySelector() =>
      _ListCollectionIdsRequest_ConsistencySelectorByTag[$_whichOneof(0)]!;
  void clearConsistencySelector() => clearField($_whichOneof(0));

  /// Required. The parent document. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// For example:
  /// `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`
  @$pb.TagNumber(1)
  $core.String get parent => $_getSZ(0);
  @$pb.TagNumber(1)
  set parent($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasParent() => $_has(0);
  @$pb.TagNumber(1)
  void clearParent() => clearField(1);

  /// The maximum number of results to return.
  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  /// A page token. Must be a value from
  /// [ListCollectionIdsResponse][google.firestore.v1.ListCollectionIdsResponse].
  @$pb.TagNumber(3)
  $core.String get pageToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set pageToken($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPageToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearPageToken() => clearField(3);

  ///  Reads documents as they were at the given time.
  ///
  ///  This must be a microsecond precision timestamp within the past one hour,
  ///  or if Point-in-Time Recovery is enabled, can additionally be a whole
  ///  minute timestamp within the past 7 days.
  @$pb.TagNumber(4)
  $4.Timestamp get readTime => $_getN(3);
  @$pb.TagNumber(4)
  set readTime($4.Timestamp v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasReadTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearReadTime() => clearField(4);
  @$pb.TagNumber(4)
  $4.Timestamp ensureReadTime() => $_ensure(3);
}

/// The response from
/// [Firestore.ListCollectionIds][google.firestore.v1.Firestore.ListCollectionIds].
class ListCollectionIdsResponse extends $pb.GeneratedMessage {
  factory ListCollectionIdsResponse({
    $core.Iterable<$core.String>? collectionIds,
    $core.String? nextPageToken,
  }) {
    final $result = create();
    if (collectionIds != null) {
      $result.collectionIds.addAll(collectionIds);
    }
    if (nextPageToken != null) {
      $result.nextPageToken = nextPageToken;
    }
    return $result;
  }
  ListCollectionIdsResponse._() : super();
  factory ListCollectionIdsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListCollectionIdsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListCollectionIdsResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'collectionIds')
    ..aOS(2, _omitFieldNames ? '' : 'nextPageToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListCollectionIdsResponse clone() =>
      ListCollectionIdsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListCollectionIdsResponse copyWith(
          void Function(ListCollectionIdsResponse) updates) =>
      super.copyWith((message) => updates(message as ListCollectionIdsResponse))
          as ListCollectionIdsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListCollectionIdsResponse create() => ListCollectionIdsResponse._();
  ListCollectionIdsResponse createEmptyInstance() => create();
  static $pb.PbList<ListCollectionIdsResponse> createRepeated() =>
      $pb.PbList<ListCollectionIdsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListCollectionIdsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListCollectionIdsResponse>(create);
  static ListCollectionIdsResponse? _defaultInstance;

  /// The collection ids.
  @$pb.TagNumber(1)
  $core.List<$core.String> get collectionIds => $_getList(0);

  /// A page token that may be used to continue the list.
  @$pb.TagNumber(2)
  $core.String get nextPageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextPageToken($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNextPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextPageToken() => clearField(2);
}

/// The request for
/// [Firestore.BatchWrite][google.firestore.v1.Firestore.BatchWrite].
class BatchWriteRequest extends $pb.GeneratedMessage {
  factory BatchWriteRequest({
    $core.String? database,
    $core.Iterable<$5.Write>? writes,
    $core.Map<$core.String, $core.String>? labels,
  }) {
    final $result = create();
    if (database != null) {
      $result.database = database;
    }
    if (writes != null) {
      $result.writes.addAll(writes);
    }
    if (labels != null) {
      $result.labels.addAll(labels);
    }
    return $result;
  }
  BatchWriteRequest._() : super();
  factory BatchWriteRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BatchWriteRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BatchWriteRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'database')
    ..pc<$5.Write>(2, _omitFieldNames ? '' : 'writes', $pb.PbFieldType.PM,
        subBuilder: $5.Write.create)
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'labels',
        entryClassName: 'BatchWriteRequest.LabelsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('google.firestore.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BatchWriteRequest clone() => BatchWriteRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BatchWriteRequest copyWith(void Function(BatchWriteRequest) updates) =>
      super.copyWith((message) => updates(message as BatchWriteRequest))
          as BatchWriteRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchWriteRequest create() => BatchWriteRequest._();
  BatchWriteRequest createEmptyInstance() => create();
  static $pb.PbList<BatchWriteRequest> createRepeated() =>
      $pb.PbList<BatchWriteRequest>();
  @$core.pragma('dart2js:noInline')
  static BatchWriteRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatchWriteRequest>(create);
  static BatchWriteRequest? _defaultInstance;

  /// Required. The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  @$pb.TagNumber(1)
  $core.String get database => $_getSZ(0);
  @$pb.TagNumber(1)
  set database($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDatabase() => $_has(0);
  @$pb.TagNumber(1)
  void clearDatabase() => clearField(1);

  ///  The writes to apply.
  ///
  ///  Method does not apply writes atomically and does not guarantee ordering.
  ///  Each write succeeds or fails independently. You cannot write to the same
  ///  document more than once per request.
  @$pb.TagNumber(2)
  $core.List<$5.Write> get writes => $_getList(1);

  /// Labels associated with this batch write.
  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get labels => $_getMap(2);
}

/// The response from
/// [Firestore.BatchWrite][google.firestore.v1.Firestore.BatchWrite].
class BatchWriteResponse extends $pb.GeneratedMessage {
  factory BatchWriteResponse({
    $core.Iterable<$5.WriteResult>? writeResults,
    $core.Iterable<$9.Status>? status,
  }) {
    final $result = create();
    if (writeResults != null) {
      $result.writeResults.addAll(writeResults);
    }
    if (status != null) {
      $result.status.addAll(status);
    }
    return $result;
  }
  BatchWriteResponse._() : super();
  factory BatchWriteResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BatchWriteResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BatchWriteResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..pc<$5.WriteResult>(
        1, _omitFieldNames ? '' : 'writeResults', $pb.PbFieldType.PM,
        subBuilder: $5.WriteResult.create)
    ..pc<$9.Status>(2, _omitFieldNames ? '' : 'status', $pb.PbFieldType.PM,
        subBuilder: $9.Status.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BatchWriteResponse clone() => BatchWriteResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BatchWriteResponse copyWith(void Function(BatchWriteResponse) updates) =>
      super.copyWith((message) => updates(message as BatchWriteResponse))
          as BatchWriteResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchWriteResponse create() => BatchWriteResponse._();
  BatchWriteResponse createEmptyInstance() => create();
  static $pb.PbList<BatchWriteResponse> createRepeated() =>
      $pb.PbList<BatchWriteResponse>();
  @$core.pragma('dart2js:noInline')
  static BatchWriteResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatchWriteResponse>(create);
  static BatchWriteResponse? _defaultInstance;

  ///  The result of applying the writes.
  ///
  ///  This i-th write result corresponds to the i-th write in the
  ///  request.
  @$pb.TagNumber(1)
  $core.List<$5.WriteResult> get writeResults => $_getList(0);

  ///  The status of applying the writes.
  ///
  ///  This i-th write status corresponds to the i-th write in the
  ///  request.
  @$pb.TagNumber(2)
  $core.List<$9.Status> get status => $_getList(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');

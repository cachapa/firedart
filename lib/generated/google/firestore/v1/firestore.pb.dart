///
//  Generated code. Do not modify.
//  source: google/firestore/v1/firestore.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $3;
import '../../protobuf/timestamp.pb.dart' as $4;
import 'document.pb.dart' as $1;
import 'write.pb.dart' as $5;
import 'query.pb.dart' as $6;
import '../../rpc/status.pb.dart' as $7;

import 'firestore.pbenum.dart';

export 'firestore.pbenum.dart';

enum GetDocumentRequest_ConsistencySelector { transaction, readTime, notSet }

class GetDocumentRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GetDocumentRequest_ConsistencySelector>
      _GetDocumentRequest_ConsistencySelectorByTag = {
    3: GetDocumentRequest_ConsistencySelector.transaction,
    5: GetDocumentRequest_ConsistencySelector.readTime,
    0: GetDocumentRequest_ConsistencySelector.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetDocumentRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [3, 5])
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..aOM<$3.DocumentMask>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'mask',
        subBuilder: $3.DocumentMask.create)
    ..a<$core.List<$core.int>>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'transaction',
        $pb.PbFieldType.OY)
    ..aOM<$4.Timestamp>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'readTime',
        subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false;

  GetDocumentRequest._() : super();
  factory GetDocumentRequest({
    $core.String? name,
    $3.DocumentMask? mask,
    $core.List<$core.int>? transaction,
    $4.Timestamp? readTime,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (mask != null) {
      _result.mask = mask;
    }
    if (transaction != null) {
      _result.transaction = transaction;
    }
    if (readTime != null) {
      _result.readTime = readTime;
    }
    return _result;
  }
  factory GetDocumentRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetDocumentRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetDocumentRequest clone() => GetDocumentRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetDocumentRequest copyWith(void Function(GetDocumentRequest) updates) =>
      super.copyWith((message) => updates(message as GetDocumentRequest))
          as GetDocumentRequest; // ignore: deprecated_member_use
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

class ListDocumentsRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ListDocumentsRequest_ConsistencySelector>
      _ListDocumentsRequest_ConsistencySelectorByTag = {
    8: ListDocumentsRequest_ConsistencySelector.transaction,
    10: ListDocumentsRequest_ConsistencySelector.readTime,
    0: ListDocumentsRequest_ConsistencySelector.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListDocumentsRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [8, 10])
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'parent')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'collectionId')
    ..a<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'pageSize',
        $pb.PbFieldType.O3)
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'pageToken')
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'orderBy')
    ..aOM<$3.DocumentMask>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'mask',
        subBuilder: $3.DocumentMask.create)
    ..a<$core.List<$core.int>>(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'transaction',
        $pb.PbFieldType.OY)
    ..aOM<$4.Timestamp>(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'readTime',
        subBuilder: $4.Timestamp.create)
    ..aOB(
        12,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'showMissing')
    ..hasRequiredFields = false;

  ListDocumentsRequest._() : super();
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
    final _result = create();
    if (parent != null) {
      _result.parent = parent;
    }
    if (collectionId != null) {
      _result.collectionId = collectionId;
    }
    if (pageSize != null) {
      _result.pageSize = pageSize;
    }
    if (pageToken != null) {
      _result.pageToken = pageToken;
    }
    if (orderBy != null) {
      _result.orderBy = orderBy;
    }
    if (mask != null) {
      _result.mask = mask;
    }
    if (transaction != null) {
      _result.transaction = transaction;
    }
    if (readTime != null) {
      _result.readTime = readTime;
    }
    if (showMissing != null) {
      _result.showMissing = showMissing;
    }
    return _result;
  }
  factory ListDocumentsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListDocumentsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as ListDocumentsRequest; // ignore: deprecated_member_use
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

class ListDocumentsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListDocumentsResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..pc<$1.Document>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'documents',
        $pb.PbFieldType.PM,
        subBuilder: $1.Document.create)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'nextPageToken')
    ..hasRequiredFields = false;

  ListDocumentsResponse._() : super();
  factory ListDocumentsResponse({
    $core.Iterable<$1.Document>? documents,
    $core.String? nextPageToken,
  }) {
    final _result = create();
    if (documents != null) {
      _result.documents.addAll(documents);
    }
    if (nextPageToken != null) {
      _result.nextPageToken = nextPageToken;
    }
    return _result;
  }
  factory ListDocumentsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListDocumentsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as ListDocumentsResponse; // ignore: deprecated_member_use
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

  @$pb.TagNumber(1)
  $core.List<$1.Document> get documents => $_getList(0);

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

class CreateDocumentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CreateDocumentRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'parent')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'collectionId')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'documentId')
    ..aOM<$1.Document>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'document',
        subBuilder: $1.Document.create)
    ..aOM<$3.DocumentMask>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'mask',
        subBuilder: $3.DocumentMask.create)
    ..hasRequiredFields = false;

  CreateDocumentRequest._() : super();
  factory CreateDocumentRequest({
    $core.String? parent,
    $core.String? collectionId,
    $core.String? documentId,
    $1.Document? document,
    $3.DocumentMask? mask,
  }) {
    final _result = create();
    if (parent != null) {
      _result.parent = parent;
    }
    if (collectionId != null) {
      _result.collectionId = collectionId;
    }
    if (documentId != null) {
      _result.documentId = documentId;
    }
    if (document != null) {
      _result.document = document;
    }
    if (mask != null) {
      _result.mask = mask;
    }
    return _result;
  }
  factory CreateDocumentRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateDocumentRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as CreateDocumentRequest; // ignore: deprecated_member_use
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

class UpdateDocumentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UpdateDocumentRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOM<$1.Document>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'document',
        subBuilder: $1.Document.create)
    ..aOM<$3.DocumentMask>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'updateMask',
        subBuilder: $3.DocumentMask.create)
    ..aOM<$3.DocumentMask>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'mask',
        subBuilder: $3.DocumentMask.create)
    ..aOM<$3.Precondition>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'currentDocument',
        subBuilder: $3.Precondition.create)
    ..hasRequiredFields = false;

  UpdateDocumentRequest._() : super();
  factory UpdateDocumentRequest({
    $1.Document? document,
    $3.DocumentMask? updateMask,
    $3.DocumentMask? mask,
    $3.Precondition? currentDocument,
  }) {
    final _result = create();
    if (document != null) {
      _result.document = document;
    }
    if (updateMask != null) {
      _result.updateMask = updateMask;
    }
    if (mask != null) {
      _result.mask = mask;
    }
    if (currentDocument != null) {
      _result.currentDocument = currentDocument;
    }
    return _result;
  }
  factory UpdateDocumentRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateDocumentRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as UpdateDocumentRequest; // ignore: deprecated_member_use
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

class DeleteDocumentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DeleteDocumentRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..aOM<$3.Precondition>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'currentDocument',
        subBuilder: $3.Precondition.create)
    ..hasRequiredFields = false;

  DeleteDocumentRequest._() : super();
  factory DeleteDocumentRequest({
    $core.String? name,
    $3.Precondition? currentDocument,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (currentDocument != null) {
      _result.currentDocument = currentDocument;
    }
    return _result;
  }
  factory DeleteDocumentRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteDocumentRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as DeleteDocumentRequest; // ignore: deprecated_member_use
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

class BatchGetDocumentsRequest extends $pb.GeneratedMessage {
  static const $core
          .Map<$core.int, BatchGetDocumentsRequest_ConsistencySelector>
      _BatchGetDocumentsRequest_ConsistencySelectorByTag = {
    4: BatchGetDocumentsRequest_ConsistencySelector.transaction,
    5: BatchGetDocumentsRequest_ConsistencySelector.newTransaction,
    7: BatchGetDocumentsRequest_ConsistencySelector.readTime,
    0: BatchGetDocumentsRequest_ConsistencySelector.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BatchGetDocumentsRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [4, 5, 7])
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'database')
    ..pPS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'documents')
    ..aOM<$3.DocumentMask>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'mask',
        subBuilder: $3.DocumentMask.create)
    ..a<$core.List<$core.int>>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'transaction',
        $pb.PbFieldType.OY)
    ..aOM<$3.TransactionOptions>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'newTransaction',
        subBuilder: $3.TransactionOptions.create)
    ..aOM<$4.Timestamp>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'readTime',
        subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false;

  BatchGetDocumentsRequest._() : super();
  factory BatchGetDocumentsRequest({
    $core.String? database,
    $core.Iterable<$core.String>? documents,
    $3.DocumentMask? mask,
    $core.List<$core.int>? transaction,
    $3.TransactionOptions? newTransaction,
    $4.Timestamp? readTime,
  }) {
    final _result = create();
    if (database != null) {
      _result.database = database;
    }
    if (documents != null) {
      _result.documents.addAll(documents);
    }
    if (mask != null) {
      _result.mask = mask;
    }
    if (transaction != null) {
      _result.transaction = transaction;
    }
    if (newTransaction != null) {
      _result.newTransaction = newTransaction;
    }
    if (readTime != null) {
      _result.readTime = readTime;
    }
    return _result;
  }
  factory BatchGetDocumentsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BatchGetDocumentsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as BatchGetDocumentsRequest; // ignore: deprecated_member_use
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

  @$pb.TagNumber(2)
  $core.List<$core.String> get documents => $_getList(1);

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

class BatchGetDocumentsResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, BatchGetDocumentsResponse_Result>
      _BatchGetDocumentsResponse_ResultByTag = {
    1: BatchGetDocumentsResponse_Result.found,
    2: BatchGetDocumentsResponse_Result.missing,
    0: BatchGetDocumentsResponse_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BatchGetDocumentsResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$1.Document>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'found',
        subBuilder: $1.Document.create)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'missing')
    ..a<$core.List<$core.int>>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'transaction',
        $pb.PbFieldType.OY)
    ..aOM<$4.Timestamp>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'readTime',
        subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false;

  BatchGetDocumentsResponse._() : super();
  factory BatchGetDocumentsResponse({
    $1.Document? found,
    $core.String? missing,
    $core.List<$core.int>? transaction,
    $4.Timestamp? readTime,
  }) {
    final _result = create();
    if (found != null) {
      _result.found = found;
    }
    if (missing != null) {
      _result.missing = missing;
    }
    if (transaction != null) {
      _result.transaction = transaction;
    }
    if (readTime != null) {
      _result.readTime = readTime;
    }
    return _result;
  }
  factory BatchGetDocumentsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BatchGetDocumentsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as BatchGetDocumentsResponse; // ignore: deprecated_member_use
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

class BeginTransactionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BeginTransactionRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'database')
    ..aOM<$3.TransactionOptions>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'options',
        subBuilder: $3.TransactionOptions.create)
    ..hasRequiredFields = false;

  BeginTransactionRequest._() : super();
  factory BeginTransactionRequest({
    $core.String? database,
    $3.TransactionOptions? options,
  }) {
    final _result = create();
    if (database != null) {
      _result.database = database;
    }
    if (options != null) {
      _result.options = options;
    }
    return _result;
  }
  factory BeginTransactionRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BeginTransactionRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as BeginTransactionRequest; // ignore: deprecated_member_use
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

class BeginTransactionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BeginTransactionResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'transaction',
        $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  BeginTransactionResponse._() : super();
  factory BeginTransactionResponse({
    $core.List<$core.int>? transaction,
  }) {
    final _result = create();
    if (transaction != null) {
      _result.transaction = transaction;
    }
    return _result;
  }
  factory BeginTransactionResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BeginTransactionResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as BeginTransactionResponse; // ignore: deprecated_member_use
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

class CommitRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CommitRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'database')
    ..pc<$5.Write>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'writes',
        $pb.PbFieldType.PM,
        subBuilder: $5.Write.create)
    ..a<$core.List<$core.int>>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'transaction',
        $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  CommitRequest._() : super();
  factory CommitRequest({
    $core.String? database,
    $core.Iterable<$5.Write>? writes,
    $core.List<$core.int>? transaction,
  }) {
    final _result = create();
    if (database != null) {
      _result.database = database;
    }
    if (writes != null) {
      _result.writes.addAll(writes);
    }
    if (transaction != null) {
      _result.transaction = transaction;
    }
    return _result;
  }
  factory CommitRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CommitRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CommitRequest clone() => CommitRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CommitRequest copyWith(void Function(CommitRequest) updates) =>
      super.copyWith((message) => updates(message as CommitRequest))
          as CommitRequest; // ignore: deprecated_member_use
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

  @$pb.TagNumber(2)
  $core.List<$5.Write> get writes => $_getList(1);

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

class CommitResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CommitResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..pc<$5.WriteResult>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'writeResults',
        $pb.PbFieldType.PM,
        subBuilder: $5.WriteResult.create)
    ..aOM<$4.Timestamp>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'commitTime',
        subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false;

  CommitResponse._() : super();
  factory CommitResponse({
    $core.Iterable<$5.WriteResult>? writeResults,
    $4.Timestamp? commitTime,
  }) {
    final _result = create();
    if (writeResults != null) {
      _result.writeResults.addAll(writeResults);
    }
    if (commitTime != null) {
      _result.commitTime = commitTime;
    }
    return _result;
  }
  factory CommitResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CommitResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CommitResponse clone() => CommitResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CommitResponse copyWith(void Function(CommitResponse) updates) =>
      super.copyWith((message) => updates(message as CommitResponse))
          as CommitResponse; // ignore: deprecated_member_use
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

  @$pb.TagNumber(1)
  $core.List<$5.WriteResult> get writeResults => $_getList(0);

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

class RollbackRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RollbackRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'database')
    ..a<$core.List<$core.int>>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'transaction',
        $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  RollbackRequest._() : super();
  factory RollbackRequest({
    $core.String? database,
    $core.List<$core.int>? transaction,
  }) {
    final _result = create();
    if (database != null) {
      _result.database = database;
    }
    if (transaction != null) {
      _result.transaction = transaction;
    }
    return _result;
  }
  factory RollbackRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RollbackRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RollbackRequest clone() => RollbackRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RollbackRequest copyWith(void Function(RollbackRequest) updates) =>
      super.copyWith((message) => updates(message as RollbackRequest))
          as RollbackRequest; // ignore: deprecated_member_use
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

class RunQueryRequest extends $pb.GeneratedMessage {
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
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RunQueryRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [2])
    ..oo(1, [5, 6, 7])
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'parent')
    ..aOM<$6.StructuredQuery>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'structuredQuery',
        subBuilder: $6.StructuredQuery.create)
    ..a<$core.List<$core.int>>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'transaction',
        $pb.PbFieldType.OY)
    ..aOM<$3.TransactionOptions>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'newTransaction',
        subBuilder: $3.TransactionOptions.create)
    ..aOM<$4.Timestamp>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'readTime',
        subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false;

  RunQueryRequest._() : super();
  factory RunQueryRequest({
    $core.String? parent,
    $6.StructuredQuery? structuredQuery,
    $core.List<$core.int>? transaction,
    $3.TransactionOptions? newTransaction,
    $4.Timestamp? readTime,
  }) {
    final _result = create();
    if (parent != null) {
      _result.parent = parent;
    }
    if (structuredQuery != null) {
      _result.structuredQuery = structuredQuery;
    }
    if (transaction != null) {
      _result.transaction = transaction;
    }
    if (newTransaction != null) {
      _result.newTransaction = newTransaction;
    }
    if (readTime != null) {
      _result.readTime = readTime;
    }
    return _result;
  }
  factory RunQueryRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RunQueryRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RunQueryRequest clone() => RunQueryRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RunQueryRequest copyWith(void Function(RunQueryRequest) updates) =>
      super.copyWith((message) => updates(message as RunQueryRequest))
          as RunQueryRequest; // ignore: deprecated_member_use
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

class RunQueryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RunQueryResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOM<$1.Document>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'document',
        subBuilder: $1.Document.create)
    ..a<$core.List<$core.int>>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'transaction',
        $pb.PbFieldType.OY)
    ..aOM<$4.Timestamp>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'readTime',
        subBuilder: $4.Timestamp.create)
    ..a<$core.int>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'skippedResults',
        $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  RunQueryResponse._() : super();
  factory RunQueryResponse({
    $1.Document? document,
    $core.List<$core.int>? transaction,
    $4.Timestamp? readTime,
    $core.int? skippedResults,
  }) {
    final _result = create();
    if (document != null) {
      _result.document = document;
    }
    if (transaction != null) {
      _result.transaction = transaction;
    }
    if (readTime != null) {
      _result.readTime = readTime;
    }
    if (skippedResults != null) {
      _result.skippedResults = skippedResults;
    }
    return _result;
  }
  factory RunQueryResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RunQueryResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RunQueryResponse clone() => RunQueryResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RunQueryResponse copyWith(void Function(RunQueryResponse) updates) =>
      super.copyWith((message) => updates(message as RunQueryResponse))
          as RunQueryResponse; // ignore: deprecated_member_use
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
}

enum PartitionQueryRequest_QueryType { structuredQuery, notSet }

class PartitionQueryRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, PartitionQueryRequest_QueryType>
      _PartitionQueryRequest_QueryTypeByTag = {
    2: PartitionQueryRequest_QueryType.structuredQuery,
    0: PartitionQueryRequest_QueryType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PartitionQueryRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [2])
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'parent')
    ..aOM<$6.StructuredQuery>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'structuredQuery',
        subBuilder: $6.StructuredQuery.create)
    ..aInt64(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'partitionCount')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'pageToken')
    ..a<$core.int>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'pageSize',
        $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  PartitionQueryRequest._() : super();
  factory PartitionQueryRequest({
    $core.String? parent,
    $6.StructuredQuery? structuredQuery,
    $fixnum.Int64? partitionCount,
    $core.String? pageToken,
    $core.int? pageSize,
  }) {
    final _result = create();
    if (parent != null) {
      _result.parent = parent;
    }
    if (structuredQuery != null) {
      _result.structuredQuery = structuredQuery;
    }
    if (partitionCount != null) {
      _result.partitionCount = partitionCount;
    }
    if (pageToken != null) {
      _result.pageToken = pageToken;
    }
    if (pageSize != null) {
      _result.pageSize = pageSize;
    }
    return _result;
  }
  factory PartitionQueryRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PartitionQueryRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as PartitionQueryRequest; // ignore: deprecated_member_use
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
}

class PartitionQueryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PartitionQueryResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..pc<$6.Cursor>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'partitions',
        $pb.PbFieldType.PM,
        subBuilder: $6.Cursor.create)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'nextPageToken')
    ..hasRequiredFields = false;

  PartitionQueryResponse._() : super();
  factory PartitionQueryResponse({
    $core.Iterable<$6.Cursor>? partitions,
    $core.String? nextPageToken,
  }) {
    final _result = create();
    if (partitions != null) {
      _result.partitions.addAll(partitions);
    }
    if (nextPageToken != null) {
      _result.nextPageToken = nextPageToken;
    }
    return _result;
  }
  factory PartitionQueryResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PartitionQueryResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as PartitionQueryResponse; // ignore: deprecated_member_use
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

  @$pb.TagNumber(1)
  $core.List<$6.Cursor> get partitions => $_getList(0);

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

class WriteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'WriteRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'database')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'streamId')
    ..pc<$5.Write>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'writes',
        $pb.PbFieldType.PM,
        subBuilder: $5.Write.create)
    ..a<$core.List<$core.int>>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'streamToken',
        $pb.PbFieldType.OY)
    ..m<$core.String, $core.String>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'labels',
        entryClassName: 'WriteRequest.LabelsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('google.firestore.v1'))
    ..hasRequiredFields = false;

  WriteRequest._() : super();
  factory WriteRequest({
    $core.String? database,
    $core.String? streamId,
    $core.Iterable<$5.Write>? writes,
    $core.List<$core.int>? streamToken,
    $core.Map<$core.String, $core.String>? labels,
  }) {
    final _result = create();
    if (database != null) {
      _result.database = database;
    }
    if (streamId != null) {
      _result.streamId = streamId;
    }
    if (writes != null) {
      _result.writes.addAll(writes);
    }
    if (streamToken != null) {
      _result.streamToken = streamToken;
    }
    if (labels != null) {
      _result.labels.addAll(labels);
    }
    return _result;
  }
  factory WriteRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WriteRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WriteRequest clone() => WriteRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WriteRequest copyWith(void Function(WriteRequest) updates) =>
      super.copyWith((message) => updates(message as WriteRequest))
          as WriteRequest; // ignore: deprecated_member_use
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

  @$pb.TagNumber(3)
  $core.List<$5.Write> get writes => $_getList(2);

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

  @$pb.TagNumber(5)
  $core.Map<$core.String, $core.String> get labels => $_getMap(4);
}

class WriteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'WriteResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'streamId')
    ..a<$core.List<$core.int>>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'streamToken',
        $pb.PbFieldType.OY)
    ..pc<$5.WriteResult>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'writeResults',
        $pb.PbFieldType.PM,
        subBuilder: $5.WriteResult.create)
    ..aOM<$4.Timestamp>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'commitTime',
        subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false;

  WriteResponse._() : super();
  factory WriteResponse({
    $core.String? streamId,
    $core.List<$core.int>? streamToken,
    $core.Iterable<$5.WriteResult>? writeResults,
    $4.Timestamp? commitTime,
  }) {
    final _result = create();
    if (streamId != null) {
      _result.streamId = streamId;
    }
    if (streamToken != null) {
      _result.streamToken = streamToken;
    }
    if (writeResults != null) {
      _result.writeResults.addAll(writeResults);
    }
    if (commitTime != null) {
      _result.commitTime = commitTime;
    }
    return _result;
  }
  factory WriteResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WriteResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WriteResponse clone() => WriteResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WriteResponse copyWith(void Function(WriteResponse) updates) =>
      super.copyWith((message) => updates(message as WriteResponse))
          as WriteResponse; // ignore: deprecated_member_use
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

  @$pb.TagNumber(3)
  $core.List<$5.WriteResult> get writeResults => $_getList(2);

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

class ListenRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ListenRequest_TargetChange>
      _ListenRequest_TargetChangeByTag = {
    2: ListenRequest_TargetChange.addTarget,
    3: ListenRequest_TargetChange.removeTarget,
    0: ListenRequest_TargetChange.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListenRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'database')
    ..aOM<Target>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'addTarget',
        subBuilder: Target.create)
    ..a<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'removeTarget',
        $pb.PbFieldType.O3)
    ..m<$core.String, $core.String>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'labels',
        entryClassName: 'ListenRequest.LabelsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('google.firestore.v1'))
    ..hasRequiredFields = false;

  ListenRequest._() : super();
  factory ListenRequest({
    $core.String? database,
    Target? addTarget,
    $core.int? removeTarget,
    $core.Map<$core.String, $core.String>? labels,
  }) {
    final _result = create();
    if (database != null) {
      _result.database = database;
    }
    if (addTarget != null) {
      _result.addTarget = addTarget;
    }
    if (removeTarget != null) {
      _result.removeTarget = removeTarget;
    }
    if (labels != null) {
      _result.labels.addAll(labels);
    }
    return _result;
  }
  factory ListenRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListenRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListenRequest clone() => ListenRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListenRequest copyWith(void Function(ListenRequest) updates) =>
      super.copyWith((message) => updates(message as ListenRequest))
          as ListenRequest; // ignore: deprecated_member_use
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

class ListenResponse extends $pb.GeneratedMessage {
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
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListenResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5, 6])
    ..aOM<TargetChange>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'targetChange',
        subBuilder: TargetChange.create)
    ..aOM<$5.DocumentChange>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'documentChange',
        subBuilder: $5.DocumentChange.create)
    ..aOM<$5.DocumentDelete>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'documentDelete',
        subBuilder: $5.DocumentDelete.create)
    ..aOM<$5.ExistenceFilter>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'filter',
        subBuilder: $5.ExistenceFilter.create)
    ..aOM<$5.DocumentRemove>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'documentRemove',
        subBuilder: $5.DocumentRemove.create)
    ..hasRequiredFields = false;

  ListenResponse._() : super();
  factory ListenResponse({
    TargetChange? targetChange,
    $5.DocumentChange? documentChange,
    $5.DocumentDelete? documentDelete,
    $5.ExistenceFilter? filter,
    $5.DocumentRemove? documentRemove,
  }) {
    final _result = create();
    if (targetChange != null) {
      _result.targetChange = targetChange;
    }
    if (documentChange != null) {
      _result.documentChange = documentChange;
    }
    if (documentDelete != null) {
      _result.documentDelete = documentDelete;
    }
    if (filter != null) {
      _result.filter = filter;
    }
    if (documentRemove != null) {
      _result.documentRemove = documentRemove;
    }
    return _result;
  }
  factory ListenResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListenResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListenResponse clone() => ListenResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListenResponse copyWith(void Function(ListenResponse) updates) =>
      super.copyWith((message) => updates(message as ListenResponse))
          as ListenResponse; // ignore: deprecated_member_use
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

class Target_DocumentsTarget extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Target.DocumentsTarget',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..pPS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'documents')
    ..hasRequiredFields = false;

  Target_DocumentsTarget._() : super();
  factory Target_DocumentsTarget({
    $core.Iterable<$core.String>? documents,
  }) {
    final _result = create();
    if (documents != null) {
      _result.documents.addAll(documents);
    }
    return _result;
  }
  factory Target_DocumentsTarget.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Target_DocumentsTarget.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as Target_DocumentsTarget; // ignore: deprecated_member_use
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

  @$pb.TagNumber(2)
  $core.List<$core.String> get documents => $_getList(0);
}

enum Target_QueryTarget_QueryType { structuredQuery, notSet }

class Target_QueryTarget extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Target_QueryTarget_QueryType>
      _Target_QueryTarget_QueryTypeByTag = {
    2: Target_QueryTarget_QueryType.structuredQuery,
    0: Target_QueryTarget_QueryType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Target.QueryTarget',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [2])
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'parent')
    ..aOM<$6.StructuredQuery>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'structuredQuery',
        subBuilder: $6.StructuredQuery.create)
    ..hasRequiredFields = false;

  Target_QueryTarget._() : super();
  factory Target_QueryTarget({
    $core.String? parent,
    $6.StructuredQuery? structuredQuery,
  }) {
    final _result = create();
    if (parent != null) {
      _result.parent = parent;
    }
    if (structuredQuery != null) {
      _result.structuredQuery = structuredQuery;
    }
    return _result;
  }
  factory Target_QueryTarget.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Target_QueryTarget.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Target_QueryTarget clone() => Target_QueryTarget()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Target_QueryTarget copyWith(void Function(Target_QueryTarget) updates) =>
      super.copyWith((message) => updates(message as Target_QueryTarget))
          as Target_QueryTarget; // ignore: deprecated_member_use
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

class Target extends $pb.GeneratedMessage {
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
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Target',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..oo(1, [4, 11])
    ..aOM<Target_QueryTarget>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'query',
        subBuilder: Target_QueryTarget.create)
    ..aOM<Target_DocumentsTarget>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'documents',
        subBuilder: Target_DocumentsTarget.create)
    ..a<$core.List<$core.int>>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'resumeToken',
        $pb.PbFieldType.OY)
    ..a<$core.int>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'targetId',
        $pb.PbFieldType.O3)
    ..aOB(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'once')
    ..aOM<$4.Timestamp>(
        11,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'readTime',
        subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false;

  Target._() : super();
  factory Target({
    Target_QueryTarget? query,
    Target_DocumentsTarget? documents,
    $core.List<$core.int>? resumeToken,
    $core.int? targetId,
    $core.bool? once,
    $4.Timestamp? readTime,
  }) {
    final _result = create();
    if (query != null) {
      _result.query = query;
    }
    if (documents != null) {
      _result.documents = documents;
    }
    if (resumeToken != null) {
      _result.resumeToken = resumeToken;
    }
    if (targetId != null) {
      _result.targetId = targetId;
    }
    if (once != null) {
      _result.once = once;
    }
    if (readTime != null) {
      _result.readTime = readTime;
    }
    return _result;
  }
  factory Target.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Target.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Target clone() => Target()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Target copyWith(void Function(Target) updates) =>
      super.copyWith((message) => updates(message as Target))
          as Target; // ignore: deprecated_member_use
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
}

class TargetChange extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TargetChange',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..e<TargetChange_TargetChangeType>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'targetChangeType',
        $pb.PbFieldType.OE,
        defaultOrMaker: TargetChange_TargetChangeType.NO_CHANGE,
        valueOf: TargetChange_TargetChangeType.valueOf,
        enumValues: TargetChange_TargetChangeType.values)
    ..p<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'targetIds',
        $pb.PbFieldType.P3)
    ..aOM<$7.Status>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'cause',
        subBuilder: $7.Status.create)
    ..a<$core.List<$core.int>>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'resumeToken',
        $pb.PbFieldType.OY)
    ..aOM<$4.Timestamp>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'readTime',
        subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false;

  TargetChange._() : super();
  factory TargetChange({
    TargetChange_TargetChangeType? targetChangeType,
    $core.Iterable<$core.int>? targetIds,
    $7.Status? cause,
    $core.List<$core.int>? resumeToken,
    $4.Timestamp? readTime,
  }) {
    final _result = create();
    if (targetChangeType != null) {
      _result.targetChangeType = targetChangeType;
    }
    if (targetIds != null) {
      _result.targetIds.addAll(targetIds);
    }
    if (cause != null) {
      _result.cause = cause;
    }
    if (resumeToken != null) {
      _result.resumeToken = resumeToken;
    }
    if (readTime != null) {
      _result.readTime = readTime;
    }
    return _result;
  }
  factory TargetChange.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TargetChange.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TargetChange clone() => TargetChange()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TargetChange copyWith(void Function(TargetChange) updates) =>
      super.copyWith((message) => updates(message as TargetChange))
          as TargetChange; // ignore: deprecated_member_use
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

  @$pb.TagNumber(2)
  $core.List<$core.int> get targetIds => $_getList(1);

  @$pb.TagNumber(3)
  $7.Status get cause => $_getN(2);
  @$pb.TagNumber(3)
  set cause($7.Status v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCause() => $_has(2);
  @$pb.TagNumber(3)
  void clearCause() => clearField(3);
  @$pb.TagNumber(3)
  $7.Status ensureCause() => $_ensure(2);

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

class ListCollectionIdsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListCollectionIdsRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'parent')
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'pageSize',
        $pb.PbFieldType.O3)
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'pageToken')
    ..hasRequiredFields = false;

  ListCollectionIdsRequest._() : super();
  factory ListCollectionIdsRequest({
    $core.String? parent,
    $core.int? pageSize,
    $core.String? pageToken,
  }) {
    final _result = create();
    if (parent != null) {
      _result.parent = parent;
    }
    if (pageSize != null) {
      _result.pageSize = pageSize;
    }
    if (pageToken != null) {
      _result.pageToken = pageToken;
    }
    return _result;
  }
  factory ListCollectionIdsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListCollectionIdsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as ListCollectionIdsRequest; // ignore: deprecated_member_use
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
}

class ListCollectionIdsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListCollectionIdsResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'collectionIds')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'nextPageToken')
    ..hasRequiredFields = false;

  ListCollectionIdsResponse._() : super();
  factory ListCollectionIdsResponse({
    $core.Iterable<$core.String>? collectionIds,
    $core.String? nextPageToken,
  }) {
    final _result = create();
    if (collectionIds != null) {
      _result.collectionIds.addAll(collectionIds);
    }
    if (nextPageToken != null) {
      _result.nextPageToken = nextPageToken;
    }
    return _result;
  }
  factory ListCollectionIdsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListCollectionIdsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
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
          as ListCollectionIdsResponse; // ignore: deprecated_member_use
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

  @$pb.TagNumber(1)
  $core.List<$core.String> get collectionIds => $_getList(0);

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

class BatchWriteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BatchWriteRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'database')
    ..pc<$5.Write>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'writes',
        $pb.PbFieldType.PM,
        subBuilder: $5.Write.create)
    ..m<$core.String, $core.String>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'labels',
        entryClassName: 'BatchWriteRequest.LabelsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('google.firestore.v1'))
    ..hasRequiredFields = false;

  BatchWriteRequest._() : super();
  factory BatchWriteRequest({
    $core.String? database,
    $core.Iterable<$5.Write>? writes,
    $core.Map<$core.String, $core.String>? labels,
  }) {
    final _result = create();
    if (database != null) {
      _result.database = database;
    }
    if (writes != null) {
      _result.writes.addAll(writes);
    }
    if (labels != null) {
      _result.labels.addAll(labels);
    }
    return _result;
  }
  factory BatchWriteRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BatchWriteRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BatchWriteRequest clone() => BatchWriteRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BatchWriteRequest copyWith(void Function(BatchWriteRequest) updates) =>
      super.copyWith((message) => updates(message as BatchWriteRequest))
          as BatchWriteRequest; // ignore: deprecated_member_use
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

  @$pb.TagNumber(2)
  $core.List<$5.Write> get writes => $_getList(1);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get labels => $_getMap(2);
}

class BatchWriteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BatchWriteResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..pc<$5.WriteResult>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'writeResults',
        $pb.PbFieldType.PM,
        subBuilder: $5.WriteResult.create)
    ..pc<$7.Status>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'status',
        $pb.PbFieldType.PM,
        subBuilder: $7.Status.create)
    ..hasRequiredFields = false;

  BatchWriteResponse._() : super();
  factory BatchWriteResponse({
    $core.Iterable<$5.WriteResult>? writeResults,
    $core.Iterable<$7.Status>? status,
  }) {
    final _result = create();
    if (writeResults != null) {
      _result.writeResults.addAll(writeResults);
    }
    if (status != null) {
      _result.status.addAll(status);
    }
    return _result;
  }
  factory BatchWriteResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BatchWriteResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BatchWriteResponse clone() => BatchWriteResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BatchWriteResponse copyWith(void Function(BatchWriteResponse) updates) =>
      super.copyWith((message) => updates(message as BatchWriteResponse))
          as BatchWriteResponse; // ignore: deprecated_member_use
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

  @$pb.TagNumber(1)
  $core.List<$5.WriteResult> get writeResults => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$7.Status> get status => $_getList(1);
}

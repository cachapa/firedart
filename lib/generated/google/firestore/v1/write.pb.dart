///
//  Generated code. Do not modify.
//  source: google/firestore/v1/write.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core
    show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'document.pb.dart' as $0;
import 'common.pb.dart' as $1;
import '../../protobuf/timestamp.pb.dart' as $2;

import 'write.pbenum.dart';

export 'write.pbenum.dart';

enum Write_Operation { update, delete, transform, notSet }

class Write extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Write_Operation> _Write_OperationByTag = {
    1: Write_Operation.update,
    2: Write_Operation.delete,
    6: Write_Operation.transform,
    0: Write_Operation.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Write',
      package: const $pb.PackageName('google.firestore.v1'))
    ..oo(0, [1, 2, 6])
    ..a<$0.Document>(1, 'update', $pb.PbFieldType.OM, $0.Document.getDefault,
        $0.Document.create)
    ..aOS(2, 'delete')
    ..a<$1.DocumentMask>(3, 'updateMask', $pb.PbFieldType.OM,
        $1.DocumentMask.getDefault, $1.DocumentMask.create)
    ..a<$1.Precondition>(4, 'currentDocument', $pb.PbFieldType.OM,
        $1.Precondition.getDefault, $1.Precondition.create)
    ..a<DocumentTransform>(6, 'transform', $pb.PbFieldType.OM,
        DocumentTransform.getDefault, DocumentTransform.create)
    ..hasRequiredFields = false;

  Write._() : super();
  factory Write() => create();
  factory Write.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Write.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Write clone() => Write()..mergeFromMessage(this);
  Write copyWith(void Function(Write) updates) =>
      super.copyWith((message) => updates(message as Write));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Write create() => Write._();
  Write createEmptyInstance() => create();
  static $pb.PbList<Write> createRepeated() => $pb.PbList<Write>();
  static Write getDefault() => _defaultInstance ??= create()..freeze();
  static Write _defaultInstance;

  Write_Operation whichOperation() => _Write_OperationByTag[$_whichOneof(0)];
  void clearOperation() => clearField($_whichOneof(0));

  $0.Document get update => $_getN(0);
  set update($0.Document v) {
    setField(1, v);
  }

  $core.bool hasUpdate() => $_has(0);
  void clearUpdate() => clearField(1);

  $core.String get delete => $_getS(1, '');
  set delete($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasDelete() => $_has(1);
  void clearDelete() => clearField(2);

  $1.DocumentMask get updateMask => $_getN(2);
  set updateMask($1.DocumentMask v) {
    setField(3, v);
  }

  $core.bool hasUpdateMask() => $_has(2);
  void clearUpdateMask() => clearField(3);

  $1.Precondition get currentDocument => $_getN(3);
  set currentDocument($1.Precondition v) {
    setField(4, v);
  }

  $core.bool hasCurrentDocument() => $_has(3);
  void clearCurrentDocument() => clearField(4);

  DocumentTransform get transform => $_getN(4);
  set transform(DocumentTransform v) {
    setField(6, v);
  }

  $core.bool hasTransform() => $_has(4);
  void clearTransform() => clearField(6);
}

enum DocumentTransform_FieldTransform_TransformType {
  setToServerValue,
  increment,
  maximum,
  minimum,
  appendMissingElements,
  removeAllFromArray,
  notSet
}

class DocumentTransform_FieldTransform extends $pb.GeneratedMessage {
  static const $core
          .Map<$core.int, DocumentTransform_FieldTransform_TransformType>
      _DocumentTransform_FieldTransform_TransformTypeByTag = {
    2: DocumentTransform_FieldTransform_TransformType.setToServerValue,
    3: DocumentTransform_FieldTransform_TransformType.increment,
    4: DocumentTransform_FieldTransform_TransformType.maximum,
    5: DocumentTransform_FieldTransform_TransformType.minimum,
    6: DocumentTransform_FieldTransform_TransformType.appendMissingElements,
    7: DocumentTransform_FieldTransform_TransformType.removeAllFromArray,
    0: DocumentTransform_FieldTransform_TransformType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'DocumentTransform.FieldTransform',
      package: const $pb.PackageName('google.firestore.v1'))
    ..oo(0, [2, 3, 4, 5, 6, 7])
    ..aOS(1, 'fieldPath')
    ..e<DocumentTransform_FieldTransform_ServerValue>(
        2,
        'setToServerValue',
        $pb.PbFieldType.OE,
        DocumentTransform_FieldTransform_ServerValue.SERVER_VALUE_UNSPECIFIED,
        DocumentTransform_FieldTransform_ServerValue.valueOf,
        DocumentTransform_FieldTransform_ServerValue.values)
    ..a<$0.Value>(3, 'increment', $pb.PbFieldType.OM, $0.Value.getDefault,
        $0.Value.create)
    ..a<$0.Value>(
        4, 'maximum', $pb.PbFieldType.OM, $0.Value.getDefault, $0.Value.create)
    ..a<$0.Value>(
        5, 'minimum', $pb.PbFieldType.OM, $0.Value.getDefault, $0.Value.create)
    ..a<$0.ArrayValue>(6, 'appendMissingElements', $pb.PbFieldType.OM,
        $0.ArrayValue.getDefault, $0.ArrayValue.create)
    ..a<$0.ArrayValue>(7, 'removeAllFromArray', $pb.PbFieldType.OM,
        $0.ArrayValue.getDefault, $0.ArrayValue.create)
    ..hasRequiredFields = false;

  DocumentTransform_FieldTransform._() : super();
  factory DocumentTransform_FieldTransform() => create();
  factory DocumentTransform_FieldTransform.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DocumentTransform_FieldTransform.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DocumentTransform_FieldTransform clone() =>
      DocumentTransform_FieldTransform()..mergeFromMessage(this);
  DocumentTransform_FieldTransform copyWith(
          void Function(DocumentTransform_FieldTransform) updates) =>
      super.copyWith(
          (message) => updates(message as DocumentTransform_FieldTransform));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DocumentTransform_FieldTransform create() =>
      DocumentTransform_FieldTransform._();
  DocumentTransform_FieldTransform createEmptyInstance() => create();
  static $pb.PbList<DocumentTransform_FieldTransform> createRepeated() =>
      $pb.PbList<DocumentTransform_FieldTransform>();
  static DocumentTransform_FieldTransform getDefault() =>
      _defaultInstance ??= create()..freeze();
  static DocumentTransform_FieldTransform _defaultInstance;

  DocumentTransform_FieldTransform_TransformType whichTransformType() =>
      _DocumentTransform_FieldTransform_TransformTypeByTag[$_whichOneof(0)];
  void clearTransformType() => clearField($_whichOneof(0));

  $core.String get fieldPath => $_getS(0, '');
  set fieldPath($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasFieldPath() => $_has(0);
  void clearFieldPath() => clearField(1);

  DocumentTransform_FieldTransform_ServerValue get setToServerValue =>
      $_getN(1);
  set setToServerValue(DocumentTransform_FieldTransform_ServerValue v) {
    setField(2, v);
  }

  $core.bool hasSetToServerValue() => $_has(1);
  void clearSetToServerValue() => clearField(2);

  $0.Value get increment => $_getN(2);
  set increment($0.Value v) {
    setField(3, v);
  }

  $core.bool hasIncrement() => $_has(2);
  void clearIncrement() => clearField(3);

  $0.Value get maximum => $_getN(3);
  set maximum($0.Value v) {
    setField(4, v);
  }

  $core.bool hasMaximum() => $_has(3);
  void clearMaximum() => clearField(4);

  $0.Value get minimum => $_getN(4);
  set minimum($0.Value v) {
    setField(5, v);
  }

  $core.bool hasMinimum() => $_has(4);
  void clearMinimum() => clearField(5);

  $0.ArrayValue get appendMissingElements => $_getN(5);
  set appendMissingElements($0.ArrayValue v) {
    setField(6, v);
  }

  $core.bool hasAppendMissingElements() => $_has(5);
  void clearAppendMissingElements() => clearField(6);

  $0.ArrayValue get removeAllFromArray => $_getN(6);
  set removeAllFromArray($0.ArrayValue v) {
    setField(7, v);
  }

  $core.bool hasRemoveAllFromArray() => $_has(6);
  void clearRemoveAllFromArray() => clearField(7);
}

class DocumentTransform extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DocumentTransform',
      package: const $pb.PackageName('google.firestore.v1'))
    ..aOS(1, 'document')
    ..pc<DocumentTransform_FieldTransform>(2, 'fieldTransforms',
        $pb.PbFieldType.PM, DocumentTransform_FieldTransform.create)
    ..hasRequiredFields = false;

  DocumentTransform._() : super();
  factory DocumentTransform() => create();
  factory DocumentTransform.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DocumentTransform.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DocumentTransform clone() => DocumentTransform()..mergeFromMessage(this);
  DocumentTransform copyWith(void Function(DocumentTransform) updates) =>
      super.copyWith((message) => updates(message as DocumentTransform));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DocumentTransform create() => DocumentTransform._();
  DocumentTransform createEmptyInstance() => create();
  static $pb.PbList<DocumentTransform> createRepeated() =>
      $pb.PbList<DocumentTransform>();
  static DocumentTransform getDefault() =>
      _defaultInstance ??= create()..freeze();
  static DocumentTransform _defaultInstance;

  $core.String get document => $_getS(0, '');
  set document($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasDocument() => $_has(0);
  void clearDocument() => clearField(1);

  $core.List<DocumentTransform_FieldTransform> get fieldTransforms =>
      $_getList(1);
}

class WriteResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WriteResult',
      package: const $pb.PackageName('google.firestore.v1'))
    ..a<$2.Timestamp>(1, 'updateTime', $pb.PbFieldType.OM,
        $2.Timestamp.getDefault, $2.Timestamp.create)
    ..pc<$0.Value>(2, 'transformResults', $pb.PbFieldType.PM, $0.Value.create)
    ..hasRequiredFields = false;

  WriteResult._() : super();
  factory WriteResult() => create();
  factory WriteResult.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WriteResult.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  WriteResult clone() => WriteResult()..mergeFromMessage(this);
  WriteResult copyWith(void Function(WriteResult) updates) =>
      super.copyWith((message) => updates(message as WriteResult));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WriteResult create() => WriteResult._();
  WriteResult createEmptyInstance() => create();
  static $pb.PbList<WriteResult> createRepeated() => $pb.PbList<WriteResult>();
  static WriteResult getDefault() => _defaultInstance ??= create()..freeze();
  static WriteResult _defaultInstance;

  $2.Timestamp get updateTime => $_getN(0);
  set updateTime($2.Timestamp v) {
    setField(1, v);
  }

  $core.bool hasUpdateTime() => $_has(0);
  void clearUpdateTime() => clearField(1);

  $core.List<$0.Value> get transformResults => $_getList(1);
}

class DocumentChange extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DocumentChange',
      package: const $pb.PackageName('google.firestore.v1'))
    ..a<$0.Document>(1, 'document', $pb.PbFieldType.OM, $0.Document.getDefault,
        $0.Document.create)
    ..p<$core.int>(5, 'targetIds', $pb.PbFieldType.P3)
    ..p<$core.int>(6, 'removedTargetIds', $pb.PbFieldType.P3)
    ..hasRequiredFields = false;

  DocumentChange._() : super();
  factory DocumentChange() => create();
  factory DocumentChange.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DocumentChange.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DocumentChange clone() => DocumentChange()..mergeFromMessage(this);
  DocumentChange copyWith(void Function(DocumentChange) updates) =>
      super.copyWith((message) => updates(message as DocumentChange));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DocumentChange create() => DocumentChange._();
  DocumentChange createEmptyInstance() => create();
  static $pb.PbList<DocumentChange> createRepeated() =>
      $pb.PbList<DocumentChange>();
  static DocumentChange getDefault() => _defaultInstance ??= create()..freeze();
  static DocumentChange _defaultInstance;

  $0.Document get document => $_getN(0);
  set document($0.Document v) {
    setField(1, v);
  }

  $core.bool hasDocument() => $_has(0);
  void clearDocument() => clearField(1);

  $core.List<$core.int> get targetIds => $_getList(1);

  $core.List<$core.int> get removedTargetIds => $_getList(2);
}

class DocumentDelete extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DocumentDelete',
      package: const $pb.PackageName('google.firestore.v1'))
    ..aOS(1, 'document')
    ..a<$2.Timestamp>(4, 'readTime', $pb.PbFieldType.OM,
        $2.Timestamp.getDefault, $2.Timestamp.create)
    ..p<$core.int>(6, 'removedTargetIds', $pb.PbFieldType.P3)
    ..hasRequiredFields = false;

  DocumentDelete._() : super();
  factory DocumentDelete() => create();
  factory DocumentDelete.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DocumentDelete.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DocumentDelete clone() => DocumentDelete()..mergeFromMessage(this);
  DocumentDelete copyWith(void Function(DocumentDelete) updates) =>
      super.copyWith((message) => updates(message as DocumentDelete));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DocumentDelete create() => DocumentDelete._();
  DocumentDelete createEmptyInstance() => create();
  static $pb.PbList<DocumentDelete> createRepeated() =>
      $pb.PbList<DocumentDelete>();
  static DocumentDelete getDefault() => _defaultInstance ??= create()..freeze();
  static DocumentDelete _defaultInstance;

  $core.String get document => $_getS(0, '');
  set document($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasDocument() => $_has(0);
  void clearDocument() => clearField(1);

  $2.Timestamp get readTime => $_getN(1);
  set readTime($2.Timestamp v) {
    setField(4, v);
  }

  $core.bool hasReadTime() => $_has(1);
  void clearReadTime() => clearField(4);

  $core.List<$core.int> get removedTargetIds => $_getList(2);
}

class DocumentRemove extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DocumentRemove',
      package: const $pb.PackageName('google.firestore.v1'))
    ..aOS(1, 'document')
    ..p<$core.int>(2, 'removedTargetIds', $pb.PbFieldType.P3)
    ..a<$2.Timestamp>(4, 'readTime', $pb.PbFieldType.OM,
        $2.Timestamp.getDefault, $2.Timestamp.create)
    ..hasRequiredFields = false;

  DocumentRemove._() : super();
  factory DocumentRemove() => create();
  factory DocumentRemove.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DocumentRemove.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DocumentRemove clone() => DocumentRemove()..mergeFromMessage(this);
  DocumentRemove copyWith(void Function(DocumentRemove) updates) =>
      super.copyWith((message) => updates(message as DocumentRemove));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DocumentRemove create() => DocumentRemove._();
  DocumentRemove createEmptyInstance() => create();
  static $pb.PbList<DocumentRemove> createRepeated() =>
      $pb.PbList<DocumentRemove>();
  static DocumentRemove getDefault() => _defaultInstance ??= create()..freeze();
  static DocumentRemove _defaultInstance;

  $core.String get document => $_getS(0, '');
  set document($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasDocument() => $_has(0);
  void clearDocument() => clearField(1);

  $core.List<$core.int> get removedTargetIds => $_getList(1);

  $2.Timestamp get readTime => $_getN(2);
  set readTime($2.Timestamp v) {
    setField(4, v);
  }

  $core.bool hasReadTime() => $_has(2);
  void clearReadTime() => clearField(4);
}

class ExistenceFilter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ExistenceFilter',
      package: const $pb.PackageName('google.firestore.v1'))
    ..a<$core.int>(1, 'targetId', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  ExistenceFilter._() : super();
  factory ExistenceFilter() => create();
  factory ExistenceFilter.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExistenceFilter.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ExistenceFilter clone() => ExistenceFilter()..mergeFromMessage(this);
  ExistenceFilter copyWith(void Function(ExistenceFilter) updates) =>
      super.copyWith((message) => updates(message as ExistenceFilter));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExistenceFilter create() => ExistenceFilter._();
  ExistenceFilter createEmptyInstance() => create();
  static $pb.PbList<ExistenceFilter> createRepeated() =>
      $pb.PbList<ExistenceFilter>();
  static ExistenceFilter getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ExistenceFilter _defaultInstance;

  $core.int get targetId => $_get(0, 0);
  set targetId($core.int v) {
    $_setSignedInt32(0, v);
  }

  $core.bool hasTargetId() => $_has(0);
  void clearTargetId() => clearField(1);

  $core.int get count => $_get(1, 0);
  set count($core.int v) {
    $_setSignedInt32(1, v);
  }

  $core.bool hasCount() => $_has(1);
  void clearCount() => clearField(2);
}

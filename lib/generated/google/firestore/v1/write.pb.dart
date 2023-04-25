///
//  Generated code. Do not modify.
//  source: google/firestore/v1/write.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Write',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 6])
    ..aOM<$0.Document>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'update',
        subBuilder: $0.Document.create)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'delete')
    ..aOM<$1.DocumentMask>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'updateMask',
        subBuilder: $1.DocumentMask.create)
    ..aOM<$1.Precondition>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'currentDocument',
        subBuilder: $1.Precondition.create)
    ..aOM<DocumentTransform>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'transform',
        subBuilder: DocumentTransform.create)
    ..pc<DocumentTransform_FieldTransform>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'updateTransforms',
        $pb.PbFieldType.PM,
        subBuilder: DocumentTransform_FieldTransform.create)
    ..hasRequiredFields = false;

  Write._() : super();
  factory Write({
    $0.Document? update,
    $core.String? delete,
    $1.DocumentMask? updateMask,
    $1.Precondition? currentDocument,
    DocumentTransform? transform,
    $core.Iterable<DocumentTransform_FieldTransform>? updateTransforms,
  }) {
    final _result = create();
    if (update != null) {
      _result.update = update;
    }
    if (delete != null) {
      _result.delete = delete;
    }
    if (updateMask != null) {
      _result.updateMask = updateMask;
    }
    if (currentDocument != null) {
      _result.currentDocument = currentDocument;
    }
    if (transform != null) {
      _result.transform = transform;
    }
    if (updateTransforms != null) {
      _result.updateTransforms.addAll(updateTransforms);
    }
    return _result;
  }
  factory Write.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Write.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Write clone() => Write()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Write copyWith(void Function(Write) updates) =>
      super.copyWith((message) => updates(message as Write))
          as Write; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Write create() => Write._();
  Write createEmptyInstance() => create();
  static $pb.PbList<Write> createRepeated() => $pb.PbList<Write>();
  @$core.pragma('dart2js:noInline')
  static Write getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Write>(create);
  static Write? _defaultInstance;

  Write_Operation whichOperation() => _Write_OperationByTag[$_whichOneof(0)]!;
  void clearOperation() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $0.Document get update => $_getN(0);
  @$pb.TagNumber(1)
  set update($0.Document v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUpdate() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpdate() => clearField(1);
  @$pb.TagNumber(1)
  $0.Document ensureUpdate() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get delete => $_getSZ(1);
  @$pb.TagNumber(2)
  set delete($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDelete() => $_has(1);
  @$pb.TagNumber(2)
  void clearDelete() => clearField(2);

  @$pb.TagNumber(3)
  $1.DocumentMask get updateMask => $_getN(2);
  @$pb.TagNumber(3)
  set updateMask($1.DocumentMask v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUpdateMask() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdateMask() => clearField(3);
  @$pb.TagNumber(3)
  $1.DocumentMask ensureUpdateMask() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Precondition get currentDocument => $_getN(3);
  @$pb.TagNumber(4)
  set currentDocument($1.Precondition v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasCurrentDocument() => $_has(3);
  @$pb.TagNumber(4)
  void clearCurrentDocument() => clearField(4);
  @$pb.TagNumber(4)
  $1.Precondition ensureCurrentDocument() => $_ensure(3);

  @$pb.TagNumber(6)
  DocumentTransform get transform => $_getN(4);
  @$pb.TagNumber(6)
  set transform(DocumentTransform v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasTransform() => $_has(4);
  @$pb.TagNumber(6)
  void clearTransform() => clearField(6);
  @$pb.TagNumber(6)
  DocumentTransform ensureTransform() => $_ensure(4);

  @$pb.TagNumber(7)
  $core.List<DocumentTransform_FieldTransform> get updateTransforms =>
      $_getList(5);
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
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DocumentTransform.FieldTransform',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5, 6, 7])
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fieldPath')
    ..e<DocumentTransform_FieldTransform_ServerValue>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'setToServerValue',
        $pb.PbFieldType.OE,
        defaultOrMaker: DocumentTransform_FieldTransform_ServerValue
            .SERVER_VALUE_UNSPECIFIED,
        valueOf: DocumentTransform_FieldTransform_ServerValue.valueOf,
        enumValues: DocumentTransform_FieldTransform_ServerValue.values)
    ..aOM<$0.Value>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'increment',
        subBuilder: $0.Value.create)
    ..aOM<$0.Value>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'maximum',
        subBuilder: $0.Value.create)
    ..aOM<$0.Value>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'minimum',
        subBuilder: $0.Value.create)
    ..aOM<$0.ArrayValue>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'appendMissingElements',
        subBuilder: $0.ArrayValue.create)
    ..aOM<$0.ArrayValue>(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'removeAllFromArray',
        subBuilder: $0.ArrayValue.create)
    ..hasRequiredFields = false;

  DocumentTransform_FieldTransform._() : super();
  factory DocumentTransform_FieldTransform({
    $core.String? fieldPath,
    DocumentTransform_FieldTransform_ServerValue? setToServerValue,
    $0.Value? increment,
    $0.Value? maximum,
    $0.Value? minimum,
    $0.ArrayValue? appendMissingElements,
    $0.ArrayValue? removeAllFromArray,
  }) {
    final _result = create();
    if (fieldPath != null) {
      _result.fieldPath = fieldPath;
    }
    if (setToServerValue != null) {
      _result.setToServerValue = setToServerValue;
    }
    if (increment != null) {
      _result.increment = increment;
    }
    if (maximum != null) {
      _result.maximum = maximum;
    }
    if (minimum != null) {
      _result.minimum = minimum;
    }
    if (appendMissingElements != null) {
      _result.appendMissingElements = appendMissingElements;
    }
    if (removeAllFromArray != null) {
      _result.removeAllFromArray = removeAllFromArray;
    }
    return _result;
  }
  factory DocumentTransform_FieldTransform.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DocumentTransform_FieldTransform.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DocumentTransform_FieldTransform clone() =>
      DocumentTransform_FieldTransform()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DocumentTransform_FieldTransform copyWith(
          void Function(DocumentTransform_FieldTransform) updates) =>
      super.copyWith(
              (message) => updates(message as DocumentTransform_FieldTransform))
          as DocumentTransform_FieldTransform; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DocumentTransform_FieldTransform create() =>
      DocumentTransform_FieldTransform._();
  DocumentTransform_FieldTransform createEmptyInstance() => create();
  static $pb.PbList<DocumentTransform_FieldTransform> createRepeated() =>
      $pb.PbList<DocumentTransform_FieldTransform>();
  @$core.pragma('dart2js:noInline')
  static DocumentTransform_FieldTransform getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DocumentTransform_FieldTransform>(
          create);
  static DocumentTransform_FieldTransform? _defaultInstance;

  DocumentTransform_FieldTransform_TransformType whichTransformType() =>
      _DocumentTransform_FieldTransform_TransformTypeByTag[$_whichOneof(0)]!;
  void clearTransformType() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get fieldPath => $_getSZ(0);
  @$pb.TagNumber(1)
  set fieldPath($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFieldPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearFieldPath() => clearField(1);

  @$pb.TagNumber(2)
  DocumentTransform_FieldTransform_ServerValue get setToServerValue =>
      $_getN(1);
  @$pb.TagNumber(2)
  set setToServerValue(DocumentTransform_FieldTransform_ServerValue v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSetToServerValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearSetToServerValue() => clearField(2);

  @$pb.TagNumber(3)
  $0.Value get increment => $_getN(2);
  @$pb.TagNumber(3)
  set increment($0.Value v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIncrement() => $_has(2);
  @$pb.TagNumber(3)
  void clearIncrement() => clearField(3);
  @$pb.TagNumber(3)
  $0.Value ensureIncrement() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.Value get maximum => $_getN(3);
  @$pb.TagNumber(4)
  set maximum($0.Value v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasMaximum() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaximum() => clearField(4);
  @$pb.TagNumber(4)
  $0.Value ensureMaximum() => $_ensure(3);

  @$pb.TagNumber(5)
  $0.Value get minimum => $_getN(4);
  @$pb.TagNumber(5)
  set minimum($0.Value v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasMinimum() => $_has(4);
  @$pb.TagNumber(5)
  void clearMinimum() => clearField(5);
  @$pb.TagNumber(5)
  $0.Value ensureMinimum() => $_ensure(4);

  @$pb.TagNumber(6)
  $0.ArrayValue get appendMissingElements => $_getN(5);
  @$pb.TagNumber(6)
  set appendMissingElements($0.ArrayValue v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasAppendMissingElements() => $_has(5);
  @$pb.TagNumber(6)
  void clearAppendMissingElements() => clearField(6);
  @$pb.TagNumber(6)
  $0.ArrayValue ensureAppendMissingElements() => $_ensure(5);

  @$pb.TagNumber(7)
  $0.ArrayValue get removeAllFromArray => $_getN(6);
  @$pb.TagNumber(7)
  set removeAllFromArray($0.ArrayValue v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasRemoveAllFromArray() => $_has(6);
  @$pb.TagNumber(7)
  void clearRemoveAllFromArray() => clearField(7);
  @$pb.TagNumber(7)
  $0.ArrayValue ensureRemoveAllFromArray() => $_ensure(6);
}

class DocumentTransform extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DocumentTransform',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'document')
    ..pc<DocumentTransform_FieldTransform>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fieldTransforms',
        $pb.PbFieldType.PM,
        subBuilder: DocumentTransform_FieldTransform.create)
    ..hasRequiredFields = false;

  DocumentTransform._() : super();
  factory DocumentTransform({
    $core.String? document,
    $core.Iterable<DocumentTransform_FieldTransform>? fieldTransforms,
  }) {
    final _result = create();
    if (document != null) {
      _result.document = document;
    }
    if (fieldTransforms != null) {
      _result.fieldTransforms.addAll(fieldTransforms);
    }
    return _result;
  }
  factory DocumentTransform.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DocumentTransform.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DocumentTransform clone() => DocumentTransform()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DocumentTransform copyWith(void Function(DocumentTransform) updates) =>
      super.copyWith((message) => updates(message as DocumentTransform))
          as DocumentTransform; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DocumentTransform create() => DocumentTransform._();
  DocumentTransform createEmptyInstance() => create();
  static $pb.PbList<DocumentTransform> createRepeated() =>
      $pb.PbList<DocumentTransform>();
  @$core.pragma('dart2js:noInline')
  static DocumentTransform getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DocumentTransform>(create);
  static DocumentTransform? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get document => $_getSZ(0);
  @$pb.TagNumber(1)
  set document($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDocument() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocument() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<DocumentTransform_FieldTransform> get fieldTransforms =>
      $_getList(1);
}

class WriteResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'WriteResult',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOM<$2.Timestamp>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'updateTime',
        subBuilder: $2.Timestamp.create)
    ..pc<$0.Value>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'transformResults',
        $pb.PbFieldType.PM,
        subBuilder: $0.Value.create)
    ..hasRequiredFields = false;

  WriteResult._() : super();
  factory WriteResult({
    $2.Timestamp? updateTime,
    $core.Iterable<$0.Value>? transformResults,
  }) {
    final _result = create();
    if (updateTime != null) {
      _result.updateTime = updateTime;
    }
    if (transformResults != null) {
      _result.transformResults.addAll(transformResults);
    }
    return _result;
  }
  factory WriteResult.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WriteResult.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WriteResult clone() => WriteResult()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WriteResult copyWith(void Function(WriteResult) updates) =>
      super.copyWith((message) => updates(message as WriteResult))
          as WriteResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WriteResult create() => WriteResult._();
  WriteResult createEmptyInstance() => create();
  static $pb.PbList<WriteResult> createRepeated() => $pb.PbList<WriteResult>();
  @$core.pragma('dart2js:noInline')
  static WriteResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WriteResult>(create);
  static WriteResult? _defaultInstance;

  @$pb.TagNumber(1)
  $2.Timestamp get updateTime => $_getN(0);
  @$pb.TagNumber(1)
  set updateTime($2.Timestamp v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUpdateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpdateTime() => clearField(1);
  @$pb.TagNumber(1)
  $2.Timestamp ensureUpdateTime() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$0.Value> get transformResults => $_getList(1);
}

class DocumentChange extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DocumentChange',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOM<$0.Document>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'document',
        subBuilder: $0.Document.create)
    ..p<$core.int>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'targetIds',
        $pb.PbFieldType.P3)
    ..p<$core.int>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'removedTargetIds',
        $pb.PbFieldType.P3)
    ..hasRequiredFields = false;

  DocumentChange._() : super();
  factory DocumentChange({
    $0.Document? document,
    $core.Iterable<$core.int>? targetIds,
    $core.Iterable<$core.int>? removedTargetIds,
  }) {
    final _result = create();
    if (document != null) {
      _result.document = document;
    }
    if (targetIds != null) {
      _result.targetIds.addAll(targetIds);
    }
    if (removedTargetIds != null) {
      _result.removedTargetIds.addAll(removedTargetIds);
    }
    return _result;
  }
  factory DocumentChange.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DocumentChange.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DocumentChange clone() => DocumentChange()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DocumentChange copyWith(void Function(DocumentChange) updates) =>
      super.copyWith((message) => updates(message as DocumentChange))
          as DocumentChange; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DocumentChange create() => DocumentChange._();
  DocumentChange createEmptyInstance() => create();
  static $pb.PbList<DocumentChange> createRepeated() =>
      $pb.PbList<DocumentChange>();
  @$core.pragma('dart2js:noInline')
  static DocumentChange getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DocumentChange>(create);
  static DocumentChange? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Document get document => $_getN(0);
  @$pb.TagNumber(1)
  set document($0.Document v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDocument() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocument() => clearField(1);
  @$pb.TagNumber(1)
  $0.Document ensureDocument() => $_ensure(0);

  @$pb.TagNumber(5)
  $core.List<$core.int> get targetIds => $_getList(1);

  @$pb.TagNumber(6)
  $core.List<$core.int> get removedTargetIds => $_getList(2);
}

class DocumentDelete extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DocumentDelete',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'document')
    ..aOM<$2.Timestamp>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'readTime',
        subBuilder: $2.Timestamp.create)
    ..p<$core.int>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'removedTargetIds',
        $pb.PbFieldType.P3)
    ..hasRequiredFields = false;

  DocumentDelete._() : super();
  factory DocumentDelete({
    $core.String? document,
    $2.Timestamp? readTime,
    $core.Iterable<$core.int>? removedTargetIds,
  }) {
    final _result = create();
    if (document != null) {
      _result.document = document;
    }
    if (readTime != null) {
      _result.readTime = readTime;
    }
    if (removedTargetIds != null) {
      _result.removedTargetIds.addAll(removedTargetIds);
    }
    return _result;
  }
  factory DocumentDelete.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DocumentDelete.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DocumentDelete clone() => DocumentDelete()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DocumentDelete copyWith(void Function(DocumentDelete) updates) =>
      super.copyWith((message) => updates(message as DocumentDelete))
          as DocumentDelete; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DocumentDelete create() => DocumentDelete._();
  DocumentDelete createEmptyInstance() => create();
  static $pb.PbList<DocumentDelete> createRepeated() =>
      $pb.PbList<DocumentDelete>();
  @$core.pragma('dart2js:noInline')
  static DocumentDelete getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DocumentDelete>(create);
  static DocumentDelete? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get document => $_getSZ(0);
  @$pb.TagNumber(1)
  set document($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDocument() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocument() => clearField(1);

  @$pb.TagNumber(4)
  $2.Timestamp get readTime => $_getN(1);
  @$pb.TagNumber(4)
  set readTime($2.Timestamp v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasReadTime() => $_has(1);
  @$pb.TagNumber(4)
  void clearReadTime() => clearField(4);
  @$pb.TagNumber(4)
  $2.Timestamp ensureReadTime() => $_ensure(1);

  @$pb.TagNumber(6)
  $core.List<$core.int> get removedTargetIds => $_getList(2);
}

class DocumentRemove extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DocumentRemove',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'document')
    ..p<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'removedTargetIds',
        $pb.PbFieldType.P3)
    ..aOM<$2.Timestamp>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'readTime',
        subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false;

  DocumentRemove._() : super();
  factory DocumentRemove({
    $core.String? document,
    $core.Iterable<$core.int>? removedTargetIds,
    $2.Timestamp? readTime,
  }) {
    final _result = create();
    if (document != null) {
      _result.document = document;
    }
    if (removedTargetIds != null) {
      _result.removedTargetIds.addAll(removedTargetIds);
    }
    if (readTime != null) {
      _result.readTime = readTime;
    }
    return _result;
  }
  factory DocumentRemove.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DocumentRemove.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DocumentRemove clone() => DocumentRemove()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DocumentRemove copyWith(void Function(DocumentRemove) updates) =>
      super.copyWith((message) => updates(message as DocumentRemove))
          as DocumentRemove; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DocumentRemove create() => DocumentRemove._();
  DocumentRemove createEmptyInstance() => create();
  static $pb.PbList<DocumentRemove> createRepeated() =>
      $pb.PbList<DocumentRemove>();
  @$core.pragma('dart2js:noInline')
  static DocumentRemove getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DocumentRemove>(create);
  static DocumentRemove? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get document => $_getSZ(0);
  @$pb.TagNumber(1)
  set document($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDocument() => $_has(0);
  @$pb.TagNumber(1)
  void clearDocument() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get removedTargetIds => $_getList(1);

  @$pb.TagNumber(4)
  $2.Timestamp get readTime => $_getN(2);
  @$pb.TagNumber(4)
  set readTime($2.Timestamp v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasReadTime() => $_has(2);
  @$pb.TagNumber(4)
  void clearReadTime() => clearField(4);
  @$pb.TagNumber(4)
  $2.Timestamp ensureReadTime() => $_ensure(2);
}

class ExistenceFilter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ExistenceFilter',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'targetId',
        $pb.PbFieldType.O3)
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'count',
        $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  ExistenceFilter._() : super();
  factory ExistenceFilter({
    $core.int? targetId,
    $core.int? count,
  }) {
    final _result = create();
    if (targetId != null) {
      _result.targetId = targetId;
    }
    if (count != null) {
      _result.count = count;
    }
    return _result;
  }
  factory ExistenceFilter.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExistenceFilter.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ExistenceFilter clone() => ExistenceFilter()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ExistenceFilter copyWith(void Function(ExistenceFilter) updates) =>
      super.copyWith((message) => updates(message as ExistenceFilter))
          as ExistenceFilter; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExistenceFilter create() => ExistenceFilter._();
  ExistenceFilter createEmptyInstance() => create();
  static $pb.PbList<ExistenceFilter> createRepeated() =>
      $pb.PbList<ExistenceFilter>();
  @$core.pragma('dart2js:noInline')
  static ExistenceFilter getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExistenceFilter>(create);
  static ExistenceFilter? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get targetId => $_getIZ(0);
  @$pb.TagNumber(1)
  set targetId($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTargetId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTargetId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

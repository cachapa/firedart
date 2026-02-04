// This is a generated file - do not edit.
//
// Generated from google/firestore/v1/common.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/timestamp.pb.dart'
    as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// A set of field paths on a document.
/// Used to restrict a get or update operation on a document to a subset of its
/// fields.
/// This is different from standard field masks, as this is always scoped to a
/// [Document][google.firestore.v1.Document], and takes in account the dynamic
/// nature of [Value][google.firestore.v1.Value].
class DocumentMask extends $pb.GeneratedMessage {
  factory DocumentMask({
    $core.Iterable<$core.String>? fieldPaths,
  }) {
    final result = create();
    if (fieldPaths != null) result.fieldPaths.addAll(fieldPaths);
    return result;
  }

  DocumentMask._();

  factory DocumentMask.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DocumentMask.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DocumentMask',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'fieldPaths')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DocumentMask clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DocumentMask copyWith(void Function(DocumentMask) updates) =>
      super.copyWith((message) => updates(message as DocumentMask))
          as DocumentMask;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DocumentMask create() => DocumentMask._();
  @$core.override
  DocumentMask createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DocumentMask getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DocumentMask>(create);
  static DocumentMask? _defaultInstance;

  /// The list of field paths in the mask. See
  /// [Document.fields][google.firestore.v1.Document.fields] for a field path
  /// syntax reference.
  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get fieldPaths => $_getList(0);
}

enum Precondition_ConditionType { exists, updateTime, notSet }

/// A precondition on a document, used for conditional operations.
class Precondition extends $pb.GeneratedMessage {
  factory Precondition({
    $core.bool? exists,
    $0.Timestamp? updateTime,
  }) {
    final result = create();
    if (exists != null) result.exists = exists;
    if (updateTime != null) result.updateTime = updateTime;
    return result;
  }

  Precondition._();

  factory Precondition.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Precondition.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Precondition_ConditionType>
      _Precondition_ConditionTypeByTag = {
    1: Precondition_ConditionType.exists,
    2: Precondition_ConditionType.updateTime,
    0: Precondition_ConditionType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Precondition',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOB(1, _omitFieldNames ? '' : 'exists')
    ..aOM<$0.Timestamp>(2, _omitFieldNames ? '' : 'updateTime',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Precondition clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Precondition copyWith(void Function(Precondition) updates) =>
      super.copyWith((message) => updates(message as Precondition))
          as Precondition;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Precondition create() => Precondition._();
  @$core.override
  Precondition createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Precondition getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Precondition>(create);
  static Precondition? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  Precondition_ConditionType whichConditionType() =>
      _Precondition_ConditionTypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearConditionType() => $_clearField($_whichOneof(0));

  /// When set to `true`, the target document must exist.
  /// When set to `false`, the target document must not exist.
  @$pb.TagNumber(1)
  $core.bool get exists => $_getBF(0);
  @$pb.TagNumber(1)
  set exists($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasExists() => $_has(0);
  @$pb.TagNumber(1)
  void clearExists() => $_clearField(1);

  /// When set, the target document must exist and have been last updated at
  /// that time. Timestamp must be microsecond aligned.
  @$pb.TagNumber(2)
  $0.Timestamp get updateTime => $_getN(1);
  @$pb.TagNumber(2)
  set updateTime($0.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasUpdateTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateTime() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Timestamp ensureUpdateTime() => $_ensure(1);
}

/// Options for a transaction that can be used to read and write documents.
///
/// Firestore does not allow 3rd party auth requests to create read-write.
/// transactions.
class TransactionOptions_ReadWrite extends $pb.GeneratedMessage {
  factory TransactionOptions_ReadWrite({
    $core.List<$core.int>? retryTransaction,
  }) {
    final result = create();
    if (retryTransaction != null) result.retryTransaction = retryTransaction;
    return result;
  }

  TransactionOptions_ReadWrite._();

  factory TransactionOptions_ReadWrite.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransactionOptions_ReadWrite.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransactionOptions.ReadWrite',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'retryTransaction', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionOptions_ReadWrite clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionOptions_ReadWrite copyWith(
          void Function(TransactionOptions_ReadWrite) updates) =>
      super.copyWith(
              (message) => updates(message as TransactionOptions_ReadWrite))
          as TransactionOptions_ReadWrite;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionOptions_ReadWrite create() =>
      TransactionOptions_ReadWrite._();
  @$core.override
  TransactionOptions_ReadWrite createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransactionOptions_ReadWrite getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionOptions_ReadWrite>(create);
  static TransactionOptions_ReadWrite? _defaultInstance;

  /// An optional transaction to retry.
  @$pb.TagNumber(1)
  $core.List<$core.int> get retryTransaction => $_getN(0);
  @$pb.TagNumber(1)
  set retryTransaction($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRetryTransaction() => $_has(0);
  @$pb.TagNumber(1)
  void clearRetryTransaction() => $_clearField(1);
}

enum TransactionOptions_ReadOnly_ConsistencySelector { readTime, notSet }

/// Options for a transaction that can only be used to read documents.
class TransactionOptions_ReadOnly extends $pb.GeneratedMessage {
  factory TransactionOptions_ReadOnly({
    $0.Timestamp? readTime,
  }) {
    final result = create();
    if (readTime != null) result.readTime = readTime;
    return result;
  }

  TransactionOptions_ReadOnly._();

  factory TransactionOptions_ReadOnly.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransactionOptions_ReadOnly.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core
      .Map<$core.int, TransactionOptions_ReadOnly_ConsistencySelector>
      _TransactionOptions_ReadOnly_ConsistencySelectorByTag = {
    2: TransactionOptions_ReadOnly_ConsistencySelector.readTime,
    0: TransactionOptions_ReadOnly_ConsistencySelector.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransactionOptions.ReadOnly',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [2])
    ..aOM<$0.Timestamp>(2, _omitFieldNames ? '' : 'readTime',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionOptions_ReadOnly clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionOptions_ReadOnly copyWith(
          void Function(TransactionOptions_ReadOnly) updates) =>
      super.copyWith(
              (message) => updates(message as TransactionOptions_ReadOnly))
          as TransactionOptions_ReadOnly;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionOptions_ReadOnly create() =>
      TransactionOptions_ReadOnly._();
  @$core.override
  TransactionOptions_ReadOnly createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransactionOptions_ReadOnly getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionOptions_ReadOnly>(create);
  static TransactionOptions_ReadOnly? _defaultInstance;

  @$pb.TagNumber(2)
  TransactionOptions_ReadOnly_ConsistencySelector whichConsistencySelector() =>
      _TransactionOptions_ReadOnly_ConsistencySelectorByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  void clearConsistencySelector() => $_clearField($_whichOneof(0));

  /// Reads documents at the given time.
  ///
  /// This must be a microsecond precision timestamp within the past one
  /// hour, or if Point-in-Time Recovery is enabled, can additionally be a
  /// whole minute timestamp within the past 7 days.
  @$pb.TagNumber(2)
  $0.Timestamp get readTime => $_getN(0);
  @$pb.TagNumber(2)
  set readTime($0.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasReadTime() => $_has(0);
  @$pb.TagNumber(2)
  void clearReadTime() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Timestamp ensureReadTime() => $_ensure(0);
}

enum TransactionOptions_Mode { readOnly, readWrite, notSet }

/// Options for creating a new transaction.
class TransactionOptions extends $pb.GeneratedMessage {
  factory TransactionOptions({
    TransactionOptions_ReadOnly? readOnly,
    TransactionOptions_ReadWrite? readWrite,
  }) {
    final result = create();
    if (readOnly != null) result.readOnly = readOnly;
    if (readWrite != null) result.readWrite = readWrite;
    return result;
  }

  TransactionOptions._();

  factory TransactionOptions.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransactionOptions.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, TransactionOptions_Mode>
      _TransactionOptions_ModeByTag = {
    2: TransactionOptions_Mode.readOnly,
    3: TransactionOptions_Mode.readWrite,
    0: TransactionOptions_Mode.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransactionOptions',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOM<TransactionOptions_ReadOnly>(2, _omitFieldNames ? '' : 'readOnly',
        subBuilder: TransactionOptions_ReadOnly.create)
    ..aOM<TransactionOptions_ReadWrite>(3, _omitFieldNames ? '' : 'readWrite',
        subBuilder: TransactionOptions_ReadWrite.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionOptions clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransactionOptions copyWith(void Function(TransactionOptions) updates) =>
      super.copyWith((message) => updates(message as TransactionOptions))
          as TransactionOptions;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionOptions create() => TransactionOptions._();
  @$core.override
  TransactionOptions createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TransactionOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionOptions>(create);
  static TransactionOptions? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  TransactionOptions_Mode whichMode() =>
      _TransactionOptions_ModeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearMode() => $_clearField($_whichOneof(0));

  /// The transaction can only be used for read operations.
  @$pb.TagNumber(2)
  TransactionOptions_ReadOnly get readOnly => $_getN(0);
  @$pb.TagNumber(2)
  set readOnly(TransactionOptions_ReadOnly value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasReadOnly() => $_has(0);
  @$pb.TagNumber(2)
  void clearReadOnly() => $_clearField(2);
  @$pb.TagNumber(2)
  TransactionOptions_ReadOnly ensureReadOnly() => $_ensure(0);

  /// The transaction can be used for both read and write operations.
  @$pb.TagNumber(3)
  TransactionOptions_ReadWrite get readWrite => $_getN(1);
  @$pb.TagNumber(3)
  set readWrite(TransactionOptions_ReadWrite value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasReadWrite() => $_has(1);
  @$pb.TagNumber(3)
  void clearReadWrite() => $_clearField(3);
  @$pb.TagNumber(3)
  TransactionOptions_ReadWrite ensureReadWrite() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');

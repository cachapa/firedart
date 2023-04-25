///
//  Generated code. Do not modify.
//  source: google/firestore/v1/common.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../protobuf/timestamp.pb.dart' as $0;

class DocumentMask extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DocumentMask',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'fieldPaths')
    ..hasRequiredFields = false;

  DocumentMask._() : super();
  factory DocumentMask({
    $core.Iterable<$core.String>? fieldPaths,
  }) {
    final _result = create();
    if (fieldPaths != null) {
      _result.fieldPaths.addAll(fieldPaths);
    }
    return _result;
  }
  factory DocumentMask.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DocumentMask.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DocumentMask clone() => DocumentMask()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DocumentMask copyWith(void Function(DocumentMask) updates) =>
      super.copyWith((message) => updates(message as DocumentMask))
          as DocumentMask; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DocumentMask create() => DocumentMask._();
  DocumentMask createEmptyInstance() => create();
  static $pb.PbList<DocumentMask> createRepeated() =>
      $pb.PbList<DocumentMask>();
  @$core.pragma('dart2js:noInline')
  static DocumentMask getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DocumentMask>(create);
  static DocumentMask? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get fieldPaths => $_getList(0);
}

enum Precondition_ConditionType { exists, updateTime, notSet }

class Precondition extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Precondition_ConditionType>
      _Precondition_ConditionTypeByTag = {
    1: Precondition_ConditionType.exists,
    2: Precondition_ConditionType.updateTime,
    0: Precondition_ConditionType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Precondition',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOB(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'exists')
    ..aOM<$0.Timestamp>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'updateTime',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  Precondition._() : super();
  factory Precondition({
    $core.bool? exists,
    $0.Timestamp? updateTime,
  }) {
    final _result = create();
    if (exists != null) {
      _result.exists = exists;
    }
    if (updateTime != null) {
      _result.updateTime = updateTime;
    }
    return _result;
  }
  factory Precondition.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Precondition.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Precondition clone() => Precondition()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Precondition copyWith(void Function(Precondition) updates) =>
      super.copyWith((message) => updates(message as Precondition))
          as Precondition; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Precondition create() => Precondition._();
  Precondition createEmptyInstance() => create();
  static $pb.PbList<Precondition> createRepeated() =>
      $pb.PbList<Precondition>();
  @$core.pragma('dart2js:noInline')
  static Precondition getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Precondition>(create);
  static Precondition? _defaultInstance;

  Precondition_ConditionType whichConditionType() =>
      _Precondition_ConditionTypeByTag[$_whichOneof(0)]!;
  void clearConditionType() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.bool get exists => $_getBF(0);
  @$pb.TagNumber(1)
  set exists($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasExists() => $_has(0);
  @$pb.TagNumber(1)
  void clearExists() => clearField(1);

  @$pb.TagNumber(2)
  $0.Timestamp get updateTime => $_getN(1);
  @$pb.TagNumber(2)
  set updateTime($0.Timestamp v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUpdateTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateTime() => clearField(2);
  @$pb.TagNumber(2)
  $0.Timestamp ensureUpdateTime() => $_ensure(1);
}

class TransactionOptions_ReadWrite extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TransactionOptions.ReadWrite',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'retryTransaction',
        $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  TransactionOptions_ReadWrite._() : super();
  factory TransactionOptions_ReadWrite({
    $core.List<$core.int>? retryTransaction,
  }) {
    final _result = create();
    if (retryTransaction != null) {
      _result.retryTransaction = retryTransaction;
    }
    return _result;
  }
  factory TransactionOptions_ReadWrite.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TransactionOptions_ReadWrite.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TransactionOptions_ReadWrite clone() =>
      TransactionOptions_ReadWrite()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TransactionOptions_ReadWrite copyWith(
          void Function(TransactionOptions_ReadWrite) updates) =>
      super.copyWith(
              (message) => updates(message as TransactionOptions_ReadWrite))
          as TransactionOptions_ReadWrite; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionOptions_ReadWrite create() =>
      TransactionOptions_ReadWrite._();
  TransactionOptions_ReadWrite createEmptyInstance() => create();
  static $pb.PbList<TransactionOptions_ReadWrite> createRepeated() =>
      $pb.PbList<TransactionOptions_ReadWrite>();
  @$core.pragma('dart2js:noInline')
  static TransactionOptions_ReadWrite getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionOptions_ReadWrite>(create);
  static TransactionOptions_ReadWrite? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get retryTransaction => $_getN(0);
  @$pb.TagNumber(1)
  set retryTransaction($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRetryTransaction() => $_has(0);
  @$pb.TagNumber(1)
  void clearRetryTransaction() => clearField(1);
}

enum TransactionOptions_ReadOnly_ConsistencySelector { readTime, notSet }

class TransactionOptions_ReadOnly extends $pb.GeneratedMessage {
  static const $core
          .Map<$core.int, TransactionOptions_ReadOnly_ConsistencySelector>
      _TransactionOptions_ReadOnly_ConsistencySelectorByTag = {
    2: TransactionOptions_ReadOnly_ConsistencySelector.readTime,
    0: TransactionOptions_ReadOnly_ConsistencySelector.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TransactionOptions.ReadOnly',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [2])
    ..aOM<$0.Timestamp>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'readTime',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  TransactionOptions_ReadOnly._() : super();
  factory TransactionOptions_ReadOnly({
    $0.Timestamp? readTime,
  }) {
    final _result = create();
    if (readTime != null) {
      _result.readTime = readTime;
    }
    return _result;
  }
  factory TransactionOptions_ReadOnly.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TransactionOptions_ReadOnly.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TransactionOptions_ReadOnly clone() =>
      TransactionOptions_ReadOnly()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TransactionOptions_ReadOnly copyWith(
          void Function(TransactionOptions_ReadOnly) updates) =>
      super.copyWith(
              (message) => updates(message as TransactionOptions_ReadOnly))
          as TransactionOptions_ReadOnly; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionOptions_ReadOnly create() =>
      TransactionOptions_ReadOnly._();
  TransactionOptions_ReadOnly createEmptyInstance() => create();
  static $pb.PbList<TransactionOptions_ReadOnly> createRepeated() =>
      $pb.PbList<TransactionOptions_ReadOnly>();
  @$core.pragma('dart2js:noInline')
  static TransactionOptions_ReadOnly getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionOptions_ReadOnly>(create);
  static TransactionOptions_ReadOnly? _defaultInstance;

  TransactionOptions_ReadOnly_ConsistencySelector whichConsistencySelector() =>
      _TransactionOptions_ReadOnly_ConsistencySelectorByTag[$_whichOneof(0)]!;
  void clearConsistencySelector() => clearField($_whichOneof(0));

  @$pb.TagNumber(2)
  $0.Timestamp get readTime => $_getN(0);
  @$pb.TagNumber(2)
  set readTime($0.Timestamp v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasReadTime() => $_has(0);
  @$pb.TagNumber(2)
  void clearReadTime() => clearField(2);
  @$pb.TagNumber(2)
  $0.Timestamp ensureReadTime() => $_ensure(0);
}

enum TransactionOptions_Mode { readOnly, readWrite, notSet }

class TransactionOptions extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, TransactionOptions_Mode>
      _TransactionOptions_ModeByTag = {
    2: TransactionOptions_Mode.readOnly,
    3: TransactionOptions_Mode.readWrite,
    0: TransactionOptions_Mode.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'TransactionOptions',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOM<TransactionOptions_ReadOnly>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'readOnly',
        subBuilder: TransactionOptions_ReadOnly.create)
    ..aOM<TransactionOptions_ReadWrite>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'readWrite',
        subBuilder: TransactionOptions_ReadWrite.create)
    ..hasRequiredFields = false;

  TransactionOptions._() : super();
  factory TransactionOptions({
    TransactionOptions_ReadOnly? readOnly,
    TransactionOptions_ReadWrite? readWrite,
  }) {
    final _result = create();
    if (readOnly != null) {
      _result.readOnly = readOnly;
    }
    if (readWrite != null) {
      _result.readWrite = readWrite;
    }
    return _result;
  }
  factory TransactionOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TransactionOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TransactionOptions clone() => TransactionOptions()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TransactionOptions copyWith(void Function(TransactionOptions) updates) =>
      super.copyWith((message) => updates(message as TransactionOptions))
          as TransactionOptions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionOptions create() => TransactionOptions._();
  TransactionOptions createEmptyInstance() => create();
  static $pb.PbList<TransactionOptions> createRepeated() =>
      $pb.PbList<TransactionOptions>();
  @$core.pragma('dart2js:noInline')
  static TransactionOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransactionOptions>(create);
  static TransactionOptions? _defaultInstance;

  TransactionOptions_Mode whichMode() =>
      _TransactionOptions_ModeByTag[$_whichOneof(0)]!;
  void clearMode() => clearField($_whichOneof(0));

  @$pb.TagNumber(2)
  TransactionOptions_ReadOnly get readOnly => $_getN(0);
  @$pb.TagNumber(2)
  set readOnly(TransactionOptions_ReadOnly v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasReadOnly() => $_has(0);
  @$pb.TagNumber(2)
  void clearReadOnly() => clearField(2);
  @$pb.TagNumber(2)
  TransactionOptions_ReadOnly ensureReadOnly() => $_ensure(0);

  @$pb.TagNumber(3)
  TransactionOptions_ReadWrite get readWrite => $_getN(1);
  @$pb.TagNumber(3)
  set readWrite(TransactionOptions_ReadWrite v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasReadWrite() => $_has(1);
  @$pb.TagNumber(3)
  void clearReadWrite() => clearField(3);
  @$pb.TagNumber(3)
  TransactionOptions_ReadWrite ensureReadWrite() => $_ensure(1);
}

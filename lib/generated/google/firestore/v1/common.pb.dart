///
//  Generated code. Do not modify.
//  source: google/firestore/v1/common.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core
    show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../protobuf/timestamp.pb.dart' as $0;

class DocumentMask extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DocumentMask',
      package: const $pb.PackageName('google.firestore.v1'))
    ..pPS(1, 'fieldPaths')
    ..hasRequiredFields = false;

  DocumentMask._() : super();
  factory DocumentMask() => create();
  factory DocumentMask.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DocumentMask.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DocumentMask clone() => DocumentMask()..mergeFromMessage(this);
  DocumentMask copyWith(void Function(DocumentMask) updates) =>
      super.copyWith((message) => updates(message as DocumentMask));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DocumentMask create() => DocumentMask._();
  DocumentMask createEmptyInstance() => create();
  static $pb.PbList<DocumentMask> createRepeated() =>
      $pb.PbList<DocumentMask>();
  static DocumentMask getDefault() => _defaultInstance ??= create()..freeze();
  static DocumentMask _defaultInstance;

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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Precondition',
      package: const $pb.PackageName('google.firestore.v1'))
    ..oo(0, [1, 2])
    ..aOB(1, 'exists')
    ..a<$0.Timestamp>(2, 'updateTime', $pb.PbFieldType.OM,
        $0.Timestamp.getDefault, $0.Timestamp.create)
    ..hasRequiredFields = false;

  Precondition._() : super();
  factory Precondition() => create();
  factory Precondition.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Precondition.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Precondition clone() => Precondition()..mergeFromMessage(this);
  Precondition copyWith(void Function(Precondition) updates) =>
      super.copyWith((message) => updates(message as Precondition));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Precondition create() => Precondition._();
  Precondition createEmptyInstance() => create();
  static $pb.PbList<Precondition> createRepeated() =>
      $pb.PbList<Precondition>();
  static Precondition getDefault() => _defaultInstance ??= create()..freeze();
  static Precondition _defaultInstance;

  Precondition_ConditionType whichConditionType() =>
      _Precondition_ConditionTypeByTag[$_whichOneof(0)];
  void clearConditionType() => clearField($_whichOneof(0));

  $core.bool get exists => $_get(0, false);
  set exists($core.bool v) {
    $_setBool(0, v);
  }

  $core.bool hasExists() => $_has(0);
  void clearExists() => clearField(1);

  $0.Timestamp get updateTime => $_getN(1);
  set updateTime($0.Timestamp v) {
    setField(2, v);
  }

  $core.bool hasUpdateTime() => $_has(1);
  void clearUpdateTime() => clearField(2);
}

class TransactionOptions_ReadWrite extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'TransactionOptions.ReadWrite',
      package: const $pb.PackageName('google.firestore.v1'))
    ..a<$core.List<$core.int>>(1, 'retryTransaction', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  TransactionOptions_ReadWrite._() : super();
  factory TransactionOptions_ReadWrite() => create();
  factory TransactionOptions_ReadWrite.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TransactionOptions_ReadWrite.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  TransactionOptions_ReadWrite clone() =>
      TransactionOptions_ReadWrite()..mergeFromMessage(this);
  TransactionOptions_ReadWrite copyWith(
          void Function(TransactionOptions_ReadWrite) updates) =>
      super.copyWith(
          (message) => updates(message as TransactionOptions_ReadWrite));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionOptions_ReadWrite create() =>
      TransactionOptions_ReadWrite._();
  TransactionOptions_ReadWrite createEmptyInstance() => create();
  static $pb.PbList<TransactionOptions_ReadWrite> createRepeated() =>
      $pb.PbList<TransactionOptions_ReadWrite>();
  static TransactionOptions_ReadWrite getDefault() =>
      _defaultInstance ??= create()..freeze();
  static TransactionOptions_ReadWrite _defaultInstance;

  $core.List<$core.int> get retryTransaction => $_getN(0);
  set retryTransaction($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasRetryTransaction() => $_has(0);
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
      'TransactionOptions.ReadOnly',
      package: const $pb.PackageName('google.firestore.v1'))
    ..oo(0, [2])
    ..a<$0.Timestamp>(2, 'readTime', $pb.PbFieldType.OM,
        $0.Timestamp.getDefault, $0.Timestamp.create)
    ..hasRequiredFields = false;

  TransactionOptions_ReadOnly._() : super();
  factory TransactionOptions_ReadOnly() => create();
  factory TransactionOptions_ReadOnly.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TransactionOptions_ReadOnly.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  TransactionOptions_ReadOnly clone() =>
      TransactionOptions_ReadOnly()..mergeFromMessage(this);
  TransactionOptions_ReadOnly copyWith(
          void Function(TransactionOptions_ReadOnly) updates) =>
      super.copyWith(
          (message) => updates(message as TransactionOptions_ReadOnly));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionOptions_ReadOnly create() =>
      TransactionOptions_ReadOnly._();
  TransactionOptions_ReadOnly createEmptyInstance() => create();
  static $pb.PbList<TransactionOptions_ReadOnly> createRepeated() =>
      $pb.PbList<TransactionOptions_ReadOnly>();
  static TransactionOptions_ReadOnly getDefault() =>
      _defaultInstance ??= create()..freeze();
  static TransactionOptions_ReadOnly _defaultInstance;

  TransactionOptions_ReadOnly_ConsistencySelector whichConsistencySelector() =>
      _TransactionOptions_ReadOnly_ConsistencySelectorByTag[$_whichOneof(0)];
  void clearConsistencySelector() => clearField($_whichOneof(0));

  $0.Timestamp get readTime => $_getN(0);
  set readTime($0.Timestamp v) {
    setField(2, v);
  }

  $core.bool hasReadTime() => $_has(0);
  void clearReadTime() => clearField(2);
}

enum TransactionOptions_Mode { readOnly, readWrite, notSet }

class TransactionOptions extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, TransactionOptions_Mode>
      _TransactionOptions_ModeByTag = {
    2: TransactionOptions_Mode.readOnly,
    3: TransactionOptions_Mode.readWrite,
    0: TransactionOptions_Mode.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TransactionOptions',
      package: const $pb.PackageName('google.firestore.v1'))
    ..oo(0, [2, 3])
    ..a<TransactionOptions_ReadOnly>(
        2,
        'readOnly',
        $pb.PbFieldType.OM,
        TransactionOptions_ReadOnly.getDefault,
        TransactionOptions_ReadOnly.create)
    ..a<TransactionOptions_ReadWrite>(
        3,
        'readWrite',
        $pb.PbFieldType.OM,
        TransactionOptions_ReadWrite.getDefault,
        TransactionOptions_ReadWrite.create)
    ..hasRequiredFields = false;

  TransactionOptions._() : super();
  factory TransactionOptions() => create();
  factory TransactionOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TransactionOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  TransactionOptions clone() => TransactionOptions()..mergeFromMessage(this);
  TransactionOptions copyWith(void Function(TransactionOptions) updates) =>
      super.copyWith((message) => updates(message as TransactionOptions));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionOptions create() => TransactionOptions._();
  TransactionOptions createEmptyInstance() => create();
  static $pb.PbList<TransactionOptions> createRepeated() =>
      $pb.PbList<TransactionOptions>();
  static TransactionOptions getDefault() =>
      _defaultInstance ??= create()..freeze();
  static TransactionOptions _defaultInstance;

  TransactionOptions_Mode whichMode() =>
      _TransactionOptions_ModeByTag[$_whichOneof(0)];
  void clearMode() => clearField($_whichOneof(0));

  TransactionOptions_ReadOnly get readOnly => $_getN(0);
  set readOnly(TransactionOptions_ReadOnly v) {
    setField(2, v);
  }

  $core.bool hasReadOnly() => $_has(0);
  void clearReadOnly() => clearField(2);

  TransactionOptions_ReadWrite get readWrite => $_getN(1);
  set readWrite(TransactionOptions_ReadWrite v) {
    setField(3, v);
  }

  $core.bool hasReadWrite() => $_has(1);
  void clearReadWrite() => clearField(3);
}

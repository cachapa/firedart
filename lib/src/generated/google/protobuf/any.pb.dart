///
//  Generated code. Do not modify.
//  source: google/protobuf/any.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'package:protobuf/src/protobuf/mixins/well_known.dart' as $mixin;

class Any extends $pb.GeneratedMessage with $mixin.AnyMixin {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Any',
      package: const $pb.PackageName('google.protobuf'),
      createEmptyInstance: create,
      toProto3Json: $mixin.AnyMixin.toProto3JsonHelper,
      fromProto3Json: $mixin.AnyMixin.fromProto3JsonHelper)
    ..aOS(1, 'typeUrl')
    ..a<$core.List<$core.int>>(2, 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  Any._() : super();
  factory Any() => create();
  factory Any.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Any.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Any clone() => Any()..mergeFromMessage(this);
  Any copyWith(void Function(Any) updates) =>
      super.copyWith((message) => updates(message as Any));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Any create() => Any._();
  Any createEmptyInstance() => create();
  static $pb.PbList<Any> createRepeated() => $pb.PbList<Any>();
  @$core.pragma('dart2js:noInline')
  static Any getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Any>(create);
  static Any _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get typeUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set typeUrl($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTypeUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearTypeUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  /// Creates a new [Any] encoding [message].
  ///
  /// The [typeUrl] will be [typeUrlPrefix]/`fullName` where `fullName` is
  /// the fully qualified name of the type of [message].
  static Any pack($pb.GeneratedMessage message,
      {$core.String typeUrlPrefix = 'type.googleapis.com'}) {
    final result = create();
    $mixin.AnyMixin.packIntoAny(result, message, typeUrlPrefix: typeUrlPrefix);
    return result;
  }
}

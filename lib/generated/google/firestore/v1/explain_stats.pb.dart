// This is a generated file - do not edit.
//
// Generated from google/firestore/v1/explain_stats.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/any.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Pipeline explain stats.
///
/// Depending on the explain options in the original request, this can contain
/// the optimized plan and / or execution stats.
class ExplainStats extends $pb.GeneratedMessage {
  factory ExplainStats({
    $0.Any? data,
  }) {
    final result = create();
    if (data != null) result.data = data;
    return result;
  }

  ExplainStats._();

  factory ExplainStats.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExplainStats.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExplainStats',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..aOM<$0.Any>(1, _omitFieldNames ? '' : 'data', subBuilder: $0.Any.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExplainStats clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExplainStats copyWith(void Function(ExplainStats) updates) =>
      super.copyWith((message) => updates(message as ExplainStats))
          as ExplainStats;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExplainStats create() => ExplainStats._();
  @$core.override
  ExplainStats createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ExplainStats getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExplainStats>(create);
  static ExplainStats? _defaultInstance;

  /// The format depends on the `output_format` options in the request.
  ///
  /// Currently there are two supported options: `TEXT` and `JSON`.
  /// Both supply a `google.protobuf.StringValue`.
  @$pb.TagNumber(1)
  $0.Any get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($0.Any value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Any ensureData() => $_ensure(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');

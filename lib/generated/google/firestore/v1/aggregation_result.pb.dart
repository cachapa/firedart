//
//  Generated code. Do not modify.
//  source: google/firestore/v1/aggregation_result.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'document.pb.dart' as $0;

///  The result of a single bucket from a Firestore aggregation query.
///
///  The keys of `aggregate_fields` are the same for all results in an aggregation
///  query, unlike document queries which can have different fields present for
///  each result.
class AggregationResult extends $pb.GeneratedMessage {
  factory AggregationResult({
    $core.Map<$core.String, $0.Value>? aggregateFields,
  }) {
    final $result = create();
    if (aggregateFields != null) {
      $result.aggregateFields.addAll(aggregateFields);
    }
    return $result;
  }
  AggregationResult._() : super();
  factory AggregationResult.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AggregationResult.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AggregationResult',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'google.firestore.v1'),
      createEmptyInstance: create)
    ..m<$core.String, $0.Value>(2, _omitFieldNames ? '' : 'aggregateFields',
        entryClassName: 'AggregationResult.AggregateFieldsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $0.Value.create,
        valueDefaultOrMaker: $0.Value.getDefault,
        packageName: const $pb.PackageName('google.firestore.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AggregationResult clone() => AggregationResult()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AggregationResult copyWith(void Function(AggregationResult) updates) =>
      super.copyWith((message) => updates(message as AggregationResult))
          as AggregationResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AggregationResult create() => AggregationResult._();
  AggregationResult createEmptyInstance() => create();
  static $pb.PbList<AggregationResult> createRepeated() =>
      $pb.PbList<AggregationResult>();
  @$core.pragma('dart2js:noInline')
  static AggregationResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AggregationResult>(create);
  static AggregationResult? _defaultInstance;

  ///  The result of the aggregation functions, ex: `COUNT(*) AS total_docs`.
  ///
  ///  The key is the
  ///  [alias][google.firestore.v1.StructuredAggregationQuery.Aggregation.alias]
  ///  assigned to the aggregation function on input and the size of this map
  ///  equals the number of aggregation functions in the query.
  @$pb.TagNumber(2)
  $core.Map<$core.String, $0.Value> get aggregateFields => $_getMap(0);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');

///
//  Generated code. Do not modify.
//  source: google/type/latlng.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core
    show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

class LatLng extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo('LatLng', package: const $pb.PackageName('google.type'))
        ..a<$core.double>(1, 'latitude', $pb.PbFieldType.OD)
        ..a<$core.double>(2, 'longitude', $pb.PbFieldType.OD)
        ..hasRequiredFields = false;

  LatLng._() : super();
  factory LatLng() => create();
  factory LatLng.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LatLng.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  LatLng clone() => LatLng()..mergeFromMessage(this);
  LatLng copyWith(void Function(LatLng) updates) =>
      super.copyWith((message) => updates(message as LatLng));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LatLng create() => LatLng._();
  LatLng createEmptyInstance() => create();
  static $pb.PbList<LatLng> createRepeated() => $pb.PbList<LatLng>();
  static LatLng getDefault() => _defaultInstance ??= create()..freeze();
  static LatLng _defaultInstance;

  $core.double get latitude => $_getN(0);
  set latitude($core.double v) {
    $_setDouble(0, v);
  }

  $core.bool hasLatitude() => $_has(0);
  void clearLatitude() => clearField(1);

  $core.double get longitude => $_getN(1);
  set longitude($core.double v) {
    $_setDouble(1, v);
  }

  $core.bool hasLongitude() => $_has(1);
  void clearLongitude() => clearField(2);
}

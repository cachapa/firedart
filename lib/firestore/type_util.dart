import 'dart:typed_data';

import 'package:firedart/firedart.dart';
import 'package:firedart/generated/google/firestore/v1/document.pb.dart' as fs;
import 'package:firedart/generated/google/protobuf/struct.pb.dart';
import 'package:firedart/generated/google/protobuf/struct.pbenum.dart';
import 'package:firedart/generated/google/protobuf/timestamp.pb.dart';
import 'package:fixnum/fixnum.dart';

import 'firestore_gateway.dart';

abstract class TypeUtil {
  static fs.Value encode(dynamic value) {
    if (value == null) {
      return fs.Value()..nullValue = NullValue.NULL_VALUE;
    }

    if (value is bool) {
      return fs.Value()..booleanValue = value;
    }
    if (value is int) {
      return fs.Value()..integerValue = Int64(value);
    }
    if (value is double) {
      return fs.Value()..doubleValue = value;
    }
    if (value is DateTime) {
      return fs.Value()..timestampValue = Timestamp.fromDateTime(value);
    }
    if (value is String) {
      return fs.Value()..stringValue = value;
    }
    if (value is List) {
      var array = fs.ArrayValue();
      array.values.addAll(value.map((e) => encode(e)));
      return fs.Value()..arrayValue = array;
    }
    if (value is Map) {
      var map = fs.MapValue();
      value.forEach((key, val) => map.fields[key] = encode(val));
      return fs.Value()..mapValue = map;
    }
    if (value is Uint8List) {
      return fs.Value()..bytesValue = value;
    }
    if (value is DocumentReference) {
      return fs.Value()..referenceValue = value.fullPath;
    }
    if (value is GeoPoint) {
      return fs.Value()..geoPointValue = value.toLatLng();
    }

    throw Exception('Unknown type: ${value.runtimeType}');
  }

  static dynamic decode(fs.Value value, FirestoreGateway gateway) {
    switch (value.whichValueType()) {
      case fs.Value_ValueType.nullValue:
        return null;
      case fs.Value_ValueType.booleanValue:
        return value.booleanValue;
      case fs.Value_ValueType.doubleValue:
        return value.doubleValue;
      case fs.Value_ValueType.stringValue:
        return value.stringValue;
      case fs.Value_ValueType.integerValue:
        return value.integerValue.toInt();
      case fs.Value_ValueType.timestampValue:
        return value.timestampValue.toDateTime().toLocal();
      case fs.Value_ValueType.bytesValue:
        return value.bytesValue;
      case fs.Value_ValueType.referenceValue:
        return DocumentReference(gateway, value.referenceValue);
      case fs.Value_ValueType.geoPointValue:
        return GeoPoint.fromLatLng(value.geoPointValue);
      case fs.Value_ValueType.arrayValue:
        return value.arrayValue.values
            .map((item) => decode(item, gateway))
            .toList(growable: false);
      case fs.Value_ValueType.mapValue:
        return value.mapValue.fields
            .map((key, value) => MapEntry(key, decode(value, gateway)));
      default:
        throw Exception('Unrecognized type: ${value.whichValueType()}');
    }
  }
}

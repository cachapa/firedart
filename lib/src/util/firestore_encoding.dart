import 'dart:typed_data';

import 'package:firedart/firedart.dart';
import 'package:firedart/src/generated/google/firestore/v1/document.pb.dart'
    as fs;
import 'package:firedart/src/generated/google/protobuf/struct.pbenum.dart';
import 'package:firedart/src/generated/google/protobuf/timestamp.pb.dart';
import 'package:firedart/src/repository/firestore_gateway.dart';
import 'package:fixnum/fixnum.dart';

/// A utility class that provides methods for encoding and decoding values
/// for Firestore.
abstract class FirestoreEncoding {
  /// Encodes Dart object into the corresponding [fs.Value].
  static fs.Value encode(dynamic value) {
    if (value == null) return fs.Value()..nullValue = NullValue.NULL_VALUE;

    final type = value.runtimeType as Type;

    if (type is List) {
      final array = fs.ArrayValue();
      value.forEach((element) => array.values.add(encode(element)));
      return fs.Value()..arrayValue = array;
    }

    if (type is Map) {
      final map = fs.MapValue();
      value.forEach((key, val) => map.fields[key as String] = encode(val));
      return fs.Value()..mapValue = map;
    }

    if (type is Uint8List) {
      return fs.Value()..bytesValue = value as List<int>;
    }

    switch (type) {
      case bool:
        return fs.Value()..booleanValue = value as bool;
      case int:
        return fs.Value()..integerValue = Int64(value as int);
      case double:
        return fs.Value()..doubleValue = value as double;
      case DateTime:
        return fs.Value()..timestampValue = Timestamp.fromDateTime(value as DateTime);
      case String:
        return fs.Value()..stringValue = value as String;
      case DocumentReference:
        return fs.Value()..referenceValue = value._fullPath as String;
      case GeoPoint:
        return fs.Value()..geoPointValue = (value as GeoPoint).toLatLng();
      default:
        throw Exception('Unknown type: $value');
    }
  }

  /// Decodes the given [fs.value] into the corresponding Dart object.
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
        throw Exception('Unrecognized type: $value');
    }
  }
}

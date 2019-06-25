import 'dart:convert';

import 'package:firedart/util/client.dart';
import 'package:firedart/firestore/firestore.dart';

class FirestoreGateway {
  final AuthClient _client;
  final String projectId;
  final String baseUrl;

  FirestoreGateway(this._client, this.projectId)
      : baseUrl = "https://firestore.googleapis.com/v1";

  Future<Map<String, dynamic>> get(String path) async {
    var requestUrl = "$baseUrl/$path";

    var response = await _client.get(requestUrl);
    return json.decode(response.body);
  }

  Future<bool> exists(String path) async {
    var requestUrl = "$baseUrl/$path";
    var response = await _client.get(requestUrl);
    return response.statusCode == 200;
  }

  Future<String> add(String path, Map<String, dynamic> document,
      {String id}) async {
    var params = id == null ? "" : "?documentId=$id";
    var typedMap = document.map((key, value) => MapEntry(key, _encode(value)));

    var response = await _client.post(
      "$baseUrl/$path$params",
      body: json.encode({
        "fields": typedMap,
      }),
    );

    String name = json.decode(response.body)["name"];
    return name.substring(name.lastIndexOf("/") + 1);
  }

  Future<void> set(
      String path, Map<String, dynamic> document, bool update) async {
    var params =
        document.keys.map((key) => "updateMask.fieldPaths=$key").join("&");
    var typedMap = document.map((key, value) => MapEntry(key, _encode(value)));
    await _client.patch(
      "$baseUrl/$path${update ? "?$params" : ""}",
      body: json.encode({
        "fields": typedMap,
      }),
    );
  }

  Future<void> delete(String path) => _client.delete("$baseUrl/$path");

  Map _encode(dynamic value) {
    if (value == null) return {"nullValue": null};

    var type = value.runtimeType;
    if (type.toString().startsWith("List"))
      return {
        "arrayValue": {
          "values": (value as List).map((item) => _encode(item)).toList()
        }
      };

    if (type.toString().contains("Map"))
      return {
        "mapValue": {
          "fields":
              (value as Map).map((key, value) => MapEntry(key, _encode(value)))
        }
      };

    if (type.toString() == "Uint8List")
      return {"bytesValue": base64Encode(value)};

    switch (type) {
      case bool:
        return {"booleanValue": value};
      case int:
        return {"integerValue": value};
      case double:
        return {"doubleValue": value};
      case DateTime:
        return {"timestampValue": value.toUtc().toIso8601String()};
      case String:
        return {"stringValue": value};
      case DocumentReference:
        return {"referenceValue": value.path};
      case GeoPoint:
        return {
          "geoPointValue": {
            "latitude": value.latitude,
            "longitude": value.longitude
          }
        };
      default:
        throw Exception("Unknown type: ${type}");
    }
  }
}

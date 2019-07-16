import 'dart:convert';

import 'package:firedart/firedart.dart';
import 'package:firedart/firestore/models.dart';
import "package:test/test.dart";

import 'test_config.dart';

Future main() async {
  var tokenStore = VolatileStore();
  var auth = FirebaseAuth(apiKey, tokenStore);
  var firestore = Firestore(projectId, auth: auth);
  await auth.signIn(email, password);

  test("Add and delete collection document", () async {
    var collection = firestore.collection("test");
    var newDocument = await collection.add({"field": "test"});
    expect(newDocument["field"], "test");
    var document = collection.document(newDocument.id);
    expect(await document.exists(), true);
    await document.delete();
    expect(await document.exists(), false);
  });

  test("Add and delete named document", () async {
    var document = firestore.document("test/add_remove");
    await document.set({"field": "test"});
    expect(await document.exists(), true);
    await document.delete();
    expect(await document.exists(), false);
  });

  test("Path with leading slash", () async {
    var document = firestore.document("/test/path");
    await document.set({"field": "test"});
    expect(await document.exists(), true);
    await document.delete();
    expect(await document.exists(), false);
  });

  test("Read data from document", () async {
    var document = firestore.collection("test").document("read_data");
    await document.set({"field": "test"});
    var map = await document.get();
    expect(map["field"], "test");
    await document.delete();
  });

  test("Overwrite document", () async {
    var document = firestore.collection("test").document("overwrite");
    await document.set({"field1": "test1", "field2": "test1"});
    await document.set({"field1": "test2"});
    var doc = await document.get();
    expect(doc["field1"], "test2");
    expect(doc["field2"], null);
    await document.delete();
  });

  test("Update document", () async {
    var document = firestore.collection("test").document("update");
    await document.set({"field1": "test1", "field2": "test1"});
    await document.update({"field1": "test2"});
    var doc = await document.get();
    expect(doc["field1"], "test2");
    expect(doc["field2"], "test1");
    await document.delete();
  });

  test("Subscribe to document changes", () async {
    var document = firestore.document("test/subscribe");

    // Firestore may send empty events on subscription because we're reusing the
    // document path.
    expect(document.subscribe().where((doc) => doc != null),
        emits((document) => document["field"] == "test"));

    await document.set({"field": "test"});
    await document.delete();
  });

  test("Document field types", () async {
    var document = firestore.collection("test").document("types");
    var dateTime = DateTime.now();
    var geoPoint = GeoPoint(38.7223, 9.1393);
    await document.set({
      "null": null,
      "bool": true,
      "int": 1,
      "double": 0.1,
      "timestamp": dateTime,
      "bytes": utf8.encode("byte array"),
      "string": "text",
      "reference": document,
      "coordinates": geoPoint,
      "list": [1, "text"],
      "map": {"int": 1, "string": "text"},
    });
    var doc = await document.get();
    expect(doc["null"], null);
    expect(doc["bool"], true);
    expect(doc["int"], 1);
    expect(doc["double"], 0.1);
    expect(doc["timestamp"], dateTime);
    expect(doc["bytes"], utf8.encode("byte array"));
    expect(doc["string"], "text");
    expect(doc["reference"], document);
    expect(doc["coordinates"], geoPoint);
    expect(doc["list"], [1, "text"]);
    expect(doc["map"], {"int": 1, "string": "text"});
  });

  test("Refresh token when idToken is null", () async {
    tokenStore.idToken = null;
    var map = await firestore.collection("test").get();
    expect(auth.isSignedIn, true);
    expect(map, isNot(null));
  });

  test("Refresh token when expired", () async {
    tokenStore.expiry = DateTime.now();
    var map = await firestore.collection("test").get();
    expect(auth.isSignedIn, true);
    expect(map, isNot(null));
  });

  test("Sign out on bad refresh token", () async {
    tokenStore.idToken = null;
    tokenStore.refreshToken = "invalid_token";
    try {
      await firestore.collection("test").get();
    } catch (_) {}
    expect(auth.isSignedIn, false);
  });
}

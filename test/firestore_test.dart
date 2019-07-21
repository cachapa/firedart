import 'package:firedart/firedart.dart';

import 'test_config.dart';

Future main() async {
  var tokenStore = VolatileStore();
  var auth = FirebaseAuth(apiKey, tokenStore);
  var firestore = Firestore(projectId, auth: auth);
  await auth.signIn(email, password);

//  test("Create reference", () async {
//    // Ensure document exists
//    var reference = firestore.document("test/reference");
//    await reference.set({"field": "test"});
//
//    var collectionReference = firestore.reference("test");
//    expect(collectionReference.runtimeType, equals(CollectionReference));
//    var documentReference = firestore.reference("test/types");
//    expect(documentReference.runtimeType, equals(DocumentReference));
//
//    reference.delete();
//  });
//
//  test("Get collection", () async {
//    var reference = firestore.collection("test");
//    var documents = await reference.get();
//    expect(documents.isNotEmpty, true);
//  });
//
//  test("Add and delete collection document", () async {
//    var reference = firestore.collection("test");
//    var docReference = await reference.add({"field": "test"});
//    expect(docReference["field"], "test");
//    var document = reference.document(docReference.id);
//    expect(await document.exists, true);
//    await document.delete();
//    expect(await document.exists, false);
//  });
//
//  test("Add and delete named document", () async {
//    var reference = firestore.document("test/add_remove");
//    await reference.set({"field": "test"});
//    expect(await reference.exists, true);
//    await reference.delete();
//    expect(await reference.exists, false);
//  });
//
//  test("Path with leading slash", () async {
//    var reference = firestore.document("/test/path");
//    await reference.set({"field": "test"});
//    expect(await reference.exists, true);
//    await reference.delete();
//    expect(await reference.exists, false);
//  });
//
//  test("Path with trailing slash", () async {
//    var reference = firestore.document("test/path/");
//    await reference.set({"field": "test"});
//    expect(await reference.exists, true);
//    await reference.delete();
//    expect(await reference.exists, false);
//  });
//
//  test("Path with leading and trailing slashes", () async {
//    var reference = firestore.document("/test/path/");
//    await reference.set({"field": "test"});
//    expect(await reference.exists, true);
//    await reference.delete();
//    expect(await reference.exists, false);
//  });
//
//  test("Read data from document", () async {
//    var reference = firestore.collection("test").document("read_data");
//    await reference.set({"field": "test"});
//    var map = await reference.get();
//    expect(map["field"], "test");
//    await reference.delete();
//  });
//
//  test("Overwrite document", () async {
//    var reference = firestore.collection("test").document("overwrite");
//    await reference.set({"field1": "test1", "field2": "test1"});
//    await reference.set({"field1": "test2"});
//    var doc = await reference.get();
//    expect(doc["field1"], "test2");
//    expect(doc["field2"], null);
//    await reference.delete();
//  });
//
//  test("Update document", () async {
//    var reference = firestore.collection("test").document("update");
//    await reference.set({"field1": "test1", "field2": "test1"});
//    await reference.update({"field1": "test2"});
//    var doc = await reference.get();
//    expect(doc["field1"], "test2");
//    expect(doc["field2"], "test1");
//    await reference.delete();
//  });
//
//  test("Stream document changes", () async {
//    var reference = firestore.document("test/subscribe");
//
//    // Firestore may send empty events on subscription because we're reusing the
//    // document path.
//    expect(reference.stream.where((doc) => doc != null),
//        emits((document) => document["field"] == "test"));
//
//    await reference.set({"field": "test"});
//    await reference.delete();
//  });
//
//  test("Stream collection changes", () async {
//    var reference = firestore.collection("test");
//
//    var document = await reference.add({"field": "test"});
//    expect(reference.stream,
//        emits((List<Document> documents) => documents.isNotEmpty));
//    await document.reference.delete();
//  });
//
//  test("Document field types", () async {
//    var reference = firestore.collection("test").document("types");
//    var dateTime = DateTime.now();
//    var geoPoint = GeoPoint(38.7223, 9.1393);
//    await reference.set({
//      "null": null,
//      "bool": true,
//      "int": 1,
//      "double": 0.1,
//      "timestamp": dateTime,
//      "bytes": utf8.encode("byte array"),
//      "string": "text",
//      "reference": reference,
//      "coordinates": geoPoint,
//      "list": [1, "text"],
//      "map": {"int": 1, "string": "text"},
//    });
//    var doc = await reference.get();
//    expect(doc["null"], null);
//    expect(doc["bool"], true);
//    expect(doc["int"], 1);
//    expect(doc["double"], 0.1);
//    expect(doc["timestamp"], dateTime);
//    expect(doc["bytes"], utf8.encode("byte array"));
//    expect(doc["string"], "text");
//    expect(doc["reference"], reference);
//    expect(doc["coordinates"], geoPoint);
//    expect(doc["list"], [1, "text"]);
//    expect(doc["map"], {"int": 1, "string": "text"});
//  });

//  test("Transaction set", () async {
//    var reference = firestore.document("test/transaction_set");
//    await reference.set({"value": 0, "value2": 0});
//
//    await firestore.runTransaction((transactionId) async {
//      var document = await reference.get();
//      await reference.set({"value": document.map["value"] + 1});
//    });
//
//    var documenta = await reference.get();
//    expect(documenta["value"], 1);
//    await reference.delete();
//  });

//  test("Concurrent modification", () async {
//    await firestore.document("test/concurrent").set({"value": 0});
//
//    var futures = List<Future>();
//    for (var i = 0; i < 5; i++) {
//      var transaction = await firestore.transaction()
//        ..beginTransaction();
//      var reference = transaction.document("test/concurrent");
//      futures.add(reference.get().then((document) async {
//        await reference.update({"value": document.map["value"] + 1});
//        await transaction.commit();
//      }));
//    }
//
//    for (var future in futures) {
//      await future;
//    }
//
//    var document = await firestore.document("test/concurrent").get();
//    expect(document["value"], 5);
//    await firestore.document("test/concurrent").delete();
//  });

//  test("Rolback on failed transaction", () async {
//    var reference = firestore.document("test/rollback");
//    await reference.set({"value": 0});
//
//    // Fail
//    reference.update({"value": 2});
//    reference.create({"value": 3});
//
//    var document = await reference.get();
//    expect(document["value"], 0);
//    await reference.delete();
//  });

//  test("Refresh token when expired", () async {
//    tokenStore.expireToken();
//    var map = await firestore.collection("test").get();
//    expect(auth.isSignedIn, true);
//    expect(map, isNot(null));
//  });
//
//  test("Sign out on bad refresh token", () async {
//    tokenStore.setToken("bad_token", "bad_token", 0);
//    try {
//      await firestore.collection("test").get();
//    } catch (_) {}
//    expect(auth.isSignedIn, false);
//  });
}

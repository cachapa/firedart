import 'package:firedart/src/auth/firebase_auth.dart';
import 'package:firedart/src/model/collection_reference.dart';
import 'package:firedart/src/model/document_reference.dart';
import 'package:firedart/src/model/reference.dart';

import 'firestore_gateway.dart';

class Firestore {
  /* Singleton interface */
  static Firestore _instance;

  Firestore(String projectId, {String databaseId, FirebaseAuth auth})
      : _gateway =
  FirestoreGateway(projectId, databaseId: databaseId, auth: auth),
        assert(projectId.isNotEmpty);

  factory Firestore.initialize(String projectId, {String databaseId}) {
    if (_instance != null) {
      throw Exception('Firestore instance was already initialized');
    }
    FirebaseAuth auth;
    try {
      auth = FirebaseAuth.instance;
    } catch (e) {
      // FirebaseAuth isn't initialized
    }
    return _instance = Firestore(projectId, databaseId: databaseId, auth: auth);
  }

  static Firestore get instance {
    if (_instance == null) {
      throw Exception(
          "Firestore hasn't been initialized. Please call Firestore.initialize() before using it.");
    }
    return _instance;
  }

  /* Instance interface */
  final FirestoreGateway _gateway;

  Reference reference(String path) => Reference.create(_gateway, path);

  CollectionReference collection(String path) =>
      CollectionReference(_gateway, path);

  DocumentReference document(String path) => DocumentReference(_gateway, path);
}

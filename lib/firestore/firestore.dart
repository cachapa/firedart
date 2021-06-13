import 'package:firebase_auth_rest/firebase_auth_rest.dart';
import 'package:firedart/auth/exceptions.dart';
import 'package:http/http.dart';

import 'firestore_gateway.dart';
import 'models.dart';

class Firestore {
  /* Singleton interface */
  static Firestore? _instance;
  static FirebaseAuth? _firebaseAuth;
  static Client? client;
  static FirebaseAccount? firebaseAccount;

  static Firestore initialize(String api, String projectId,
      {String? databaseId}) {
    if (_instance != null) {
      throw Exception('Firestore instance was already initialized');
    }
    try {
      client = Client();
      _firebaseAuth = FirebaseAuth(client!, api);
    } catch (e) {
      // FirebaseAuth isn't initialized
    }
    _instance =
        Firestore(projectId, databaseId: databaseId, auth: _firebaseAuth);
    return _instance!;
  }

  static Firestore get instance {
    if (_instance == null) {
      throw Exception(
          "Firestore hasn't been initialized. Please call Firestore.initialize() before using it.");
    }
    return _instance!;
  }

  Future<UserData?> getUser() async {
    if (firebaseAccount == null) {
      throw SignedOutException();
    }
    var userData = await firebaseAccount?.getDetails();

    return userData;
  }

  Future<FirebaseAccount> signInWithPassword(String email, String password,
      {bool autoRefresh = true}) async {
    if (_instance == null) {
      throw Exception(
          "Firestore hasn't been initialized. Please call Firestore.initialize() before using it.");
    }
    firebaseAccount = await _firebaseAuth!
        .signInWithPassword(email, password, autoRefresh: autoRefresh);
    return firebaseAccount!;
  }

  Future<FirebaseAccount> signUpAnonymous({bool autoRefresh = true}) async {
    if (_instance == null) {
      throw Exception(
          "Firestore hasn't been initialized. Please call Firestore.initialize() before using it.");
    }
    firebaseAccount =
        await _firebaseAuth!.signUpAnonymous(autoRefresh: autoRefresh);
    return firebaseAccount!;
  }

  Future<bool> isSignedIn() async {
    var userData = await firebaseAccount?.getDetails();
    return userData != null;
  }

  Future<void> signOut() async {
    firebaseAccount?.dispose();
    firebaseAccount = null;
    client?.close();
    client = null;
    _instance = null;
  }

  Future<void> delete() async {
    await firebaseAccount?.delete();
    await signOut();
  }

  /* Instance interface */
  final FirestoreGateway _gateway;

  Firestore(String projectId, {String? databaseId, FirebaseAuth? auth})
      : _gateway =
            FirestoreGateway(projectId, databaseId: databaseId, auth: auth),
        assert(projectId.isNotEmpty);

  Reference reference(String path) => Reference.create(_gateway, path);

  CollectionReference collection(String path) =>
      CollectionReference(_gateway, path);

  DocumentReference document(String path) => DocumentReference(_gateway, path);
}

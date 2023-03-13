import 'package:firedart/auth/firebase_auth.dart';

import 'firestore_gateway.dart';
import 'models.dart';

class Emulator {
  Emulator(this.host, this.port);

  final String host;
  final int port;
}

class Firestore {
  /* Singleton interface */
  static Firestore? _instance;

  static Firestore initialize(
    String projectId, {
    String? databaseId,
    Emulator? emulator,
  }) {
    if (_instance != null) {
      throw Exception('Firestore instance was already initialized');
    }
    FirebaseAuth? auth;
    try {
      auth = FirebaseAuth.instance;
    } catch (e) {
      // FirebaseAuth isn't initialized
    }
    _instance = Firestore(
      projectId,
      databaseId: databaseId,
      auth: auth,
      emulator: emulator,
    );
    return _instance!;
  }

  static Firestore get instance {
    if (_instance == null) {
      throw Exception(
          "Firestore hasn't been initialized. Please call Firestore.initialize() before using it.");
    }
    return _instance!;
  }

  /* Instance interface */
  final FirestoreGateway _gateway;

  Firestore(
    String projectId, {
    String? databaseId,
    FirebaseAuth? auth,
    Emulator? emulator,
  })  : _gateway = FirestoreGateway(
          projectId,
          databaseId: databaseId,
          auth: auth,
          emulator: emulator,
        ),
        assert(projectId.isNotEmpty);

  Reference reference(String path) => Reference.create(_gateway, path);

  CollectionReference collection(String path) =>
      CollectionReference(_gateway, path);

  DocumentReference document(String path) => DocumentReference(_gateway, path);
}

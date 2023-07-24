import 'package:firedart/auth/firebase_auth.dart';
import 'package:firedart/firestore/application_default_authenticator.dart';
import 'package:firedart/firestore/token_authenticator.dart';

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
    bool useApplicationDefaultAuth = false,
    String? databaseId,
    Emulator? emulator,
  }) {
    if (initialized) {
      throw Exception('Firestore instance was already initialized');
    }
    final RequestAuthenticator? authenticator;
    if (useApplicationDefaultAuth) {
      authenticator = ApplicationDefaultAuthenticator(
        useEmulator: emulator != null,
      ).authenticate;
    } else {
      FirebaseAuth? auth;
      try {
        auth = FirebaseAuth.instance;
      } catch (e) {
        // FirebaseAuth isn't initialized
      }

      authenticator = TokenAuthenticator.from(auth)?.authenticate;
    }
    _instance = Firestore(
      projectId,
      databaseId: databaseId,
      authenticator: authenticator,
      emulator: emulator,
    );
    return _instance!;
  }

  static bool get initialized => _instance != null;

  static Firestore get instance {
    if (!initialized) {
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
    RequestAuthenticator? authenticator,
    Emulator? emulator,
  })  : _gateway = FirestoreGateway(
          projectId,
          databaseId: databaseId,
          authenticator: authenticator,
          emulator: emulator,
        ),
        assert(projectId.isNotEmpty);

  Reference reference(String path) => Reference.create(_gateway, path);

  CollectionReference collection(String path) =>
      CollectionReference(_gateway, path);

  DocumentReference document(String path) => DocumentReference(_gateway, path);

  void close() {
    _gateway.close();
  }
}

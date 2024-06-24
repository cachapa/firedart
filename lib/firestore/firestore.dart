import 'package:firedart/auth/firebase_auth.dart';
import 'package:firedart/firestore/application_default_authenticator.dart';
import 'package:firedart/firestore/token_authenticator.dart';

import 'firestore_gateway.dart';
import 'models.dart';

/// A convenience class for keeping the host name and port of the emulator.
class Emulator {
  Emulator(this.host, this.port);

  final String host;
  final int port;
}

/// Keeps a [Firestore] singleton accessible via a global [instance] getter.
///
/// The [FirestoreGateway] member, created during [initialization], allows
/// creation of [Reference]s, [QueryReference]s, [DocumentReference]s and
/// [CollectionReference]s.
class Firestore {
  static Firestore? _instance;

  /// Provide the [projectId] of the Firebase/GCP project.
  ///
  /// If [useApplicationDefaultAuth] is true the library will attempt to
  /// automatically find credentials based on the application environment.
  ///
  /// A [databaseId] can be provided if a project is not using the default
  /// database.
  ///
  /// An [Emulator] object can be provided for local testing.
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

  /// A boolean indicating if the Firestore singleton has been initialized.
  static bool get initialized => _instance != null;

  /// Provides the singleton [Firebase] instance or throws if not initialized.
  static Firestore get instance {
    if (!initialized) {
      throw Exception(
          "Firestore hasn't been initialized. Please call Firestore.initialize() before using it.");
    }
    return _instance!;
  }

  final FirestoreGateway _gateway;

  /// Should not be called directly, use [Firestore.initialize] and [Firestore.instance]
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

  /// Create a [Reference] from a given path.
  Reference reference(String path) => Reference.create(_gateway, path);

  /// Create a [CollectionReference] from a given path.
  CollectionReference collection(String path) =>
      CollectionReference(_gateway, path);

  /// Create a [DocumentReference] from a given path.
  DocumentReference document(String path) => DocumentReference(_gateway, path);

  /// Call to clean up and release resources when no longer needed.
  void close() {
    _gateway.close();
  }
}

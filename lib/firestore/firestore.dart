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

  /// Executes the given [TransactionHandler] and then attempts to commit the
  /// changes applied within an atomic transaction.
  ///
  /// In the [TransactionHandler], a set of reads and writes can be performed
  /// atomically using the [Transaction] object passed to the [TransactionHandler].
  /// After the [TransactionHandler] is run, [Firestore] will attempt to apply the
  /// changes to the server. If any of the data read has been modified outside
  /// of this [Transaction] since being read, then the transaction will be
  /// retried by executing the provided [TransactionHandler] again. If the transaction still
  /// fails after the specified [maxAttempts] retries, then the transaction will fail.
  ///
  /// The [TransactionHandler] may be executed multiple times, it should be able
  /// to handle multiple executions.
  ///
  /// Data accessed with the transaction will not reflect local changes that
  /// have not been committed. For this reason, it is required that all
  /// reads are performed before any writes. Transactions must be performed
  /// with an internet connection. Otherwise, reads will fail, and the final commit will fail.
  ///
  /// By default transactions will retry 5 times. You can change the number of attempts
  /// with [maxAttempts]. Attempts should be at least 1.
  ///
  /// ```dart
  /// await firestore.runTransaction(
  ///   (transaction) async {
  ///     final doc = await transaction.get('myCollection/documentId');
  ///     final value = doc.map['key'];
  ///     final newValue = value + 1;
  ///     transaction.update('myCollection/documentId', {'key': newValue});
  ///   },
  /// );
  /// ```
  Future<T> runTransaction<T>(
    TransactionHandler<T> handler, {
    int maxAttempts = 5,
  }) {
    assert(maxAttempts >= 1, 'maxAttempts must be at least 1.');
    return _gateway.runTransaction(handler, maxAttempts: maxAttempts);
  }

  void close() {
    _gateway.close();
  }
}

import 'package:firedart/auth/auth_gateway.dart';
import 'package:firedart/auth/client.dart';
import 'package:firedart/auth/token_provider.dart';
import 'package:firedart/auth/token_store.dart';
import 'package:firedart/auth/user_gateway.dart';
import 'package:http/http.dart' as http;

/// Keeps a [FirebaseAuth] singleton accessible via a global [instance] getter.
///
/// The singleton is initialized with an API key, a [TokenStore] and an optional
/// http client. A [KeyClient] is used if no http client is supplied.
class FirebaseAuth {
  static FirebaseAuth? _instance;

  /// Check if already initialized and if not, call the constructor.
  static FirebaseAuth initialize(String apiKey, TokenStore tokenStore,
      {http.Client? httpClient}) {
    if (initialized) {
      throw Exception('FirebaseAuth instance was already initialized');
    }
    _instance = FirebaseAuth(apiKey, tokenStore, httpClient: httpClient);
    return _instance!;
  }

  /// Global method to check if the singleton has been initialized.
  static bool get initialized => _instance != null;

  /// Global getter for accessing the [FirebaseAuth] singleton.
  static FirebaseAuth get instance {
    if (!initialized) {
      throw Exception(
          "FirebaseAuth hasn't been initialized. Please call FirebaseAuth.initialize() before using it.");
    }
    return _instance!;
  }

  /// The API key used to make authentication requests on a specific
  /// Firebase/GCP project.
  final String apiKey;

  /// The http client used to make requests.
  http.Client httpClient;

  /// A [TokenProvider] that provides a [KeyClient] and [TokenStore].
  late TokenProvider tokenProvider;

  late AuthGateway _authGateway;
  late UserGateway _userGateway;

  /// A [FirebaseAuth] object is created with an API key for a GCP/Firebase
  /// project, a [TokenStore] and optional http client.
  ///
  /// A [KeyClient] is created from the http client that makes requests using
  /// the given API key.
  ///
  /// A [TokenProvider] is created from the [TokenStore] and provides the
  /// signedIn state of the user.
  FirebaseAuth(this.apiKey, TokenStore tokenStore, {http.Client? httpClient})
      : assert(apiKey.isNotEmpty),
        httpClient = httpClient ?? http.Client() {
    var keyClient = KeyClient(this.httpClient, apiKey);
    tokenProvider = TokenProvider(keyClient, tokenStore);

    _authGateway = AuthGateway(keyClient, tokenProvider);
    _userGateway = UserGateway(keyClient, tokenProvider);
  }

  bool get isSignedIn => tokenProvider.isSignedIn;

  /// Return a stream that is updated whenever the user's signed in state changes.
  /// Does not automatically fire an event on the first listen of the stream.
  Stream<bool> get signInState => tokenProvider.signInState;

  /// Get the [userId] and throw if not signed in.
  String get userId {
    if (!isSignedIn) throw Exception('User signed out');
    return tokenProvider.userId!;
  }

  /// Create a new email and password user with the signupNewUser endpoint.
  Future<User> signUp(String email, String password) =>
      _authGateway.signUp(email, password);

  /// Sign in a user with an email and password using the verifyPassword endpoint.
  Future<User> signIn(String email, String password) =>
      _authGateway.signIn(email, password);

  /// Exchange a custom Auth token for an ID and refresh token using the
  /// verifyCustomToken endpoint.
  Future<void> signInWithCustomToken(String token) =>
      _authGateway.signInWithCustomToken(token);

  /// Sign in a user anonymously using the signupNewUser endpoint.
  Future<User> signInAnonymously() => _authGateway.signInAnonymously();

  /// Clear the token store and notify listeners of the user's state change.
  void signOut() => tokenProvider.signOut();

  /// Close the http client.
  void close() => httpClient.close();

  /// Apply a password reset change using the resetPassword endpoint.
  Future<void> resetPassword(String email) => _authGateway.resetPassword(email);

  /// Send an email verification for the current user using the
  /// getOobConfirmationCode endpoint.
  Future<void> requestEmailVerification({String? langCode}) =>
      _userGateway.requestEmailVerification(langCode: langCode);

  /// Change a user's password using the setAccountInfo endpoint.
  Future<void> changePassword(String password) =>
      _userGateway.changePassword(password);

  /// Get a user's data using the getAccountInfo endpoint and create a new
  /// [User] from the returned account info.
  Future<User> getUser() => _userGateway.getUser();

  /// Update a user's profile (display name / photo URL) using the setAccountInfo
  /// endpoint.
  Future<void> updateProfile({String? displayName, String? photoUrl}) =>
      _userGateway.updateProfile(displayName, photoUrl);

  /// Delete a current user using the deleteAccount endpoint.
  Future<void> deleteAccount() async {
    await _userGateway.deleteAccount();
    signOut();
  }
}

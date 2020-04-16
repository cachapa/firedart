import 'package:firedart/src/auth/client/key_client.dart';
import 'package:firedart/src/auth/constants/auth_constants.dart';
import 'package:firedart/src/auth/gateway/auth_gateway.dart';
import 'package:firedart/src/auth/token/provider/token_provider.dart';
import 'package:firedart/src/auth/gateway/user_gateway.dart';
import 'package:firedart/src/auth/model/user.dart';
import 'package:firedart/src/auth/store/token_store.dart';
import 'package:http/http.dart' as http;

/// A REST client for the Firebase Authentication 
/// (https://firebase.google.com/docs/auth).
class FirebaseAuth {
  /* Singleton interface */

  /// Creates an instance of [FirebaseAuth] with the given [apiKey]
  /// and [tokenStore].
  ///
  /// The [authGatewayUrl] is the authorization server URL.
  /// Defaults to [AuthConstants.authGatewayUrl].
  /// The [httpClient] is an HTTP [http.Client] to perform requests with.
  /// Defaults to the [http.Client] instance.
  ///
  /// Throws an [ArgumentError] if the [tokenStore] is `null`.
  /// Throws an [ArgumentError] if the [apiKey] is an empty string.
  FirebaseAuth(
      this.apiKey,
      TokenStore tokenStore, {
        String authGatewayUrl = AuthConstants.authGatewayUrl,
        this.httpClient,
      }) {
    ArgumentError.checkNotNull(tokenStore);
    if (apiKey.isEmpty) {
      throw ArgumentError.value(apiKey, 'apiKey', 'must not be empty');
    }

    httpClient ??= http.Client();
    final keyClient = KeyClient(httpClient, apiKey);
    tokenProvider = TokenProvider(keyClient, tokenStore);
    _authGateway = AuthGateway(keyClient, tokenProvider, authGatewayUrl);
    _userGateway = UserGateway(keyClient, tokenProvider, authGatewayUrl);
  }

  static FirebaseAuth _instance;

  /// Initializes [FirebaseAuth] instance with the given [apiKey]
  /// and [tokenStore] in order to follow Singleton pattern.
  /// 
  /// The [authGatewayUrl] is the authorization server URL. 
  /// Defaults to [AuthConstants.authGatewayUrl].
  /// 
  /// Throws a [StateError] if the instance was already initialized.
  factory FirebaseAuth.initialize(
    String apiKey,
    TokenStore tokenStore, {
    String authGatewayUrl = AuthConstants.authGatewayUrl,
  }) {
    if (_instance != null) {
      throw StateError('FirebaseAuth instance was already initialized');
    }
    return _instance = FirebaseAuth(
      apiKey,
      tokenStore,
      authGatewayUrl: authGatewayUrl,
    );
  }

  /// The current instance of this singleton.
  /// 
  /// Throws a [StateError] if [FirebaseAuth] hasn't been initialized.
  static FirebaseAuth get instance {
    if (_instance == null) {
      throw StateError(
        "FirebaseAuth hasn't been initialized."
        'Please call FirebaseAuth.initialize() before using it.',
      );
    }
    return _instance;
  }

  /* Instance interface */
  final String apiKey;

  http.Client httpClient;
  TokenProvider tokenProvider;

  AuthGateway _authGateway;
  UserGateway _userGateway;

  bool get isSignedIn => tokenProvider.isSignedIn;

  Stream<bool> get signInState => tokenProvider.signInState;

  String get userId => tokenProvider.userId;

  Future<User> signUp(String email, String password) =>
      _authGateway.signUp(email, password);

  Future<User> signIn(String email, String password) =>
      _authGateway.signIn(email, password);

  void signOut() => tokenProvider.signOut();

  Future<void> resetPassword(String email) => _authGateway.resetPassword(email);

  Future<void> requestEmailVerification() =>
      _userGateway.requestEmailVerification();

  Future<void> changePassword(String password) =>
      _userGateway.changePassword(password);

  Future<User> getUser() => _userGateway.getUser();

  Future<void> updateProfile({String displayName, String photoUrl}) =>
      _userGateway.updateProfile(displayName, photoUrl);

  Future<void> deleteAccount() => _userGateway.deleteAccount();
}

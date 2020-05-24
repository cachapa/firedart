import 'package:firedart/auth/auth_gateway.dart';
import 'package:firedart/auth/client.dart';
import 'package:firedart/auth/token_provider.dart';
import 'package:firedart/auth/token_store.dart';
import 'package:firedart/auth/user_gateway.dart';
import 'package:http/http.dart' as http;

import 'service_account.dart';

/// For service accounts, you can use ServiceAccount.fromJson(String) or ServiceAccount.fromEnvironmentVariable(optional String)
/// Using the environment variable implementation will crash if you are on a platform that dart:io does not support.
///
/// If you do not provide a service account, firebase will initialize you as an anonymous user unless you sign in with
/// the signIn(String email, String password) method in this class.
class FirebaseAuth {
  /* Singleton interface */
  static FirebaseAuth _instance;

  static FirebaseAuth initialize(String apiKey, TokenStore tokenStore,
      {ServiceAccount serviceAccount}) {
    if (_instance != null) {
      throw Exception('FirebaseAuth instance was already initialized');
    }
    _instance =
        FirebaseAuth(apiKey, tokenStore, serviceAccount: serviceAccount);
    return _instance;
  }

  static FirebaseAuth get instance {
    if (_instance == null) {
      throw Exception(
          "FirebaseAuth hasn't been initialized. Please call FirebaseAuth.initialize() before using it.");
    }
    return _instance;
  }

  /* Instance interface */
  final String apiKey;
  final ServiceAccount serviceAccount;

  http.Client httpClient;
  TokenProvider tokenProvider;

  AuthGateway _authGateway;
  UserGateway _userGateway;

  FirebaseAuth(this.apiKey, TokenStore tokenStore,
      {this.httpClient, this.serviceAccount})
      : assert(apiKey.isNotEmpty),
        assert(tokenStore != null) {
    httpClient ??= http.Client();
    var keyClient = KeyClient(httpClient, apiKey);
    tokenProvider = TokenProvider(keyClient, tokenStore);

    _authGateway = AuthGateway(keyClient, tokenProvider);
    _userGateway = UserGateway(keyClient, tokenProvider);
  }

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

  Future<void> deleteAccount() async {
    await _userGateway.deleteAccount();
    signOut();
  }
}

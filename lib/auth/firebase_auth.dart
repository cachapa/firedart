import 'package:firedart/auth/auth_gateway.dart';
import 'package:firedart/auth/client.dart';
import 'package:firedart/auth/token_provider.dart';
import 'package:firedart/auth/token_store.dart';
import 'package:firedart/auth/user_gateway.dart';
import 'package:http/http.dart' as http;

import 'serviceaccount/abstract_service_account.dart';

/// For service accounts, you have 2 options here. You can use either to provide the serviceAccount parameter in this class.
/// 1) This is the recommended method. If you wish to be as platform agnostic as possible, or just want to avoid making
///    mistakes, this way provides you with a platform agnostic method of providing service accounts.
///
///    To provide a service account, use getServiceAccount().fromJson or getServiceAccount().fromEnvironmentVariable
///    Copy paste this import line if you want:
///    import 'package:firedart/auth/serviceaccount/abstract_service_account.dart';
///    getServiceAccount().fromEnvironmentVariable() will throw an exception on web platforms because environment variables
///    do not exist on the web.
///
///    So your best bet to support ALL platforms with ADMINISTRATIVE ACCESS to firestore is to do:
///    getServiceAccount().fromJson(<Service account json here>);
///
///    You can provide the service account json file directly as well like so:
///    getServiceAccount().fromJson(await file.readAsString()); or
///    getServiceAccount().fromJson(file.readAsStringSync());
///
///    The main appeal of using this is that you can use fromEnvironmentVariable without importing dart:io.
///
/// 2) If you want to provide the service account as a json string directly and are confident that you will not
///    be mixing dart:io/dart:html, then use can use ServiceAccountObject(<Service account json here>);
///
/// If you do not provide a service account, firebase will initialize you as an anonymous user unless you sign in with
/// the signIn(String email, String password) method in this class.
class FirebaseAuth {
  /* Singleton interface */
  static FirebaseAuth _instance;

  static FirebaseAuth initialize(String apiKey, TokenStore tokenStore,
      {ServiceAccountObject serviceAccount}) {
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
  final ServiceAccountObject serviceAccount;

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

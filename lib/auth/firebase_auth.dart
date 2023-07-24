import 'package:firedart/auth/auth_gateway.dart';
import 'package:firedart/auth/client.dart';
import 'package:firedart/auth/token_provider.dart';
import 'package:firedart/auth/token_store.dart';
import 'package:firedart/auth/user_gateway.dart';
import 'package:http/http.dart' as http;

class FirebaseAuth {
  /* Singleton interface */
  static FirebaseAuth? _instance;

  static FirebaseAuth initialize(String apiKey, TokenStore tokenStore,
      {http.Client? httpClient}) {
    if (initialized) {
      throw Exception('FirebaseAuth instance was already initialized');
    }
    _instance = FirebaseAuth(apiKey, tokenStore, httpClient: httpClient);
    return _instance!;
  }

  static bool get initialized => _instance != null;

  static FirebaseAuth get instance {
    if (!initialized) {
      throw Exception(
          "FirebaseAuth hasn't been initialized. Please call FirebaseAuth.initialize() before using it.");
    }
    return _instance!;
  }

  /* Instance interface */
  final String apiKey;

  http.Client httpClient;
  late TokenProvider tokenProvider;

  late AuthGateway _authGateway;
  late UserGateway _userGateway;

  FirebaseAuth(this.apiKey, TokenStore tokenStore, {http.Client? httpClient})
      : assert(apiKey.isNotEmpty),
        httpClient = httpClient ?? http.Client() {
    var keyClient = KeyClient(this.httpClient, apiKey);
    tokenProvider = TokenProvider(keyClient, tokenStore);

    _authGateway = AuthGateway(keyClient, tokenProvider);
    _userGateway = UserGateway(keyClient, tokenProvider);
  }

  bool get isSignedIn => tokenProvider.isSignedIn;

  Stream<bool> get signInState => tokenProvider.signInState;

  String get userId {
    if (!isSignedIn) throw Exception('User signed out');
    return tokenProvider.userId!;
  }

  Future<User> signUp(String email, String password) =>
      _authGateway.signUp(email, password);

  Future<User> signIn(String email, String password) =>
      _authGateway.signIn(email, password);

  Future<void> signInWithCustomToken(String token) =>
      _authGateway.signInWithCustomToken(token);

  Future<User> signInAnonymously() => _authGateway.signInAnonymously();

  void signOut() => tokenProvider.signOut();

  void close() => httpClient.close();

  Future<void> resetPassword(String email) => _authGateway.resetPassword(email);

  Future<void> requestEmailVerification({String? langCode}) =>
      _userGateway.requestEmailVerification(langCode: langCode);

  Future<void> changePassword(String password) =>
      _userGateway.changePassword(password);

  Future<User> getUser() => _userGateway.getUser();

  Future<void> updateProfile({String? displayName, String? photoUrl}) =>
      _userGateway.updateProfile(displayName, photoUrl);

  Future<void> deleteAccount() async {
    await _userGateway.deleteAccount();
    signOut();
  }
}

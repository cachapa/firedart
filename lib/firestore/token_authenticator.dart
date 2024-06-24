import '../firedart.dart';

/// The [TokenAuthenticator] keeps a [FirebaseAuth] member, which is passed in
/// during [Firestore.initialize] when not using Application Default Credentials.
///
/// The [authenticate] function is passed to [Firestore]'s [FirestoreGateway]
/// where it is used to authenticate requests.
class TokenAuthenticator {
  final FirebaseAuth auth;

  TokenAuthenticator._internal(this.auth);

  static TokenAuthenticator? from(FirebaseAuth? auth) =>
      auth != null ? TokenAuthenticator._internal(auth) : null;

  Future<void> authenticate(Map<String, String> metadata, String uri) async {
    var idToken = await auth.tokenProvider.idToken;
    metadata['authorization'] = 'Bearer $idToken';
  }
}

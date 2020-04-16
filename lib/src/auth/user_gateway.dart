import 'dart:convert';

import 'package:firedart/src/auth/client.dart';
import 'package:firedart/src/auth/token_provider.dart';

class UserGateway {
  final UserClient _client;

  /// The authentication server URL used to perform auth related requests.
  final String authGatewayUrl;

  /// Creates an instance of [UserGateway] with the given [client],
  /// [tokenProvider] and [authGatewayUrl].
  ///
  /// Throws an [ArgumentError] if [authGatewayUrl] is `null`.
  UserGateway(
    KeyClient client,
    TokenProvider tokenProvider,
    this.authGatewayUrl,
  ) : _client = UserClient(client, tokenProvider) {
    ArgumentError.checkNotNull(authGatewayUrl, 'authGatewayUrl');
  }

  Future<void> requestEmailVerification() async => _post('sendOobCode', {
        'requestType': 'VERIFY_EMAIL',
      });

  Future<User> getUser() async {
    var map = await _post('lookup', {});
    return User.fromMap(map['users'][0]);
  }

  Future<void> changePassword(String password) async {
    await _post('update', {
      'password': password,
    });
  }

  Future<void> updateProfile(String displayName, String photoUrl) async {
    await _post('update', {
      if (displayName != null) 'displayName': displayName,
      if (photoUrl != null) 'photoUrl': photoUrl,
    });
  }

  Future<void> deleteAccount() async {
    await _post('delete', {});
  }

  Future<Map<String, dynamic>> _post<T>(
      String method, Map<String, String> body) async {
    var requestUrl = '$authGatewayUrl/v1/accounts:$method';

    var response = await _client.post(
      requestUrl,
      body: body,
    );

    return json.decode(response.body);
  }
}

class User {
  final String id;
  final String displayName;
  final String photoUrl;
  final String email;
  final bool emailVerified;

  User.fromMap(Map<String, dynamic> map)
      : id = map['localId'],
        displayName = map['displayName'],
        photoUrl = map['photoUrl'],
        email = map['email'],
        emailVerified = map['emailVerified'];

  @override
  String toString() =>
      'id: $id, name: $displayName, photo: $photoUrl, email: $email, emailVerified: $emailVerified';
}

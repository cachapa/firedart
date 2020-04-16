import 'dart:convert';

import 'package:firedart/src/auth/client/key_client.dart';
import 'package:firedart/src/auth/client/user_client.dart';
import 'package:firedart/src/auth/model/user.dart';
import 'package:firedart/src/auth/token/provider/token_provider.dart';

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
      ) : _client = UserClient(client, tokenProvider);

  Future<void> requestEmailVerification() async => _post('sendOobCode', {
    'requestType': 'VERIFY_EMAIL',
  });

  Future<User> getUser() async {
    final map = await _post('lookup', {});
    return User.fromMap(map['users'][0] as Map<String, dynamic>);
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
    final requestUrl = '$authGatewayUrl/v1/accounts:$method';

    final response = await _client.post(
      requestUrl,
      body: body,
    );

    return json.decode(response.body) as Map<String, dynamic>;
  }
}

import 'dart:convert';

import 'package:firedart/src/auth/client.dart';
import 'package:firedart/src/auth/token_provider.dart';

import 'user_gateway.dart';

class AuthGateway {
  final KeyClient client;
  final TokenProvider tokenProvider;

  /// The authentication server URL used to perform auth related requests.
  final String authGatewayUrl;

  /// Creates an instance of [AuthGateway] with the given [client],
  /// [tokenProvider] and [authGatewayUrl].
  ///
  /// Throws an [ArgumentError] if either [client], [tokenProvider] or
  /// [authGatewayUrl] is `null`.
  AuthGateway(this.client, this.tokenProvider, this.authGatewayUrl) {
    ArgumentError.checkNotNull(client, 'client');
    ArgumentError.checkNotNull(tokenProvider, 'tokenProvider');
    ArgumentError.checkNotNull(authGatewayUrl, 'authGatewayUrl');
  }

  Future<User> signUp(String email, String password) async =>
      _auth('signUp', email, password);

  Future<User> signIn(String email, String password) async =>
      _auth('signInWithPassword', email, password);

  Future<void> resetPassword(String email) => _post('sendOobCode', {
        'requestType': 'PASSWORD_RESET',
        'email': email,
      });

  Future<User> _auth(String method, String email, String password) async {
    var body = {
      'email': email,
      'password': password,
      'returnSecureToken': 'true',
    };

    var map = await _post(method, body);
    tokenProvider.setToken(map);
    return User.fromMap(map);
  }

  Future<Map<String, dynamic>> _post(
      String method, Map<String, String> body) async {
    var requestUrl = '$authGatewayUrl/v1/accounts:$method';

    var response = await client.post(
      requestUrl,
      body: body,
    );

    if (response.statusCode != 200) {
      throw Exception('${response.statusCode}: ${response.reasonPhrase}');
    }

    return json.decode(response.body);
  }
}

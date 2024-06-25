import 'dart:convert';

import 'package:firedart/auth/client.dart';
import 'package:firedart/auth/token_provider.dart';
import 'package:firedart/shared/emulator.dart';

import 'exceptions.dart';
import 'user_gateway.dart';

class AuthGateway {
  final KeyClient client;
  final TokenProvider tokenProvider;
  final Emulator? emulator;

  AuthGateway(this.client, this.tokenProvider, {this.emulator});

  Future<User> signUp(String email, String password) =>
      _auth('signUp', {'email': email, 'password': password})
          .then(User.fromMap);

  Future<User> signIn(String email, String password) =>
      _auth('signInWithPassword', {'email': email, 'password': password})
          .then(User.fromMap);

  Future<void> signInWithCustomToken(String token) => _auth(
      'signInWithCustomToken', {'token': token, 'returnSecureToken': true});

  Future<User> signInAnonymously() => _auth('signUp', {}).then(User.fromMap);

  Future<void> resetPassword(String email) => _post('sendOobCode', {
        'requestType': 'PASSWORD_RESET',
        'email': email,
      });

  Future<Map<String, dynamic>> _auth(
      String method, Map<String, Object?> payload) async {
    final body = {
      ...payload,
      'returnSecureToken': true,
    };

    final map = await _post(method, body);

    tokenProvider.setToken(map);
    return map;
  }

  Future<Map<String, dynamic>> _post(
      String method, Map<String, Object?> body) async {
    final requestPath = 'identitytoolkit.googleapis.com/v1/accounts:$method';

    final requestUrl = emulator != null
        ? 'http://${emulator!.host}:${emulator!.port}/$requestPath'
        : 'https://$requestPath';

    final response = await client.post(
      Uri.parse(requestUrl),
      body: json.encode(body),
      headers: {
        'content-type': 'application/json',
      },
    );

    if (response.statusCode != 200) {
      throw AuthException(response.body);
    }

    return json.decode(response.body);
  }
}

import 'dart:convert';

import 'package:firebase_auth_rest/firebase_auth_rest.dart';
import 'package:firedart/auth/client.dart';

import 'user_gateway.dart';

class AuthGateway {
  final KeyClient client;

  AuthGateway(this.client);

  Future<User> signUp(String email, String password) async =>
      _auth('signUp', {'email': email, 'password': password});

  Future<User> signIn(String email, String password) async =>
      _auth('signInWithPassword', {'email': email, 'password': password});

  Future<User> signInAnonymously() async => _auth('signUp', {});

  Future<void> resetPassword(String email) => _post('sendOobCode', {
        'requestType': 'PASSWORD_RESET',
        'email': email,
      });

  Future<User> _auth(String method, Map<String, String> payload) async {
    var body = {
      ...payload,
      'returnSecureToken': 'true',
    };

    var map = await _post(method, body);
    return User.fromMap(map);
  }

  Future<Map<String, dynamic>> _post(
      String method, Map<String, String> body) async {
    var requestUrl =
        'https://identitytoolkit.googleapis.com/v1/accounts:$method';

    var response = await client.post(
      Uri.parse(requestUrl),
      body: body,
    );

    if (response.statusCode != 200) {
      var errorData = ErrorData(message: response.body);
      throw AuthException(errorData);
    }

    return json.decode(response.body);
  }
}

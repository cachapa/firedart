import 'dart:convert';

import 'package:firedart/auth/token_provider.dart';
import 'package:firedart/util/client.dart';

class AuthGateway {
  final KeyClient client;
  final TokenProvider tokenProvider;

  AuthGateway(this.client, this.tokenProvider);

  Future<void> signUp(String email, String password) async =>
      _auth("signupNewUser", email, password);

  Future<void> signIn(String email, String password) async =>
      _auth("verifyPassword", email, password);

  resetPassword(String email) {
    _post("getOobConfirmationCode", {
      "requestType": "PASSWORD_RESET",
      "email": email,
    });
  }

  Future<void> _auth(String method, String email, String password) async {
    var body = {
      "email": email,
      "password": password,
      "returnSecureToken": "true",
    };

    var map = await _post(method, body);
    tokenProvider.setToken(map);
  }

  Future<Map<String, dynamic>> _post(
      String method, Map<String, String> body) async {
    var requestUrl =
        "https://www.googleapis.com/identitytoolkit/v3/relyingparty/$method";

    var response = await client.post(
      requestUrl,
      body: body,
    );

    return json.decode(response.body);
  }

  updateProfile({String displayName, String photoUrl}) {}

  deleteAccount() {}
}

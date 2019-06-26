import 'dart:convert';

import 'package:firedart/auth/token_provider.dart';
import 'package:firedart/util/client.dart';

class UserGateway {
  final UserClient _client;

  UserGateway(KeyClient client, TokenProvider tokenProvider)
      : _client = UserClient(client, tokenProvider);

  Future<void> requestEmailVerification() async =>
      _post("getOobConfirmationCode", {
        "requestType": "VERIFY_EMAIL",
      });

  Future<User> getUser() async {
    var map = await _post("getAccountInfo", {});
    return User.fromMap(map);
  }

  Future<void> changePassword(String password) async {
    await _post("setAccountInfo", {
      "password": password,
    });
  }

  Future<void> updateProfile(String displayName, String photoUrl) async {
    await _post("setAccountInfo", {
      if (displayName != null) "displayName": displayName,
      if (photoUrl != null) "photoUrl": photoUrl,
    });
  }

  Future<void> deleteAccount() async {
    await _post("deleteAccount", {});
  }

  Future<Map<String, dynamic>> _post<T>(
      String method, Map<String, String> body) async {
    var requestUrl =
        "https://www.googleapis.com/identitytoolkit/v3/relyingparty/$method";

    var response = await _client.post(
      requestUrl,
      body: body,
    );

    return json.decode(response.body);
  }
}

class User {
  final String email;
  final bool emailVerified;

  User.fromMap(Map<String, dynamic> map)
      : email = map['users'][0]['email'],
        emailVerified = map['users'][0]['emailVerified'];

  @override
  String toString() {
    return "email: $email, emailVerified: $emailVerified";
  }
}

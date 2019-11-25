import 'dart:convert';

import 'package:firedart/auth/client.dart';
import 'package:firedart/auth/token_provider.dart';

class UserGateway {
  final UserClient _client;

  UserGateway(KeyClient client, TokenProvider tokenProvider)
      : _client = UserClient(client, tokenProvider);

  Future<void> requestEmailVerification() async => _post("sendOobCode", {
        "requestType": "VERIFY_EMAIL",
      });

  Future<User> getUser() async {
    var map = await _post("lookup", {});
    return User.fromMap(map);
  }

  Future<void> changePassword(String password) async {
    await _post("update", {
      "password": password,
    });
  }

  Future<void> updateProfile(String displayName, String photoUrl) async {
    await _post("update", {
      if (displayName != null) "displayName": displayName,
      if (photoUrl != null) "photoUrl": photoUrl,
    });
  }

  Future<void> deleteAccount() async {
    await _post("delete", {});
  }

  Future<Map<String, dynamic>> _post<T>(
      String method, Map<String, String> body) async {
    var requestUrl =
        "https://identitytoolkit.googleapis.com/v1/accounts:$method";

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

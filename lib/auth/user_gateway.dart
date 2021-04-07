import 'dart:convert';

import 'package:firedart/auth/client.dart';
import 'package:firedart/auth/token_provider.dart';

class UserGateway {
  final UserClient _client;

  UserGateway(KeyClient client, TokenProvider tokenProvider)
      : _client = UserClient(client, tokenProvider);

  Future<void> requestEmailVerification() =>
      _post('sendOobCode', {'requestType': 'VERIFY_EMAIL'});

  Future<User> getUser() async {
    var map = await _post('lookup', {});
    return User.fromMap(map['users'][0]);
  }

  Future<void> changePassword(String password) async {
    await _post('update', {
      'password': password,
    });
  }

  Future<void> updateProfile(String? displayName, String? photoUrl) async {
    assert(displayName != null || photoUrl != null);
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
    var requestUrl =
        'https://identitytoolkit.googleapis.com/v1/accounts:$method';

    var response = await _client.post(
      Uri.parse(requestUrl),
      body: body,
    );

    return json.decode(response.body);
  }
}

class User {
  final String id;
  final String? displayName;
  final String? photoUrl;
  final String? email;
  final bool? emailVerified;

  User.fromMap(Map<String, dynamic> map)
      : id = map['localId'],
        displayName = map['displayName'],
        photoUrl = map['photoUrl'],
        email = map['email'],
        emailVerified = map['emailVerified'];

  Map<String, dynamic> toMap() => {
        'localId': id,
        'displayName': displayName,
        'photoUrl': photoUrl,
        'email': email,
        'emailVerified': emailVerified,
      };

  @override
  String toString() => toMap().toString();
}

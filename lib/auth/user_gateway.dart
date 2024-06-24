import 'dart:convert';

import 'package:firedart/auth/client.dart';
import 'package:firedart/auth/token_provider.dart';

/// A [UserGateway] holds a UserClient that is made up of a [KeyClient] and a
/// [TokenProvider] allowing requests to the Firebase Auth API as well as
/// token storage for allowing authenticated requests.
class UserGateway {
  final UserClient _client;

  UserGateway(KeyClient client, TokenProvider tokenProvider)
      : _client = UserClient(client, tokenProvider);

  /// Send an email verification for the current user using the
  /// getOobConfirmationCode endpoint.
  Future<void> requestEmailVerification({String? langCode}) => _post(
        'sendOobCode',
        {'requestType': 'VERIFY_EMAIL'},
        headers: {if (langCode != null) 'X-Firebase-Locale': langCode},
      );

  /// Get a user's data using the getAccountInfo endpoint and create a new
  /// [User] from the returned account info.
  Future<User> getUser() async {
    var map = await _post('lookup', {});
    return User.fromMap(map['users'][0]);
  }

  /// Change a user's password using the setAccountInfo endpoint.
  Future<void> changePassword(String password) async {
    await _post('update', {
      'password': password,
    });
  }

  /// Update a user's profile (display name / photo URL) using the setAccountInfo
  /// endpoint.
  Future<void> updateProfile(String? displayName, String? photoUrl) async {
    assert(displayName != null || photoUrl != null);
    await _post('update', {
      if (displayName != null) 'displayName': displayName,
      if (photoUrl != null) 'photoUrl': photoUrl,
    });
  }

  /// Delete a current user using the deleteAccount endpoint.
  Future<void> deleteAccount() async {
    await _post('delete', {});
  }

  Future<Map<String, dynamic>> _post<T>(String method, Map<String, String> body,
      {Map<String, String>? headers}) async {
    var requestUrl =
        'https://identitytoolkit.googleapis.com/v1/accounts:$method';

    var response = await _client.post(
      Uri.parse(requestUrl),
      body: body,
      headers: headers,
    );

    return json.decode(response.body);
  }
}

/// A [User] has a user id and optionally a [displayName], [photoUrl], [email]
/// and a boolean indicating whether or not the email has been verified.
class User {
  final String id;
  final String? displayName;
  final String? photoUrl;
  final String? email;
  final bool? emailVerified;

  /// Creates a [User] from a Map with key value pairs for the user id,
  /// [displayName], [photoUrl], [email] and [emailVerified].
  User.fromMap(Map<String, dynamic> map)
      : id = map['localId'],
        displayName = map['displayName'],
        photoUrl = map['photoUrl'],
        email = map['email'],
        emailVerified = map['emailVerified'];

  /// Convert the User to a Map with key value pairs for each of the members of
  /// the [User] object.
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

import 'dart:convert';

class AuthException implements Exception {
  final String body;

  String get message => jsonDecode(body)['error']['message'];

  String get errorCode => message.split(' ')[0];

  AuthException(this.body);

  @override
  String toString() => 'AuthException: $errorCode';
}

class SignedOutException implements Exception {
  @override
  String toString() =>
      'SignedOutException: Attempted to call a protected resource while signed out';
}

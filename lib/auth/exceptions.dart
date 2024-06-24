import 'dart:convert';

/// An [Exception] that includes the body of a http request response.
class AuthException implements Exception {
  final String body;

  /// Extract the error message from the body.
  String get message => jsonDecode(body)['error']['message'];

  /// Extract the error code from the error message.
  String get errorCode => message.split(' ')[0];

  AuthException(this.body);

  @override
  String toString() => 'AuthException: $errorCode';
}

/// An [Exception] thrown when an app attempted to make a Firestore request
/// before the user is signed in.
class SignedOutException implements Exception {
  @override
  String toString() =>
      'SignedOutException: Attempted to call a protected resource while signed out';
}

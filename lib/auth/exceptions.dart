class SignedOutException implements Exception {
  @override
  String toString() =>
      'SignedOutException: Attempted to call a protected resource while signed out';
}

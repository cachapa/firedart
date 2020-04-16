import 'package:firedart/src/auth/token/model/token.dart';

abstract class TokenStore {
  Token _token;

  String get userId => _token.userId;

  String get idToken => _token.idToken;

  String get refreshToken => _token.refreshToken;

  DateTime get expiry => _token.expiry;

  bool get hasToken => _token != null;

  void setToken(
      String userId, String idToken, String refreshToken, int expiresIn) {
    assert(idToken != null && refreshToken != null && expiresIn != null);
    final expiry = DateTime.now().add(Duration(seconds: expiresIn));
    _token = Token(userId, idToken, refreshToken, expiry);
    write(_token);
  }

  TokenStore() {
    _token = read();
  }

  /// Force refresh - useful for testing
  void expireToken() {
    _token = Token(
        _token.userId, _token.idToken, _token.refreshToken, DateTime.now());
    write(_token);
  }

  void clear() {
    _token = null;
    delete();
  }

  /// Restore the refresh token from storage, returns null if token isn't stored
  Token read();

  /// Persist the refresh token
  void write(Token token);

  void delete();
}

abstract class TokenStore {
  Token? _token;

  String? get userId => _token?._userId;

  String? get idToken => _token?._idToken;

  String? get refreshToken => _token?._refreshToken;

  DateTime? get expiry => _token?._expiry;

  bool get hasToken => _token != null;

  void setToken(
      String userId, String idToken, String refreshToken, int expiresIn) {
    var expiry = DateTime.now().add(Duration(seconds: expiresIn));
    _token = Token(userId, idToken, refreshToken, expiry);
    write(_token);
  }

  TokenStore() {
    _token = read();
  }

  /// Force refresh - useful for testing
  void expireToken() {
    assert(_token != null);
    _token = Token(_token!._userId, _token!._idToken, _token!._refreshToken,
        DateTime.now());
    write(_token);
  }

  void clear() {
    _token = null;
    delete();
  }

  /// Restore the refresh token from storage, returns null if token isn't stored
  Token? read();

  /// Persist the refresh token
  void write(Token? token);

  void delete();
}

/// Doesn't actually persist tokens. Useful for testing or in environments where
/// persistence isn't available but it's fine signing in for each session.
class VolatileStore extends TokenStore {
  @override
  Token? read() => null;

  @override
  void write(Token? token) {}

  @override
  void delete() {}
}

class Token {
  final String _userId;
  final String _idToken;
  final String _refreshToken;
  final DateTime _expiry;

  Token(this._userId, this._idToken, this._refreshToken, this._expiry);

  Token.fromMap(Map<String, dynamic> map)
      : this(
          map['userId'],
          map['idToken'],
          map['refreshToken'],
          DateTime.parse(map['expiry']),
        );

  Map<String, dynamic> toMap() => {
        'userId': _userId,
        'idToken': _idToken,
        'refreshToken': _refreshToken,
        'expiry': _expiry.toIso8601String(),
      };
}

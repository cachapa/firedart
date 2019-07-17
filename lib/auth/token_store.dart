import 'dart:convert';
import 'dart:io';

abstract class TokenStore {
  Token _token;

  String get idToken => _token._idToken;
  String get refreshToken => _token._refreshToken;
  DateTime get expiry => _token._expiry;

  bool get hasToken => _token != null;

  void setToken(String idToken, String refreshToken, int expiresIn) {
    assert(idToken != null && refreshToken != null && expiresIn != null);
    var expiry = DateTime.now().add(Duration(seconds: expiresIn));
    _token = Token(idToken, refreshToken, expiry);
    write(_token);
  }

  TokenStore() {
    _token = read();
  }

  /// Force refresh - useful for testing
  void expireToken() {
    _token = Token(_token._idToken, _token._refreshToken, DateTime.now());
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

/// Doesn't actually persist tokens. Useful for testing or in environments where
/// persistence isn't available but it's fine signing in for each session.
class VolatileStore extends TokenStore {
  @override
  Token read() => null;

  @override
  void write(Token token) {}

  @override
  void delete() {}
}

/// Stores the refresh token as plaintext in a file.
/// Defaults to ./token.json if path isn't specified.
class FileStore extends TokenStore {
  final File _file;

  FileStore({String path}) : _file = File(path ?? "token.json");

  @override
  Token read() {
    if (!_file.existsSync()) {
      return null;
    }

    try {
      Map<String, dynamic> map = json.decode(_file.readAsStringSync());
      return Token.fromMap(map);
    } catch (e) {
      print("Error while reading token: $e");
      return null;
    }
  }

  @override
  void write(Token token) =>
      _file.writeAsStringSync(json.encode(token.toMap()));

  @override
  void delete() {
    if (_file.existsSync()) {
      _file.deleteSync();
    }
  }
}

class Token {
  final String _idToken;
  final String _refreshToken;
  final DateTime _expiry;

  Token(this._idToken, this._refreshToken, this._expiry);

  Token.fromMap(Map<String, dynamic> map)
      : this(
          map["idToken"],
          map["refreshToken"],
          DateTime.parse(map["expiry"]),
        );

  Map<String, dynamic> toMap() => {
        "idToken": _idToken,
        "refreshToken": _refreshToken,
        "expiry": _expiry.toIso8601String(),
      };
}

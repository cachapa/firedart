import 'dart:io';

abstract class TokenStore {
  String idToken;
  String _refreshToken;
  DateTime expiry;

  String get refreshToken => _refreshToken;

  set refreshToken(String value) {
    _refreshToken = value;
    write(value);
  }

  TokenStore() {
    refreshToken = read();
  }

  /// Restore the refresh token from storage
  String read();

  /// Persist the refresh token
  void write(String refreshToken);
}

/// Doesn't actually persist tokens. Useful for testing or in environments where
/// persistence isn't available but it's fine signing in for each session.
class VolatileStore extends TokenStore {
  @override
  String read() => null;

  @override
  void write(String refreshToken) {}
}

/// Stores the refresh token as plaintext in a file.
/// Defaults to ./token.store if path isn't specified.
class FileStore extends TokenStore {
  final File _file;

  FileStore({String path}) : _file = File(path ?? "token.store");

  @override
  String read() {
    if (!_file.existsSync()) {
      return null;
    }
    var token = _file.readAsStringSync();
    return token.isEmpty ? null : token;
  }

  @override
  void write(String refreshToken) => _file.writeAsString(_refreshToken ?? "");
}

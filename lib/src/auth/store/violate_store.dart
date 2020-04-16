import 'package:firedart/src/auth/token/model/token.dart';
import 'package:firedart/src/auth/store/token_store.dart';

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

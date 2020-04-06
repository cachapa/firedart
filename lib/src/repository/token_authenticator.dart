import 'package:grpc/grpc.dart';

import '../../firedart.dart';

class TokenAuthenticator {
  final FirebaseAuth auth;

  TokenAuthenticator._internal(this.auth);

  factory TokenAuthenticator.from(FirebaseAuth auth) {
    return auth != null ? TokenAuthenticator._internal(auth) : null;
  }

  Future<void> authenticate(Map<String, String> metadata, String uri) async {
    var idToken = await auth.tokenProvider.idToken;
    metadata['authorization'] = 'Bearer ${idToken}';
  }

  CallOptions get toCallOptions => CallOptions(providers: [authenticate]);
}

import 'package:grpc/grpc.dart';

class ApplicationDefaultAuthenticator {
  late final Future<HttpBasedAuthenticator> _delegate =
      applicationDefaultCredentialsAuthenticator([
    'https://www.googleapis.com/auth/datastore',
  ]);

  Future<void> authenticate(Map<String, String> metadata, String uri) async {
    return (await _delegate).authenticate(metadata, uri);
  }
}

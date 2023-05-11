import 'package:grpc/grpc.dart';

class ApplicationDefaultAuthenticator {
  ApplicationDefaultAuthenticator({required this.useEmulator});

  final bool useEmulator;

  late final Future<HttpBasedAuthenticator> _delegate =
      applicationDefaultCredentialsAuthenticator([
    'https://www.googleapis.com/auth/datastore',
  ]);

  Future<void> authenticate(Map<String, String> metadata, String uri) async {
    if (useEmulator) {
      metadata['authorization'] = 'Bearer owner';

      return;
    }
    return (await _delegate).authenticate(metadata, uri);
  }
}

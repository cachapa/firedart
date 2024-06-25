import 'package:firedart/shared/emulator.dart';
import 'package:grpc/grpc.dart';

class ApplicationDefaultAuthenticator {
  ApplicationDefaultAuthenticator({this.emulator});

  final Emulator? emulator;

  late final Future<HttpBasedAuthenticator> _delegate =
      applicationDefaultCredentialsAuthenticator([
    'https://www.googleapis.com/auth/datastore',
  ]);

  Future<void> authenticate(Map<String, String> metadata, String uri) async {
    if (emulator != null) {
      metadata['authorization'] = 'Bearer owner';

      return;
    }
    return (await _delegate).authenticate(metadata, uri);
  }
}

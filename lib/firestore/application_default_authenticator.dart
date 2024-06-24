import 'package:grpc/grpc.dart';

/// Application Default Credentials (ADC) is a strategy used by the authentication
/// libraries to automatically find credentials based on the application environment.
/// This means code can run in either a development or production environment
/// without changing how your application authenticates to googleapis.
///
/// [applicationDefaultCredentialsAuthenticator] looks for credentials in the
/// following order of preference:
///  1. A JSON file whose path is specified by `GOOGLE_APPLICATION_CREDENTIALS`,
///     this file typically contains [exported service account keys][svc-keys].
///  2. A JSON file created by [`gcloud auth application-default login`][gcloud-login]
///     in a well-known location (`%APPDATA%/gcloud/application_default_credentials.json`
///     on Windows and `$HOME/.config/gcloud/application_default_credentials.json` on Linux/Mac).
///  3. On Google Compute Engine and App Engine Flex we fetch credentials from
///     [GCE metadata service][metadata].
///
/// The [authenticate] method is used by the [FirestoreGateway] to make
/// authenticated requests.
///
/// An optional [useEmulator] parameter allows authenticating with a local
/// Firebase emulator.
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

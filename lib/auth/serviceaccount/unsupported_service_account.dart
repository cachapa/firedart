import 'abstract_service_account.dart';

final ServiceAccountIO _serviceAccount = ServiceAccountIO._private();

ServiceAccount serviceAccountManager() => _serviceAccount;

class ServiceAccountIO extends ServiceAccount {
  ServiceAccountIO._private();

  @override
  ServiceAccountObject fromEnvironmentVariable({String environmentVariable = 'GOOGLE_APPLICATION_CREDENTIALS'}) =>
      throw UnsupportedError(
          "This platform is unsupported. We can't use neither dart:io nor dart:html. Please report this error on github.");
}

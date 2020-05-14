import 'abstract_service_account.dart';

final ServiceAccountHTML _serviceAccount = ServiceAccountHTML._private();

ServiceAccount serviceAccountManager() => _serviceAccount;

class ServiceAccountHTML extends ServiceAccount {
  ServiceAccountHTML._private();

  @override
  ServiceAccountObject fromEnvironmentVariable(
          {String environmentVariable = 'GOOGLE_APPLICATION_CREDENTIALS'}) =>
      throw UnsupportedError(
          'Web clients do not have access to system environment variables unfortunately. Please use ServiceAccount.fromJson(String json)');
}

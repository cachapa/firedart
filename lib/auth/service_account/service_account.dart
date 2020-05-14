import 'package:firedart/auth/service_account/access_exporter.dart';

class ServiceAccount {
  final String serviceAccountString;

  ServiceAccount.fromJson(this.serviceAccountString);

  ServiceAccount.fromEnvironmentVariable({String environmentVariable = 'GOOGLE_APPLICATION_CREDENTIALS'})
      : serviceAccountString = getIOAccess().getEnvironmentVariable(environmentVariable);

  static Future<ServiceAccount> serviceAccountFromFile(String filePath) async =>
      ServiceAccount.fromJson(await getIOAccess().getStringFromFile(filePath));
}

abstract class AbstractPlatformAccess {
  String getEnvironmentVariable(String environmentVariable);

  Future<String> getStringFromFile(String filePath);
}

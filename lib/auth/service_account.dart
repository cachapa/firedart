import 'package:firedart/io/io_access.dart';

class ServiceAccount {
  final String serviceAccountString;

  ServiceAccount.fromJson(this.serviceAccountString);

  ServiceAccount.fromEnvironmentVariable(
      {String environmentVariable = 'GOOGLE_APPLICATION_CREDENTIALS'})
      : serviceAccountString =
            getIOAccess().getEnvironmentVariable(environmentVariable);

  static Future<ServiceAccount> fromFile(String filePath) async =>
      ServiceAccount.fromJson(await getIOAccess().getStringFromFile(filePath));
}

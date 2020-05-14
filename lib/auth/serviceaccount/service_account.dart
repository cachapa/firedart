import 'package:firedart/auth/serviceaccount/access_exporter.dart';

class ServiceAccount {
  String serviceAccountString;

  ServiceAccount.fromJson(this.serviceAccountString);

  ServiceAccount.fromEnvironmentVariable({String environmentVariable = 'GOOGLE_APPLICATION_CREDENTIALS'}) {
    serviceAccountString = getIOAccess().getEnvironmentVariable(environmentVariable);
  }
}

abstract class AbstractPlatformAccess {
  String getEnvironmentVariable(String environmentVariable);
}

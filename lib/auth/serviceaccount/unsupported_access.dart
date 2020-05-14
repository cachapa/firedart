import 'service_account.dart';

final UnsupportedAccess _access = UnsupportedAccess._private();

AbstractPlatformAccess getIOAccess() => _access;

class UnsupportedAccess extends AbstractPlatformAccess {
  UnsupportedAccess._private();

  @override
  String getEnvironmentVariable(String environmentVariable) => '';
}

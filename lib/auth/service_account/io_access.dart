import 'dart:io';

import 'service_account.dart';

final IOAccess _ioAccess = IOAccess._private();

AbstractPlatformAccess getIOAccess() => _ioAccess;

class IOAccess extends AbstractPlatformAccess {
  IOAccess._private();

  @override
  String getEnvironmentVariable(String environmentVariable) =>
      Platform.environment[environmentVariable];

  @override
  Future<String> getStringFromFile(String filePath) async {
    return await File(filePath).readAsString();
  }
}

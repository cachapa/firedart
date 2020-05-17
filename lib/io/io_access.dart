import 'dart:async';
import 'dart:io';

import 'abstract_access.dart';

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

  @override
  StreamConsumer openWrite(String filePath) => File(filePath).openWrite();

  @override
  Stream openRead(String filePath) => File(filePath).openRead();
}

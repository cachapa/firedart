import 'dart:async';

abstract class AbstractPlatformAccess {
  String getEnvironmentVariable(String environmentVariable);

  Future<String> getStringFromFile(String filePath);

  StreamConsumer openWrite(String filePath);

  Stream openRead(String filePath);
}

import 'dart:async';

import 'abstract_access.dart';

final UnsupportedAccess _access = UnsupportedAccess._private();

AbstractPlatformAccess getIOAccess() => _access;

class UnsupportedAccess extends AbstractPlatformAccess {
  UnsupportedAccess._private();

  @override
  String getEnvironmentVariable(String environmentVariable) =>
      throw UnsupportedError(
          'Environment variables do not exist on the platform you are using.');

  @override
  Future<String> getStringFromFile(String filePath) => throw UnsupportedError(
      'File objects do not exist on the platform you are using.');

  @override
  StreamConsumer openWrite(String filePath) => throw UnsupportedError(
      'File objects do not exist on the platform you are using.');

  @override
  Stream openRead(String filePath) => throw UnsupportedError(
      'File objects do not exist on the platform you are using.');
}

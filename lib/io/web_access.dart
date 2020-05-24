import 'dart:async';
import 'dart:html';

import 'abstract_access.dart';

final WebAccess _webAccess = WebAccess._private();

AbstractPlatformAccess getIOAccess() => _webAccess;

class WebAccess extends AbstractPlatformAccess {
  WebAccess._private();

  @override
  String getEnvironmentVariable(String environmentVariable) =>
      throw UnsupportedError(
          'Environment variables do not exist on the platform you are using.');

  /// Untested
  @override
  Future<String> getStringFromFile(String filePath) async {
    var response = await HttpRequest.getString('filePath');
    return response;
  }

  /// Need someone more knowledgeable with dart:html
  @override
  StreamConsumer openWrite(String filePath) => throw UnsupportedError(
      'File objects do not exist on the platform you are using.');

  /// Need someone more knowledgeable with dart:html
  @override
  Stream openRead(String filePath) => throw UnsupportedError(
      'File objects do not exist on the platform you are using.');
}

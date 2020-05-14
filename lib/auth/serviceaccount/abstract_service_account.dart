abstract class ServiceAccount {
  /// Provide a service account json file as a string. If you wish to use a File object, use
  /// await File.readAsString() or File.readAsStringSync() to provide the json string here.
  ServiceAccountObject fromJson(String json) => ServiceAccountObject(json);

  /// You can choose to use environment variables as well. If you do not specify the environment variable name,
  /// 'GOOGLE_APPLICATION_CREDENTIALS' is used by default (recommended).
  ServiceAccountObject fromEnvironmentVariable(
      {String environmentVariable = 'GOOGLE_APPLICATION_CREDENTIALS'});
}

class ServiceAccountObject {
  final String _serviceAccountString;

  String get serviceAccountString => _serviceAccountString;

  ServiceAccountObject(this._serviceAccountString);
}

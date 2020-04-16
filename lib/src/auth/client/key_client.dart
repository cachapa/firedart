import 'package:http/http.dart' as http;

class KeyClient extends http.BaseClient {
  final http.Client client;
  final String apiKey;

  KeyClient(this.client, this.apiKey);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (!request.url.queryParameters.containsKey('key')) {
      final query = Map<String, String>.from(request.url.queryParameters)
        ..['key'] = apiKey;
      final url = Uri.https(request.url.authority, request.url.path, query);
      final newRequest = http.Request(request.method, url)
        ..headers.addAll(request.headers)
        ..bodyBytes = (request as http.Request).bodyBytes;
      return client.send(newRequest);
    }
    return client.send(request);
  }
}

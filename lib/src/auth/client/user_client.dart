import 'package:firedart/src/auth/client/key_client.dart';
import 'package:firedart/src/auth/token/provider/token_provider.dart';
import 'package:http/http.dart' as http;

class UserClient extends http.BaseClient {
  final KeyClient client;
  final TokenProvider tokenProvider;

  UserClient(this.client, this.tokenProvider);


  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    final newRequest = http.Request(request.method, request.url)
      ..headers['content-type'] = 'application/x-www-form-urlencoded'
      ..bodyFields = {'idToken': await tokenProvider.idToken};
    return client.send(newRequest);
  }
}

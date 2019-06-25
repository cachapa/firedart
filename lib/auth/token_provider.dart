import 'dart:async';
import 'dart:convert';

import 'package:firedart/util/client.dart';
import 'package:firedart/auth/token_store.dart';

class TokenProvider {
  final KeyClient client;
  final TokenStore _tokenStore;

  StreamController<bool> _signInStateStreamController;

  TokenProvider(this.client, this._tokenStore) {
    _signInStateStreamController =
        StreamController<bool>(onListen: _notifyState);
  }

  bool get isSignedIn => _tokenStore.refreshToken != null;

  Stream<bool> get signInState => _signInStateStreamController.stream;

  Future<String> get idToken async {
    if (_tokenStore.idToken == null) {
      await _refresh();
    }
    return _tokenStore.idToken;
  }

  String get refreshToken => _tokenStore.refreshToken;

  void setToken(Map<String, dynamic> map) {
    _tokenStore.idToken = map["idToken"];
    _tokenStore.refreshToken = map["refreshToken"];
    _notifyState();
  }

  void invalidateToken() {
    _tokenStore.idToken = null;
  }

  void signOut() {
    _tokenStore.idToken = null;
    _tokenStore.refreshToken = null;
    _notifyState();
  }

  Future _refresh() async {
    var response = await client.post(
      "https://securetoken.googleapis.com/v1/token",
      body: {
        "grant_type": "refresh_token",
        "refresh_token": _tokenStore.refreshToken,
      },
    );

    switch (response.statusCode) {
      case 200:
        var map = json.decode(response.body);
        _tokenStore.idToken = map['id_token'];
        _tokenStore.refreshToken = map['refresh_token'];
        break;
      case 400:
        signOut();
        break;
    }
  }

  void _notifyState() => _signInStateStreamController.add(isSignedIn);
}

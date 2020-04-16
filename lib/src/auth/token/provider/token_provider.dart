import 'dart:async';
import 'dart:convert';

import 'package:firedart/src/auth/client/key_client.dart';
import 'package:firedart/src/auth/store/token_store.dart';

const _tokenExpirationThreshold = Duration(seconds: 30);

class TokenProvider {
  final KeyClient client;
  final TokenStore _tokenStore;

  StreamController<bool> _signInStateStreamController;

  TokenProvider(this.client, this._tokenStore) {
    _signInStateStreamController = StreamController<bool>();
  }

  String get userId => _tokenStore.userId;

  String get refreshToken => _tokenStore.refreshToken;

  bool get isSignedIn => _tokenStore.hasToken;

  Stream<bool> get signInState => _signInStateStreamController.stream;

  Future<String> get idToken async {
    if (_tokenStore.expiry
        .subtract(_tokenExpirationThreshold)
        .isBefore(DateTime.now().toUtc())) {
      await _refresh();
    }
    return _tokenStore.idToken;
  }

  void setToken(Map<String, dynamic> map) {
    _tokenStore.setToken(
      map['localId'] as String,
      map['idToken'] as String,
      map['refreshToken'] as String,
      int.parse(map['expiresIn'] as String),
    );
    _notifyState();
  }

  void signOut() {
    _tokenStore.clear();
    _notifyState();
  }

  Future _refresh() async {
    final response = await client.post(
      'https://securetoken.googleapis.com/v1/token',
      body: {
        'grant_type': 'refresh_token',
        'refresh_token': _tokenStore.refreshToken,
      },
    );

    switch (response.statusCode) {
      case 200:
        final map = json.decode(response.body);
        _tokenStore.setToken(
          map['localId'] as String,
          map['id_token'] as String,
          map['refresh_token'] as String,
          int.parse(map['expires_in'] as String),
        );
        break;
      case 400:
        signOut();
        break;
    }
  }

  void _notifyState() => _signInStateStreamController.add(isSignedIn);
}

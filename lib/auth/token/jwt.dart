import 'dart:convert';

import 'package:firedart/auth/token/user_record.dart';
import 'package:http/http.dart' as http;
import 'package:openid_client/openid_client.dart';

import 'rsa.dart';

class Jwt {
  static final _rsaMap = <String, Rsa>{};

  final List<String> _tokenParts;
  final String token;

  // TODO Improve this when dart gets lazy field instantiation
  _Header _h;
  _Payload _p;

  _Header get _header => _h ??= _Header(_tokenParts[0]);

  _Payload get _payload => _p ??= _Payload(_tokenParts[1]);

  String get userId => _payload.subject;

  Jwt(this.token) : _tokenParts = token.split(' ').last.split('.');

  Future<bool> validate(String projectId, Map<String, String> certificates,
      {bool enforceEmailVerification = false,
      bool checkRevoked = false}) async {
    // Validate payload
    var now = (DateTime.now().toUtc().millisecondsSinceEpoch / 1000).floor();

    if (_payload.authenticationTime >= now) {
      throw Exception('Authentication time must be in the past');
    }
    if (_payload.issueTime >= now) {
      throw Exception('Issue time must be in the past');
    }
    if (_payload.expirationTime <= now) {
      throw Exception('Token expired');
    }

    if (_payload.audience != projectId) {
      throw Exception('Unexpected audience: ${_payload.audience}');
    }
    if (_payload.issuer != 'https://securetoken.google.com/$projectId') {
      throw Exception('Unexpected issuer: ${_payload.issuer}');
    }

    if (enforceEmailVerification && !_payload.isEmailVerified) {
      throw EmailVerificationException();
    }

    // Validate header
    if (_header.algorithm != 'RS256') {
      throw Exception('Unrecognized algorithm: ${_header.algorithm}');
    }

    // Validate signature
    if (!certificates.containsKey(_header.certificateId)) {
      throw Exception('Unrecognized certificate id: ${_header.certificateId}');
    }

    _rsaMap[_header.certificateId] ??=
        Rsa.fromCertificate(certificates[_header.certificateId]);
    var rsa = _rsaMap[_header.certificateId];
    var verified =
        rsa.verify('${_tokenParts[0]}.${_tokenParts[1]}', _tokenParts[2]);

    if (verified && checkRevoked) {
      var user = UserRecord.fromJson(await _getUserObject(projectId, userId));

      if (user.tokensValidAfterTime != null) {
        var issuer = await Issuer.discover(Issuer.firebase(projectId));
        var client = Client(issuer, projectId);

        var credential = client.createCredential(idToken: token);

        final authTimeUtc = credential.idToken.claims.authTime;
        final validSinceUtc = user.tokensValidAfterTime;
        if (authTimeUtc.isBefore(validSinceUtc)) {
          throw RevokedTokenException();
        }
      }
    }

    return verified;
  }
}

class _Header {
  final Map<String, dynamic> data;

  String get algorithm => data['alg'];

  String get certificateId => data['kid'];

  _Header(String tokenPart) : data = _parse(tokenPart);
}

class _Payload {
  final Map<String, dynamic> data;

  int get authenticationTime => data['auth_time'];

  int get issueTime => data['iat'];

  int get expirationTime => data['exp'];

  String get audience => data['aud'];

  String get issuer => data['iss'];

  String get subject => data['sub'];

  bool get isEmailVerified => data['email_verified'];

  _Payload(String tokenPart) : data = _parse(tokenPart);
}

class RevokedTokenException implements Exception {
  final message = 'The token has been revoked';
}

class EmailVerificationException implements Exception {
  final message = 'Email has not been verified';
}

Map<String, dynamic> _parse(String tokenPart) =>
    jsonDecode(utf8.decode(relaxedBase64Decode(tokenPart)));

Future<Map<String, String>> _getUserObject(
        String projectId, String uid) async =>
    (jsonDecode((await http.post(
                'https://identitytoolkit.googleapis.com/v1/projects/$projectId/accounts:lookup',
                body: {
          'localId': [uid]
        }))
            .body) as Map<String, dynamic>)
        .cast<String, String>();

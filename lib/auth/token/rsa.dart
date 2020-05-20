import 'dart:convert';
import 'dart:typed_data';

import 'package:asn1lib/asn1lib.dart';
import 'package:pointycastle/pointycastle.dart';

class Rsa {
  final RSAPublicKey _publicKey;
  Signer _signer;

  Rsa.fromCertificate(String certificate)
      : _publicKey = _parseCertificate(certificate) {
    _signer = Signer('SHA-256/RSA');
    AsymmetricKeyParameter<RSAPublicKey> publicKeyParams =
        PublicKeyParameter(_publicKey);
    _signer.init(false, publicKeyParams);
  }

  bool verify(String message, String encodedSignature) {
    // Load token signature
    var signature = RSASignature(relaxedBase64Decode(encodedSignature));

    // Verify signature
    return _signer.verifySignature(
        Uint8List.fromList(utf8.encode(message)), signature);
  }

  static RSAPublicKey _parseCertificate(String certificate) {
    // Decode certificate
    var certificateBytes = base64.decode(certificate
        .replaceAll(RegExp(r'--[^\r\n]*[\r\n]+'), '')
        .replaceAll(RegExp(r'\s'), ''));

    // Get public key sequence from certificate
    var asn1Parser = ASN1Parser(certificateBytes);
    var publicKeyBitString =
        (((asn1Parser.nextObject() as ASN1Sequence).elements[0] as ASN1Sequence)
                .elements[6] as ASN1Sequence)
            .elements[1];

    // Load public key from sequence
    var publicKeySeq = ASN1Parser(publicKeyBitString.contentBytes())
        .nextObject() as ASN1Sequence;
    var modulus = publicKeySeq.elements[0] as ASN1Integer;
    var exponent = publicKeySeq.elements[1] as ASN1Integer;
    return RSAPublicKey(modulus.valueAsBigInteger, exponent.valueAsBigInteger);
  }
}

/// Normalises Base64 strings with a length that isn't a multiple of 4 before decoding
Uint8List relaxedBase64Decode(String encoded) {
  var reminder = encoded.length % 4;
  var normalizedLength = encoded.length + (reminder == 0 ? 0 : 4 - reminder);
  var normalized = encoded.padRight(normalizedLength, '=');
  return base64Decode(normalized);
}

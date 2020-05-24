import 'dart:convert';

import 'package:meta/meta.dart';

/// 'REDACTED', encoded as a base64 string.
final _b64Redacted = base64.encode('REDACTED'.codeUnits);

/// User metadata class that provides metadata information like user account
/// creation and last sign in time.
class UserMetadata {
  final DateTime creationTime;
  final DateTime lastSignInTime;
  UserMetadata({this.creationTime, this.lastSignInTime});
  UserMetadata.fromJson(Map<String, dynamic> map)
      : this(
            creationTime: map['createdAt'] == null
                ? null
                : DateTime.fromMillisecondsSinceEpoch(
                    int.parse(map['createdAt'])),
            lastSignInTime: map['lastSignInTime'] == null
                ? null
                : DateTime.fromMillisecondsSinceEpoch(
                    int.parse(map['lastSignInTime'])));

  Map<String, dynamic> toJson() {
    return {
      'lastSignInTime': lastSignInTime?.toIso8601String(),
      'creationTime': creationTime?.toIso8601String(),
    };
  }
}

/// User info class that provides provider user information for different
/// Firebase providers like google.com, facebook.com, password, etc.
class UserInfo {
  final String uid;
  final String displayName;
  final String email;
  final String photoUrl;
  final String providerId;
  final String phoneNumber;

  UserInfo(
      {@required this.uid,
      this.displayName,
      this.email,
      this.photoUrl,
      @required this.providerId,
      this.phoneNumber}) {
    // Provider user id and provider id are required.
    if (uid == null || providerId == null) {
      throw ArgumentError('INTERNAL ASSERT FAILED: Invalid user info response');
    }
  }

  UserInfo.fromJson(Map<String, dynamic> map)
      : this(
          uid: map['rawId'],
          displayName: map['displayName'],
          email: map['email'],
          photoUrl: map['photoURL'],
          providerId: map['providerId'],
          phoneNumber: map['phoneNumber'],
        );

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'displayName': displayName,
        'email': email,
        'photoURL': photoUrl,
        'providerId': providerId,
        'phoneNumber': phoneNumber,
      };
}

class UserRecord {
  final String uid;
  final String email;
  final bool emailVerified;
  final String displayName;
  final String photoUrl;
  final String phoneNumber;
  final bool disabled;
  final UserMetadata metadata;
  final List<UserInfo> providerData;
  final String passwordHash;
  final String passwordSalt;
  final Map<String, dynamic> customClaims;
  final String tenantId;
  final DateTime tokensValidAfterTime;

  UserRecord.fromJson(Map<String, dynamic> map)
      : this(
            uid: map['localId'],
            email: map['email'],
            emailVerified: map['emailVerified'] ?? false,
            displayName: map['displayName'],
            photoUrl: map['photoUrl'],
            phoneNumber: map['phoneNumber'],
            // If disabled is not provided, the account is enabled by default.
            disabled: map['disabled'] ?? false,
            metadata: UserMetadata.fromJson(map),
            providerData: (map['providerUserInfo'] as List ?? [])
                .map((v) => UserInfo.fromJson(v))
                .toList(),
            // If the password hash is redacted (probably due to missing permissions)
            // then clear it out, similar to how the salt is returned. (Otherwise, it
            // *looks* like a b64-encoded hash is present, which is confusing.)
            passwordHash: map['passwordHash'] == _b64Redacted
                ? null
                : map['passwordHash'],
            passwordSalt: map['passwordSalt'],
            customClaims: (() {
              try {
                return json.decode(map['customAttributes']);
              } catch (e) {
                return null;
              }
            })(),
            tokensValidAfterTime: map['validSince'] == null
                ? null
                : DateTime.fromMillisecondsSinceEpoch(
                    int.parse(map['validSince']) * 1000),
            tenantId: map['tenantId']);

  UserRecord(
      {@required this.uid,
      this.email,
      this.emailVerified,
      this.displayName,
      this.photoUrl,
      this.phoneNumber,
      this.disabled,
      this.metadata,
      this.providerData,
      this.passwordHash,
      this.passwordSalt,
      this.customClaims,
      this.tokensValidAfterTime,
      this.tenantId}) {
    // The Firebase user id is required.
    if (uid == null) {
      throw ArgumentError('INTERNAL ASSERT FAILED: Invalid user response');
    }
  }

/*
  utils.addReadonlyGetter(this, 'tenantId', response.tenantId);
  }
  */

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'email': email,
        'emailVerified': emailVerified,
        'displayName': displayName,
        'photoUrl': photoUrl,
        'phoneNumber': phoneNumber,
        'disabled': disabled,
        'metadata': metadata.toJson(),
        'passwordHash': passwordHash,
        'passwordSalt': passwordSalt,
        'customClaims': customClaims, // TODO deep copy
        'tokensValidAfterTime': tokensValidAfterTime?.toIso8601String(),
        'tenantId': tenantId,
        'providerData': providerData.map((v) => v.toJson()).toList()
      };
}

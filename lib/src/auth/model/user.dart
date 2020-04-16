class User {
  final String id;
  final String displayName;
  final String photoUrl;
  final String email;
  final bool emailVerified;

  User.fromMap(Map<String, dynamic> map)
      : id = map['localId'] as String,
        displayName = map['displayName'] as String,
        photoUrl = map['photoUrl'] as String,
        email = map['email'] as String,
        emailVerified = map['emailVerified'] as bool;

  @override
  String toString() =>
      'id: $id, name: $displayName, photo: $photoUrl, email: $email, emailVerified: $emailVerified';
}

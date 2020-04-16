class Token {
  final String userId;
  final String idToken;
  final String refreshToken;
  final DateTime expiry;

  Token(this.userId, this.idToken, this.refreshToken, this.expiry);

  Token.fromMap(Map<String, dynamic> map)
      : this(
    map['userId'] as String,
    map['idToken'] as String,
    map['refreshToken'] as String,
    DateTime.parse(map['expiry'] as String),
  );

  Map<String, dynamic> toMap() => {
    'userId': userId,
    'idToken': idToken,
    'refreshToken': refreshToken,
    'expiry': expiry.toIso8601String(),
  };
}

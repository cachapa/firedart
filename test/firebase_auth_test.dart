import 'package:firedart/firedart.dart';
import "package:test/test.dart";

import 'test_config.dart';

Future main() async {
  TokenStore tokenStore;
  FirebaseAuth auth;

  setUp(() {
    tokenStore = VolatileStore();
    auth = FirebaseAuth(apiKey, tokenStore);
  });

  test("Sign In", () async {
    expect(auth.isSignedIn, false);
    await auth.signIn(email, password);
    expect(auth.isSignedIn, true);
    auth.signOut();
    expect(auth.isSignedIn, false);
  });

  test("Get user", () async {
    await auth.signIn(email, password);
    var user = await auth.getUser();
    expect(user.email, isNotEmpty);
  });

  test("Refresh token", () async {
    await auth.signIn(email, password);
    tokenStore.idToken = "invalid_token";
    var user = await auth.getUser();
    expect(user.email, isNotEmpty);
    expect(auth.isSignedIn, true);
  });

  test("Sign out on bad refresh token", () async {
    await auth.signIn(email, password);
    tokenStore.idToken = "invalid_token";
    tokenStore.refreshToken = "invalid_token";
    try {
      await auth.getUser();
    } catch (e) {}
    expect(auth.isSignedIn, false);
  });
}

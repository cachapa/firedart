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
    var user = await auth.user;
    expect(user.email, isNotEmpty);
  });

  test("Refresh token when expired", () async {
    await auth.signIn(email, password);
    tokenStore.expireToken();
    var user = await auth.user;
    expect(user.email, isNotEmpty);
    expect(auth.isSignedIn, true);
  });

  test("FileStore", () async {
    auth = FirebaseAuth(apiKey, FileStore());
    await auth.signIn(email, password);
    expect(auth.isSignedIn, true);

    // Reinstantiate auth
    auth = FirebaseAuth(apiKey, FileStore());
    var user = await auth.user;
    expect(user.email, isNotEmpty);
    expect(auth.isSignedIn, true);
  });

  test("Sign out on bad refresh token", () async {
    await auth.signIn(email, password);
    tokenStore.setToken("bad_token", "bad_token", 0);
    try {
      await auth.user;
    } catch (e) {}
    expect(auth.isSignedIn, false);
  });
}

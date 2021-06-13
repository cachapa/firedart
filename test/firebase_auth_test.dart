import 'package:firebase_auth_rest/firebase_auth_rest.dart';
import 'package:firedart/auth/exceptions.dart';
import 'package:firedart/firedart.dart';
import 'package:test/test.dart';

import 'test_config.dart';

Future main() async {
  late TokenStore tokenStore;
  late Firestore firestore;

  setUp(() {
    tokenStore = VolatileStore();
    firestore = Firestore.initialize(apiKey, projectId);
  });

  tearDown(() {
    firestore.signOut();
  });

  test('Sign In', () async {
    expect(await firestore.isSignedIn(), false);
    final account = await firestore.signInWithPassword(email, password);
    expect(await firestore.isSignedIn(), true);
    await firestore.signOut();
    expect(await firestore.isSignedIn(), false);
  });

  test('Sign In Anonymously', () async {
    expect(await firestore.isSignedIn(), false);
    final account = await firestore.signUpAnonymous();
    expect(await firestore.isSignedIn(), true);
    await firestore.delete();
    expect(await firestore.isSignedIn(), false);
  });

  test('Fail sign-in on invalid email', () async {
    await expectLater(firestore.signInWithPassword('bademail.com', 'bad_pass'),
        throwsA(isA<AuthException>()));
  });

  test('Fail sign-in on email not found', () async {
    await expectLater(firestore.signInWithPassword('bad@email.com', 'bad_pass'),
        throwsA(isA<AuthException>()));
  });

  test('Fail sign-in on bad password', () async {
    await expectLater(firestore.signInWithPassword(email, 'bad_pass'),
        throwsA(isA<AuthException>()));
  });

  test('Fail to get user while logged out', () async {
    await expectLater(firestore.getUser(), throwsA(isA<SignedOutException>()));
  });

  test('Get user on signin', () async {
    var user = await firestore.signInWithPassword(email, password);
    expect((await user.getDetails())?.email, email);
  });

  test('Get user id', () async {
    final user = await firestore.signInWithPassword(email, password);
    expect(user.idToken, isNotEmpty);
  });

  test('Get anonymous user id', () async {
    final user = await firestore.signUpAnonymous();
    expect(user.idToken, isNotEmpty);
    await user.delete();
  });

  test('Get user', () async {
    final user = await firestore.signInWithPassword(email, password);
    var userDetails = await firestore.getUser();
    expect(userDetails?.email, email);
  });

  test('Refresh token when expired', () async {
    final user = await firestore.signInWithPassword(email, password);
    tokenStore.expireToken();
    var userDetails = await firestore.getUser();
    expect(userDetails?.email, isNotEmpty);
    expect(await firestore.isSignedIn(), true);
  });

  test('Sign out on bad refresh token', () async {
    final user = await firestore.signInWithPassword(email, password);
    tokenStore.setToken('user_id', 'bad_token', 'bad_token', 0);
    await expectLater(firestore.getUser(), throwsA(isA<AuthException>()));
    expect(await firestore.isSignedIn(), false);
  });

  test('Emit signedIn events', () async {
    // var stream = firestore.signInState;
    // var expect = expectLater(
    //     stream,
    //     emitsInOrder([
    //       (isSignedIn) => isSignedIn() == true,
    //       (isSignedIn) => isSignedIn() == false,
    //     ]));
    // final user = await firestore.signInWithPassword(email, password);
    // await firestore.signOut();
    // await expect;
  });
}

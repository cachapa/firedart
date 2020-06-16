# firedart

[![pub package](https://img.shields.io/pub/v/firedart.svg)](https://pub.dartlang.org/packages/firedart)

A dart-native implementation of the Firebase Auth and Firestore SDKs.

This library attempts to minimize dependencies with the intention of making it able to run in any environment capable of executing dart code. Currently it has been successfully tested using the dart runtime (`x86-64` and `arm32`) as well as on Flutter Android, iOS and Desktop.

Firedart currently implements a subset of `Firebase Auth` and `Firestore`.

## Dependencies

Add firedart to your `pubspec.yaml` file:

``` yaml
dependencies:
  firedart: [latest version]
```

## Firebase Auth

The `FirebaseAuth` class implements the necessary functionality for managing accounts. It currently only supports `Email/Password` sign-in and `anonymous` sign-in, so make sure these are enabled under `Authentication` -> `Sign-in Method`.

You'll also need to go to your `Firebase Console`, open `Project Settings` and under the `General` tab copy the `Web API Key`.

> **Note: in order to reduce external dependencies this library doesn't include a mechanism for persisting tokens. Please look at the following examples based on [SharedPreferences](https://gist.github.com/cachapa/539dd1007fcf097179040f4056cdd4c7) and [Hive](https://gist.github.com/cachapa/33944987bd8fe6c6ba84021cecef8fb7).**

### Usage

``` dart
import 'package:firedart/firedart.dart';
```

`FirebaseAuth` has a singleton version which should be enough for most use cases. You'll need to initialise it with your API key and a token store (see note above):

``` dart
FirebaseAuth.initialize(apiKey, await HiveStore.create());
await FirebaseAuth.instance.signIn(email, password);
var user = await FirebaseAuth.instance.getUser();
```

Alternatively you can instantiate your own `FirebaseAuth` object:

``` dart
var firebaseAuth = FirebaseAuth.(apiKey, await PreferencesStore());
await firebaseAuth.signIn(email, password);
var user = await firebaseAuth.getUser();
```

Further usage examples can be found in the [integration tests](https://github.com/cachapa/firedart/blob/master/test/firebase_auth_test.dart).

### Limitations

* Currently the only supported authentication provider is `Email/Password`.

## Firestore

The `Firestore` class is a basic implementation of the service's RPC interface. The API is similar (but not identical) to that of the official SDK.

### Usage

``` dart
import 'package:firedart/firedart.dart';
```

As with `FirebaseAuth`, `Firestore` offers a singleton version that needs to be initialised with your `Project ID`, which you can find under `Project Settings` -> `General`:

``` dart
Firestore.initialize(projectId);
var map = await Firestore.instance.collection("users").get();
var users = UserCollection.fromMap(map);
```

You can also instantiate your own `Firestore` object. Please note that if your database requires authenticated access, you'll need to pass along an instance of `FirebaseAuth`.

``` dart
var firebaseAuth = FirebaseAuth.(apiKey, await HiveStore());
var firestore = Firestore(projectId, auth: firebaseAuth);

await firebaseAuth.signIn(email, password);
var map = await firestore.collection("users").get();
var users = UserCollection.fromMap(map);
```

Further usage examples can be found in the [integration tests](https://github.com/cachapa/firedart/blob/master/test/firestore_test.dart).

### Limitations

* Collection queries (limit, sort, etc.) are currently not supported.
* The data is not cached locally.
* Failed writes (e.g. due to network errors) are not retried.
* Closed streams are not automatically recovered.

### Regenerating the RPC stubs

The Firestore RPC stubs are based on Google's official protobuf definition files from [googleapis](https://github.com/googleapis/googleapis).

To regenerate them, you will need to check out both [googleapis](https://github.com/googleapis/googleapis) and [protobuf](https://github.com/google/protobuf).

Set the `PROTOBUF` and `GOOGLEAPIS` environment variables to point to your clones of the above repositories respectively, and then run:

```sh
$ tool/regenerate.sh
```

## Debugging

For debugging `Firebase Auth` you can use `VerboseClient`, an HTTP client that logs all communication to the console. The logs can expose sensitive data including passwords and keys, so it's recommended to only enable it for development builds. In Flutter this can be achieved using the `kReleaseMode` constant from the `foundation` package:

``` dart
var client = !kReleaseMode ? VerboseClient() : http.Client();
var firebaseAuth = FirebaseAuth(apiKey, await PreferencesStore(), httpClient: client);
```

## Securing Tokens

If you're running your code in an environment that requires securing access tokens, you can extend `TokenStore` to persist data in a secure maner, e.g. by encrypting the data or storing it in an external vault. Example implementations can be found in [token_store.dart](https://github.com/cachapa/firedart/blob/master/lib/auth/token_store.dart).

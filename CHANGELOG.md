## 0.9.8
- Add retry functionality to Firestore streams (fum36205)
- Regenerate RPC stubs (fum36205)

## 0.9.7

- Add ability to check if Firestore or FirebaseAuth are already initialized (eximius313)

## 0.9.6

- Make the GrpcError class visible to clients

## 0.9.5

- Fix closing connections properly (@nullbtb)
- Add optional HTTP client to FirebaseAuth (@nullbtb)
- Add example using Application Default Credentials (@nullbtb)

## 0.9.4

- Remove superfluous error log (@simonbengtsson)
- Update http dependency

## 0.9.3

- Add support for signInWithCustomToken authentication (@eximius313)

## 0.9.2+1

- Update documentation

## 0.9.2

- Add option to use application default auth (@Kirpal)

## 0.9.1+1

- Update license

## 0.9.1

- Add support for Firebase emulator (@willhlas)
- Add confirmation email locale parameter (@dev-tryit)
- Update dependencies

## 0.9.0+1

- Migrate code to NNBD
- Update dependencies and regenerate RPC stubs

## 0.8.3

- Update dependencies and regenerate RPC stubs

## 0.8.2

- Add anonymous sign-in (thanks @bierbaumtim)

## 0.8.1

- Add SignedOutException when calling protected methods while signed out
- Add AuthException with error details to all Auth calls

## 0.8.0+1

- Update documentation

## 0.8.0

- Implement collection queries (thanks @SwissCheese)
- Improve translation between Dart and Firebase data types

## 0.7.2

- Logout user on account deletion

## 0.7.1

- Fix requesting email confirmation
- Add User.toMap() method

## 0.7.0

- Implement paging
- Expose document creation and update times
- Fix collections only returning up to 20 documents

## 0.6.5

- Return user on signup and signin
- Expose Firebase user id
- Fix code warnings

## 0.6.4

- Update to latest Firebase auth endpoints
- Remove dart:io dependency
- Throw exception on auth errors

## 0.6.3

- Fix linter warnings

## 0.6.2

- Update Protobug and GRPC dependencies to latest versions

## 0.6.1

- Add generic Reference factory

## 0.6.0

- Implement collection streaming
- Deprecate some getter methods in favour of dart's getter syntax

## 0.5.1

- Improve token storage

## 0.5.0+1

- Cleanup to satisfy dart pub analysis

## 0.5.0

- Refactor the code to use RPC instead of REST for Firestore.
- Implement listening to document real-time updates.

## 0.1.0

- Fix issues identified in the dart pub analysis.

## 0.0.1

- Initial release.

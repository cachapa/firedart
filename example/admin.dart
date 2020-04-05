import 'package:firedart/firedart.dart';

/// Demonstrates the Firestore Admin API using a privileged service account.
/// Operations are made "server side" and bypass all Firestore database rules
/// that apply to regular users.
/// YOUR SERVER CODE IS RESPONSIBLE FOR AUTHENTICATING AND AUTHORIZING REQUESTS
///
/// This is a subset of the Admin SDK: https://firebase.google.com/docs/admin/setup
/// It is used for server side batch jobs, or for performing
/// complex updates that are difficult to implement on the client.
///
/// Usage:
/// Create a service account with permission to access Firestore.
/// See the console:
/// https://console.firebase.google.com/u/0/project/_/settings/serviceaccounts/adminsdk
/// Download and save the service account json file.
/// ****** DO NOT CHECK THIS FILE INTO git! *****
/// It is highly privileged and should be kept secret.
/// Set the environment variable GOOGLE_APPLICATION_CREDENTIALS to the
/// path to this file.  For example:
/// GOOGLE_APPLICATION_CREDENTIALS=./service-account.json
///

Future main() async {
  var projectId = 'fluttergolf'; // replace with your project id here

  var firestore = Firestore.usingServiceAccount(projectId);

  // Instantiate a reference to a document - this happens offline
  var ref = firestore.collection('test').document('doc');

  // Subscribe to changes to that document
  ref.stream.listen((document) => print('updated: $document'));

  // Update the document
  await ref.update({'value': 'test'});

  // Get a snapshot of the document
  var document = await ref.get();
  print('snapshot: ${document['value']}');

  print(
      'Sleeping for 30 seconds. You can make changes to test/doc in the UI console');
  await Future.delayed((const Duration(seconds: 30)));
  print('closing the connection');
  await firestore.close();
}

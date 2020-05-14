import 'package:firedart/firedart.dart';

/// Demonstrates the Firestore Admin API using a privileged service account.
/// Operations bypass all Firestore database rules that apply to regular users.
///
/// Usage:
/// Create a service account with permission to access Firestore.
/// See the console:
/// https://console.firebase.google.com/u/0/project/_/settings/serviceaccounts/adminsdk
/// Download and save the service account json file.
/// ****** DO NOT CHECK THIS FILE INTO git! *****
/// It is highly privileged and should be kept secret.
///
/// If you want to pass the file via environment variables:
///   Set the environment variable GOOGLE_APPLICATION_CREDENTIALS to the
///   path to this file.  For example:
///   GOOGLE_APPLICATION_CREDENTIALS=./service-account.json
///   Then you can use ServiceAccount.fromEnvironmentVariable();
///   You may specify your own environment variable key optionally if you'd like.
///
/// If you want to pass the file via direct json string:
///   Copy the service account json and use ServiceAccount.fromJson(String);
///   Again, DO NOT PUSH THE FILE HOLDING THIS DATA TO A PUBLIC REPOSITORY.

const apiKey = 'Project Settings -> General -> Web API Key';
const projectId = 'Project Settings -> General -> Project ID';

Future main() async {
  FirebaseAuth.initialize(apiKey, VolatileStore(),
      serviceAccount: ServiceAccount.fromJson(r'''
      <Project Settings -> Service Accounts -> generate new private key>
      Paste the json here
    '''));
  Firestore.initialize(projectId); // Firestore reuses the auth client

  // Instantiate a reference to a document - this happens offline
  var ref = Firestore.instance.collection('test').document('doc');

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
  await Firestore.instance.close();
}

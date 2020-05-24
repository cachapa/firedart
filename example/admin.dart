import 'package:firedart/firedart.dart';

const apiKey = 'Project Settings -> General -> Web API Key';
const projectId = 'Project Settings -> General -> Project ID';

/// Note: Beware of pushing your credentials to source control.
Future main() async {
  /// You can use environment variable look-up to find your service-account.json like so:
  /// (GOOGLE_APPLICATION_CREDENTIALS is the default environment variable we look for.)
  /// ServiceAccount.fromEnvironmentVariable();
  /// or from a file
  /// ServiceAccount.serviceAccountFromFile(filePath);

  /// Alternatively:
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

import 'package:firedart/firedart.dart';
import 'package:universal_io/io.dart';

const apiKey = 'Project Settings -> General -> Web API Key';
const projectId = 'Project Settings -> General -> Project ID';
const email = 'you@server.com';
const password = '1234';

Future main() async {
  Firestore? firestore;
  try {
    firestore = Firestore.initialize(
        apiKey, projectId); // Firestore reuses the auth client

    // // Monitor sign-in state
    // auth.signInState.listen((state) => print("Signed ${state ? "in" : "out"}"));

    // Sign in with user credentials
    await firestore.signInWithPassword(email, password);

    // Get user object
    var userDetails = await firestore.getUser();
    print('User Details ${userDetails?.email}');

    // Instantiate a reference to a document - this happens offline
    var ref = Firestore.instance.collection('test').document('doc');

    // Subscribe to changes to that document
    ref.stream.listen((document) => print('updated: $document'));

    // Update the document
    await ref.update({'value': 'test'});

    // Get a snapshot of the document
    var document = await ref.get();
    print('snapshot: ${document['value']}');

    // Allow some time to get the signed out event
    await Future.delayed(Duration(seconds: 1));
  } finally {
    await firestore?.signOut();
  }

  exit(0);
}

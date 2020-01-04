import 'dart:io';

import 'package:firedart/firedart.dart';

const apiKey = 'Project Settings -> General -> Web API Key';
const projectId = 'Project Settings -> General -> Project ID';
const email = 'you@server.com';
const password = '1234';

Future main() async {
  FirebaseAuth.initialize(apiKey, VolatileStore());
  Firestore.initialize(projectId); // Firestore reuses the auth client

  var auth = FirebaseAuth.instance;
  // Monitor sign-in state
  auth.signInState.listen((state) => print("Signed ${state ? "in" : "out"}"));

  // Sign in with user credentials
  await auth.signIn(email, password);

  // Get user object
  var user = await auth.getUser();
  print(user);

  // Instantiate a reference to a document - this happens offline
  var ref = Firestore.instance.collection('test').document('doc');

  // Subscribe to changes to that document
  ref.stream.listen((document) => print('updated: $document'));

  // Update the document
  await ref.update({'value': 'test'});

  // Get a snapshot of the document
  var document = await ref.get();
  print('snapshot: ${document['value']}');

  auth.signOut();

  // Allow some time to get the signed out event
  await Future.delayed(Duration(seconds: 1));

  exit(0);
}

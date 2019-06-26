import 'package:firedart/firedart.dart';

const apiKey = "Project Settings -> General -> Web API Key";
const projectId = "Project Settings -> General -> Project ID";
const email = "you@server.com";
const password = "1234";

Future main() async {
  var tokenStore = VolatileStore();
  var auth = FirebaseAuth(apiKey, VolatileStore(), httpClient: VerboseClient());
  var firestore =
      Firestore(projectId, auth: auth); // Firestore reuses the auth client

  // Monitor sign-in state
  auth.signInState.listen((state) => print("Signed ${state ? "in" : "out"}"));

  // Sign in with user credentials
  await auth.signIn(email, password);

  // Get user object
  var user = await auth.getUser();
  print(user);

  var ref = firestore.collection("test").document("doc");
  var document = await ref.get();
  print(document["value"]);

  auth.signOut();
}

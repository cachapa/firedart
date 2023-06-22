import 'dart:io';

import 'package:firedart/firedart.dart';

Future<void> main() async {
  final projectId = Platform.environment['GOOGLE_PROJECT_ID'];

  assert(
    projectId != null,
    'GOOGLE_PROJECT_ID environment variable must be set.',
  );
  assert(
    Platform.environment.containsKey('GOOGLE_APPLICATION_CREDENTIALS'),
    'GOOGLE_APPLICATION_CREDENTIALS environment variable must be set. ',
  );

  try {
    Firestore.initialize(projectId!, useApplicationDefaultAuth: true);

    final ref = Firestore.instance.collection('test');
    final documents = await ref.get();

    for (var document in documents) {
      print(document);
    }
  } on Exception catch (e) {
    print('Error: $e');
  } finally {
    Firestore.instance.close();
  }

  print('Done.');
}

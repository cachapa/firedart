import 'dart:io';

import 'package:firedart/firedart.dart';
import 'package:gcloud/storage.dart';
import 'package:test/test.dart';

import 'test_config.dart';

Future main() async {
  var bucket;
  FirebaseAuth auth;
  await setUp(() async {
    var tokenStore = VolatileStore();
    auth = FirebaseAuth(apiKey, tokenStore,
        serviceAccount: ServiceAccount.fromEnvironmentVariable());

    bucket = await FirebaseStorage.getBucket(projectId, storageUrl, auth);
  });

  await test('Storage download', () async {
    var file = File('localDirectory/localFile.jpg');
    if (!await file.exists()) {
      await file.create(recursive: true);
      await bucket.download(
          'remoteDirectory/remoteFile.jpg', file.absolute.path);
    }

    expect(await file.exists(), true);
  });

  await test('Storage upload', () async {
    var file = File('localDirectory/localFile.jpg');
    await bucket.upload('remoteDirectory/remoteFile.jpg', file.absolute.path,
        predefinedAcl: PredefinedAcl.publicRead);

    var info = await bucket.info('remoteDirectory/remoteFile.jpg');
    expect(info.downloadLink != null, true);

    print(info.downloadLink);
  });

  await test('Storage list', () async {
    var list = await (await bucket.list(prefix: 'remoteDirectory/')).toList();

    expect(list.isNotEmpty, true);

    print(list.map((e) => e.name).toList().join('\n'));
  });

  await test('Storage delete', () async {
    await bucket.delete('remoteDirectory/remoteFile.jpg');

    try {
      await bucket.info('remoteDirectory/remoteFile.jpg');
      fail('Object did not delete');
    } catch (e) {
      expect(e != null, true);
    }
  });
}

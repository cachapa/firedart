import 'dart:async';

import 'package:firedart/generated/google/firestore/v1/common.pb.dart';
import 'package:firedart/generated/google/firestore/v1/document.pb.dart' as FS;
import 'package:firedart/generated/google/firestore/v1/firestore.pbgrpc.dart';
import 'package:grpc/grpc.dart';

import '../firedart.dart';
import 'models.dart';
import 'token_authenticator.dart';

class FirestoreGateway {
  final FirebaseAuth auth;
  final String database;

  FirestoreClient _client;
  StreamController<ListenRequest> streamController;
  Stream<ListenResponse> stream;

  FirestoreGateway(String projectId, {String databaseId, this.auth})
      : database =
            "projects/$projectId/databases/${databaseId ?? "(default)"}/documents" {
    _setupClient();
  }

  Future<List<Document>> listDocuments(String path) async {
    var request = ListDocumentsRequest()
      ..parent = path.substring(0, path.lastIndexOf("/"))
      ..collectionId = path.substring(path.lastIndexOf("/") + 1);
    var response =
        await _client.listDocuments(request).catchError(_handleError);
    return response.documents
        .map((rawDocument) => Document(this, rawDocument))
        .toList(growable: false);
  }

  Future<Document> createDocument(
      String path, String documentId, FS.Document document) async {
    var split = path.split("/");
    var parent = split.sublist(0, split.length - 1).join("/");
    var collectionId = split.last;

    var request = CreateDocumentRequest()
      ..parent = parent
      ..collectionId = collectionId
      ..documentId = documentId ?? ""
      ..document = document;

    var response =
        await _client.createDocument(request).catchError(_handleError);
    return Document(this, response);
  }

  Future<Document> getDocument(path) async {
    var rawDocument = await _client
        .getDocument(GetDocumentRequest()..name = path)
        .catchError(_handleError);
    return Document(this, rawDocument);
  }

  Future updateDocument(String path, FS.Document document, bool update) async {
    document.name = path;

    var request = UpdateDocumentRequest()..document = document;

    if (update) {
      var mask = DocumentMask();
      document.fields.keys.forEach((key) => mask.fieldPaths.add(key));
      request.updateMask = mask;
    }

    await _client.updateDocument(request).catchError(_handleError);
  }

  Future deleteDocument(String path) => _client
      .deleteDocument(DeleteDocumentRequest()..name = path)
      .catchError(_handleError);

  listen(String path) {
    streamController ??= StreamController<ListenRequest>();
    stream ??= _client
        .listen(streamController.stream,
            options: CallOptions(
                metadata: {'google-cloud-resource-prefix': database}))
        .handleError(_handleError)
        .asBroadcastStream();

    final documentsTarget = Target_DocumentsTarget()..documents.add(path);
    final target = Target()..documents = documentsTarget;
    final request = ListenRequest()
      ..database = database
      ..addTarget = target;

    streamController.add(request);

    return stream
        .where((response) => (response.hasDocumentChange() &&
                response.documentChange.document.name == path ||
            (response.hasDocumentDelete() || response.hasDocumentRemove()) &&
                response.documentDelete.document == path))
        .map((response) => response.hasDocumentChange()
            ? Document(this, response.documentChange.document)
            : null);
  }

  void _setupClient() {
    _client = FirestoreClient(ClientChannel('firestore.googleapis.com'),
        options: TokenAuthenticator.from(auth)?.toCallOptions);
    streamController = null;
    stream = null;
  }

  _handleError(e) {
    if (e is GrpcError &&
        [
          StatusCode.unknown,
          StatusCode.unimplemented,
          StatusCode.internal,
          StatusCode.unavailable,
          StatusCode.dataLoss,
        ].contains(e.code)) {
      _setupClient();
    }
    throw e;
  }
}

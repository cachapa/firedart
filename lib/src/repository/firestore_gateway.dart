import 'dart:async';

import 'package:firedart/firedart.dart';
import 'package:firedart/src/generated/google/firestore/v1/common.pb.dart';
import 'package:firedart/src/generated/google/firestore/v1/document.pb.dart'
    as fs;
import 'package:firedart/src/generated/google/firestore/v1/firestore.pbgrpc.dart';
import 'package:firedart/src/generated/google/firestore/v1/query.pb.dart';
import 'package:grpc/grpc.dart';

import 'token_authenticator.dart';

class FirestoreGateway {
  final FirebaseAuth auth;
  final String database;

  FirestoreClient _client;
  StreamController<ListenRequest> streamController;
  Stream<ListenResponse> stream;

  FirestoreGateway(String projectId, {String databaseId, this.auth})
      : database =
            'projects/$projectId/databases/${databaseId ?? '(default)'}/documents' {
    _setupClient();
  }

  Future<List<Document>> getCollection(String path) async {
    var request = ListDocumentsRequest()
      ..parent = path.substring(0, path.lastIndexOf('/'))
      ..collectionId = path.substring(path.lastIndexOf('/') + 1);
    var response =
        await _client.listDocuments(request).catchError(_handleError);
    return response.documents
        .map((rawDocument) => Document(this, rawDocument))
        .toList(growable: false);
  }

  Stream<List<Document>> streamCollection(String path) {
    _initStream();

    var selector = StructuredQuery_CollectionSelector()
      ..collectionId = path.substring(path.lastIndexOf('/') + 1);
    var query = StructuredQuery()..from.add(selector);
    final queryTarget = Target_QueryTarget()
      ..parent = path.substring(0, path.lastIndexOf('/'))
      ..structuredQuery = query;
    final target = Target()..query = queryTarget;
    final request = ListenRequest()
      ..database = database
      ..addTarget = target;

    streamController.add(request);

    var map = <String, Document>{};
    return stream
        .where((response) =>
            response.hasDocumentChange() || response.hasDocumentDelete())
        .map((response) {
      if (response.hasDocumentChange()) {
        map[response.documentChange.document.name] =
            Document(this, response.documentChange.document);
      } else {
        map.remove(response.documentDelete.document);
      }
      return map.values.toList();
    });
  }

  Future<Document> createDocument(
      String path, String documentId, fs.Document document) async {
    var split = path.split('/');
    var parent = split.sublist(0, split.length - 1).join('/');
    var collectionId = split.last;

    var request = CreateDocumentRequest()
      ..parent = parent
      ..collectionId = collectionId
      ..documentId = documentId ?? ''
      ..document = document;

    var response =
        await _client.createDocument(request).catchError(_handleError);
    return Document(this, response);
  }

  Future<List<Document>> runQuery(
    StructuredQuery structuredQuery,
    String fullPath,
  ) {
    final runQuery = RunQueryRequest()
      ..structuredQuery = structuredQuery
      ..parent = fullPath.substring(0, fullPath.lastIndexOf('/'));
    final response = _client.runQuery(runQuery);
    return response
        .where((event) => event.hasDocument())
        .map((event) => Document(this, event.document))
        .toList();
  }

  Future<Document> getDocument(path) async {
    var rawDocument = await _client
        .getDocument(GetDocumentRequest()..name = path)
        .catchError((e) {
      if (e is GrpcError && e.code == StatusCode.notFound) {
        final emptyRawDocument = fs.Document();
        emptyRawDocument.name = path;
        return emptyRawDocument;
      }
      _handleError(e);
      return null;
    });
    return Document(this, rawDocument);
  }

  Future<void> updateDocument(
      String path, fs.Document document, bool update) async {
    document.name = path;

    var request = UpdateDocumentRequest()..document = document;

    if (update) {
      var mask = DocumentMask();
      document.fields.keys.forEach((key) => mask.fieldPaths.add(key));
      request.updateMask = mask;
    }

    await _client.updateDocument(request).catchError(_handleError);
  }

  Future<void> deleteDocument(String path) => _client
      .deleteDocument(DeleteDocumentRequest()..name = path)
      .catchError(_handleError);

  Stream<Document> streamDocument(String path) {
    _initStream();

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

  void _handleError(e) {
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

  void _initStream() {
    streamController ??= StreamController<ListenRequest>();
    stream ??= _client
        .listen(streamController.stream,
            options: CallOptions(
                metadata: {'google-cloud-resource-prefix': database}))
        .handleError(_handleError)
        .asBroadcastStream();
  }
}

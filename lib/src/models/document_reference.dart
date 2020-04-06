import 'package:firedart/src/repository/firestore_gateway.dart';
import 'package:grpc/grpc.dart';

import 'collection_reference.dart';
import 'document.dart';
import 'reference.dart';

/// A [DocumentReference] refers to a document location in a Firestore database
/// and can be used to write, read, or listen to the location.
///
/// The document at the referenced location may or may not exist.
/// A [DocumentReference] can also be used to create a [CollectionReference]
/// to a subcollection.
class DocumentReference extends Reference {
  /// Constructs a [DocumentReference] using [FirestoreGateway] and path.
  ///
  /// Throws [Exception] if path contains even amount of '/'.
  DocumentReference(FirestoreGateway gateway, String path)
      : super(gateway, path) {
    if (fullPath.split('/').length % 2 == 0) {
      throw Exception('Path is not a document: $path');
    }
  }

  /// Returns the reference of a collection contained inside of this
  /// document.
  CollectionReference collection(String id) {
    return CollectionReference(gateway, '$path/$id');
  }

  /// Reads the document referenced by this [DocumentReference].
  ///
  /// If no document exists, the read throws [GrpcError].
  Future<Document> get() => gateway.getDocument(fullPath);

  @Deprecated('Use the stream getter instead')
  Stream<Document> subscribe() => stream;

  /// Notifies of document by this reference.
  Stream<Document> get stream => gateway.streamDocument(fullPath);

  /// Checks if a document by this reference exists.
  Future<bool> get exists async {
    try {
      await get();
      return true;
    } on GrpcError catch (e) {
      if (e.code == StatusCode.notFound) {
        return false;
      } else {
        rethrow;
      }
    }
  }

  /// Creates a document by this reference if it doesn't exist,
  /// otherwise throw an exception.
  Future<Document> create(Map<String, dynamic> map) => gateway.createDocument(
      fullPath.substring(0, fullPath.lastIndexOf('/')), id, encodeMap(map));

  /// Creates or updates a document by this reference.
  /// In the case of an update, any fields not referenced in the payload will be deleted.
  Future<void> set(Map<String, dynamic> map) async =>
      gateway.updateDocument(fullPath, encodeMap(map), false);

  /// Creates or updates a document by this reference.
  /// In case of an update, fields not referenced in the payload will remain unchanged.
  Future<void> update(Map<String, dynamic> map) =>
      gateway.updateDocument(fullPath, encodeMap(map), true);

  /// Deletes a document by this reference.
  Future<void> delete() async => await gateway.deleteDocument(fullPath);
}

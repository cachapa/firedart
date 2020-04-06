import 'package:firedart/src/generated/google/firestore/v1/document.pb.dart'
    as fs;
import 'package:firedart/src/models/document_reference.dart';
import 'package:firedart/src/repository/firestore_gateway.dart';
import 'package:firedart/src/util/firestore_encoding.dart';

/// A [Document] contains [id], [path], field's data [map] read from a document
/// in the Firestore database.
class Document {
  final FirestoreGateway _gateway;
  final fs.Document _rawDocument;

  Document(this._gateway, this._rawDocument);

  /// Returns the ID of this document.
  String get id => path.split('/').last;

  /// Returns the path to this document.
  String get path =>
      _rawDocument.name.substring(_rawDocument.name.indexOf('/documents') + 10);

  /// Contains all the data of this document.
  Map<String, dynamic> get map =>
      _rawDocument.fields.map((key, _) => MapEntry(key, this[key]));

  /// The [DocumentReference] of this document.
  DocumentReference get reference => DocumentReference(_gateway, path);

  /// Reads individual values from this document.
  dynamic operator [](String key) {
    if (!_rawDocument.fields.containsKey(key)) return null;
    return FirestoreEncoding.decode(_rawDocument.fields[key], _gateway);
  }

  @override
  String toString() => '$path $map';
}

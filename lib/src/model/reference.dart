import 'package:equatable/equatable.dart';
import 'package:firedart/firedart.dart';
import 'package:firedart/src/generated/google/firestore/v1/document.pb.dart'
    as fs;
import 'package:firedart/src/repository/firestore_gateway.dart';
import 'package:firedart/src/util/firestore_encoding.dart';
import 'package:meta/meta.dart';

/// A base class for firestore references, that provides getters for path and id.
abstract class Reference extends Equatable {
  @protected
  final FirestoreGateway gateway;
  final String path;

  /// Returns the ID of this reference.
  String get id => path.substring(path.lastIndexOf('/') + 1);

  /// Returns the full path of this reference.
  String get fullPath => '${gateway.database}/$path';

  Reference(this.gateway, String path)
      : path = _trimSlashes(path.startsWith(gateway.database)
            ? path.substring(gateway.database.length + 1)
            : path);

  /// Creates a [DocumentReference] or [CollectionReference]
  /// depending on the provided [path].
  factory Reference.create(FirestoreGateway gateway, String path) {
    return _trimSlashes(path).split('/').length % 2 == 0
        ? DocumentReference(gateway, path)
        : CollectionReference(gateway, path);
  }

  @override
  List<Object> get props => [fullPath];

  @override
  String toString() {
    return '$runtimeType: $path';
  }

  /// Encodes the provided [map] data.
  @protected
  fs.Document encodeMap(Map<String, dynamic> map) {
    final document = fs.Document();
    map.forEach((key, value) {
      document.fields[key] = FirestoreEncoding.encode(value);
    });
    return document;
  }

  /// Trims slashes for the provided [path].
  static String _trimSlashes(String path) {
    final trimPath = path.startsWith('/') ? path.substring(1) : path;
    return trimPath.endsWith('/')
        ? trimPath.substring(0, trimPath.length - 2)
        : trimPath;
  }
}

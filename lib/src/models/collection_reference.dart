import 'package:firedart/src/generated/google/firestore/v1/query.pb.dart';
import 'package:firedart/src/generated/google/protobuf/wrappers.pb.dart';
import 'package:firedart/src/generated/google/firestore/v1/document.pb.dart'
    as fs;
import 'package:firedart/src/models/document.dart';
import 'package:firedart/src/models/document_reference.dart';
import 'package:firedart/src/models/reference.dart';
import 'package:firedart/src/repository/firestore_gateway.dart';
import 'package:firedart/src/util/firestore_encoding.dart';

/// A [CollectionReference] object can be used for adding documents, getting
/// document references, and querying for documents.
class CollectionReference extends Reference {
  StructuredQuery _structuredQuery;

  /// Constructs a [CollectionReference] using [FirestoreGateway] and path.
  ///
  /// Throws [Exception] if path contains odd amount of '/'.
  CollectionReference(FirestoreGateway gateway, String path)
      : super(gateway, path) {
    _structuredQuery = StructuredQuery();
    _structuredQuery.from
        .add(StructuredQuery_CollectionSelector()..collectionId = id);
    if (fullPath.split('/').length % 2 == 1) {
      throw Exception('Path is not a collection: $path');
    }
  }

  /// Returns a [DocumentReference] with the provided path.
  DocumentReference document(String id) {
    return DocumentReference(gateway, '$path/$id');
  }

  /// Returns [CollectionReference] with additional filter on specified
  /// [fieldPath]. [fieldPath] refers to a field in a document.
  ///
  /// The [fieldPath] is a [String] consisting of a single field name
  /// (referring to a top level field in the document),
  /// or a series of field names separated by dots '.'
  /// (referring to a nested field in the document).
  ///
  /// Only documents satisfying provided condition are included in the result
  /// set.
  CollectionReference where(
    String fieldPath, {
    dynamic isEqualTo,
    dynamic isLessThan,
    dynamic isLessThanOrEqualTo,
    dynamic isGreaterThan,
    dynamic isGreaterThanOrEqualTo,
    dynamic arrayContains,
    List<dynamic> arrayContainsAny,
    List<dynamic> whereIn,
    bool isNull,
  }) {
    StructuredQuery_CompositeFilter compositeFilter;
    if (_structuredQuery.hasWhere() &&
        _structuredQuery.where.hasCompositeFilter()) {
      compositeFilter = _structuredQuery.where.compositeFilter;
    } else {
      compositeFilter = StructuredQuery_CompositeFilter()
        ..op = StructuredQuery_CompositeFilter_Operator.AND;
    }
    final filter = StructuredQuery_Filter();
    if (isNull != null) {
      filter.unaryFilter = _createUnaryFilter(
        fieldPath,
        isNull,
      );
    } else {
      filter.fieldFilter = _createFieldFilter(
        fieldPath,
        isEqualTo,
        isLessThan,
        isLessThanOrEqualTo,
        isGreaterThan,
        isGreaterThanOrEqualTo,
        arrayContains,
        arrayContainsAny,
        whereIn,
      );
    }
    compositeFilter.filters.add(filter);
    _structuredQuery.where = StructuredQuery_Filter()
      ..compositeFilter = compositeFilter;
    return this;
  }

  /// Creates [StructuredQuery_UnaryFilter] by provided [fieldPath] and [isNull] condition.
  ///
  /// Throws [Exception] if the given [isNull] condition is false.
  StructuredQuery_UnaryFilter _createUnaryFilter(
    String fieldPath,
    bool isNull,
  ) {
    if (!isNull) {
      throw Exception(
        "'isNull': isNull can only be set to true. "
        'Use isEqualTo to filter on non-null values.',
      );
    }
    final unaryFilter = StructuredQuery_UnaryFilter();
    unaryFilter.op = StructuredQuery_UnaryFilter_Operator.IS_NULL;
    final fieldReference = StructuredQuery_FieldReference()
      ..fieldPath = fieldPath;
    unaryFilter.field_2 = fieldReference;
    return unaryFilter;
  }

  /// Creates [StructuredQuery_FieldFilter] by provided condition and [fieldPath].
  ///
  /// Throws [Exception] if no condition is provided.
  StructuredQuery_FieldFilter _createFieldFilter(
    String fieldPath,
    dynamic isEqualTo,
    dynamic isLessThan,
    dynamic isLessThanOrEqualTo,
    dynamic isGreaterThan,
    dynamic isGreaterThanOrEqualTo,
    dynamic arrayContains,
    List<dynamic> arrayContainsAny,
    List<dynamic> whereIn,
  ) {
    final fieldFilter = StructuredQuery_FieldFilter();
    if (isEqualTo != null) {
      fieldFilter.value = _encode(isEqualTo);
      fieldFilter.op = StructuredQuery_FieldFilter_Operator.EQUAL;
    } else if (isLessThan != null) {
      fieldFilter.value = _encode(isLessThan);
      fieldFilter.op = StructuredQuery_FieldFilter_Operator.LESS_THAN;
    } else if (isLessThanOrEqualTo != null) {
      fieldFilter.value = _encode(isLessThanOrEqualTo);
      fieldFilter.op = StructuredQuery_FieldFilter_Operator.LESS_THAN_OR_EQUAL;
    } else if (isGreaterThan != null) {
      fieldFilter.value = _encode(isGreaterThan);
      fieldFilter.op = StructuredQuery_FieldFilter_Operator.GREATER_THAN;
    } else if (isGreaterThanOrEqualTo != null) {
      fieldFilter.value = _encode(isGreaterThanOrEqualTo);
      fieldFilter.op =
          StructuredQuery_FieldFilter_Operator.GREATER_THAN_OR_EQUAL;
    } else if (arrayContains != null) {
      fieldFilter.value = _encode(arrayContains);
      fieldFilter.op = StructuredQuery_FieldFilter_Operator.ARRAY_CONTAINS;
    } else if (arrayContainsAny != null) {
      fieldFilter.value = _encode(arrayContainsAny);
      fieldFilter.op = StructuredQuery_FieldFilter_Operator.ARRAY_CONTAINS_ANY;
    } else if (whereIn != null) {
      fieldFilter.value = _encode(whereIn);
      fieldFilter.op = StructuredQuery_FieldFilter_Operator.IN;
    } else {
      throw Exception('Operator is not specified');
    }
    final fieldReference = StructuredQuery_FieldReference()
      ..fieldPath = fieldPath;
    fieldFilter.field_1 = fieldReference;
    return fieldFilter;
  }

  /// Returns [CollectionReference] that's additionally sorted by the specified
  /// [fieldPath].
  ///
  /// The field is a [String] representing a single field name.
  /// After a [CollectionReference] order by call, you cannot add any more [orderBy]
  /// calls.
  CollectionReference orderBy(
    String fieldPath, {
    bool descending = false,
  }) {
    final order = StructuredQuery_Order();
    order.field_1 = StructuredQuery_FieldReference()..fieldPath = fieldPath;
    order.direction = descending
        ? StructuredQuery_Direction.DESCENDING
        : StructuredQuery_Direction.ASCENDING;
    _structuredQuery.orderBy.add(order);
    return this;
  }

  /// Returns [CollectionReference] that's additionally limited to only return up
  /// to the specified number of documents.
  CollectionReference limit(int count) {
    _structuredQuery.limit = Int32Value()..value = count;
    return this;
  }

  /// Delegates encoding the given [value] to [FirebaseEncoding.encode].
  fs.Value _encode(dynamic value) {
    return FirestoreEncoding.encode(value);
  }

  /// Fetches the documents for this [StructuredQuery].
  Future<List<Document>> getDocuments() =>
      gateway.runQuery(_structuredQuery, fullPath);

  /// Notifies of documents by this reference.
  Stream<List<Document>> get stream => gateway.streamCollection(fullPath);

  /// Create a document with a random id.
  Future<Document> add(Map<String, dynamic> map) =>
      gateway.createDocument(fullPath, null, encodeMap(map));
}

//
//  Generated code. Do not modify.
//  source: google/firestore/v1/firestore.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../protobuf/empty.pb.dart' as $2;
import 'document.pb.dart' as $1;
import 'firestore.pb.dart' as $0;

export 'firestore.pb.dart';

@$pb.GrpcServiceName('google.firestore.v1.Firestore')
class FirestoreClient extends $grpc.Client {
  static final _$getDocument =
      $grpc.ClientMethod<$0.GetDocumentRequest, $1.Document>(
          '/google.firestore.v1.Firestore/GetDocument',
          ($0.GetDocumentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Document.fromBuffer(value));
  static final _$listDocuments =
      $grpc.ClientMethod<$0.ListDocumentsRequest, $0.ListDocumentsResponse>(
          '/google.firestore.v1.Firestore/ListDocuments',
          ($0.ListDocumentsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListDocumentsResponse.fromBuffer(value));
  static final _$updateDocument =
      $grpc.ClientMethod<$0.UpdateDocumentRequest, $1.Document>(
          '/google.firestore.v1.Firestore/UpdateDocument',
          ($0.UpdateDocumentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Document.fromBuffer(value));
  static final _$deleteDocument =
      $grpc.ClientMethod<$0.DeleteDocumentRequest, $2.Empty>(
          '/google.firestore.v1.Firestore/DeleteDocument',
          ($0.DeleteDocumentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$batchGetDocuments = $grpc.ClientMethod<
          $0.BatchGetDocumentsRequest, $0.BatchGetDocumentsResponse>(
      '/google.firestore.v1.Firestore/BatchGetDocuments',
      ($0.BatchGetDocumentsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.BatchGetDocumentsResponse.fromBuffer(value));
  static final _$beginTransaction = $grpc.ClientMethod<
          $0.BeginTransactionRequest, $0.BeginTransactionResponse>(
      '/google.firestore.v1.Firestore/BeginTransaction',
      ($0.BeginTransactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.BeginTransactionResponse.fromBuffer(value));
  static final _$commit =
      $grpc.ClientMethod<$0.CommitRequest, $0.CommitResponse>(
          '/google.firestore.v1.Firestore/Commit',
          ($0.CommitRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.CommitResponse.fromBuffer(value));
  static final _$rollback = $grpc.ClientMethod<$0.RollbackRequest, $2.Empty>(
      '/google.firestore.v1.Firestore/Rollback',
      ($0.RollbackRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$runQuery =
      $grpc.ClientMethod<$0.RunQueryRequest, $0.RunQueryResponse>(
          '/google.firestore.v1.Firestore/RunQuery',
          ($0.RunQueryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RunQueryResponse.fromBuffer(value));
  static final _$runAggregationQuery = $grpc.ClientMethod<
          $0.RunAggregationQueryRequest, $0.RunAggregationQueryResponse>(
      '/google.firestore.v1.Firestore/RunAggregationQuery',
      ($0.RunAggregationQueryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.RunAggregationQueryResponse.fromBuffer(value));
  static final _$partitionQuery =
      $grpc.ClientMethod<$0.PartitionQueryRequest, $0.PartitionQueryResponse>(
          '/google.firestore.v1.Firestore/PartitionQuery',
          ($0.PartitionQueryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PartitionQueryResponse.fromBuffer(value));
  static final _$write = $grpc.ClientMethod<$0.WriteRequest, $0.WriteResponse>(
      '/google.firestore.v1.Firestore/Write',
      ($0.WriteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.WriteResponse.fromBuffer(value));
  static final _$listen =
      $grpc.ClientMethod<$0.ListenRequest, $0.ListenResponse>(
          '/google.firestore.v1.Firestore/Listen',
          ($0.ListenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ListenResponse.fromBuffer(value));
  static final _$listCollectionIds = $grpc.ClientMethod<
          $0.ListCollectionIdsRequest, $0.ListCollectionIdsResponse>(
      '/google.firestore.v1.Firestore/ListCollectionIds',
      ($0.ListCollectionIdsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ListCollectionIdsResponse.fromBuffer(value));
  static final _$batchWrite =
      $grpc.ClientMethod<$0.BatchWriteRequest, $0.BatchWriteResponse>(
          '/google.firestore.v1.Firestore/BatchWrite',
          ($0.BatchWriteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.BatchWriteResponse.fromBuffer(value));
  static final _$createDocument =
      $grpc.ClientMethod<$0.CreateDocumentRequest, $1.Document>(
          '/google.firestore.v1.Firestore/CreateDocument',
          ($0.CreateDocumentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Document.fromBuffer(value));

  FirestoreClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.Document> getDocument($0.GetDocumentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDocument, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListDocumentsResponse> listDocuments(
      $0.ListDocumentsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listDocuments, request, options: options);
  }

  $grpc.ResponseFuture<$1.Document> updateDocument(
      $0.UpdateDocumentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateDocument, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> deleteDocument(
      $0.DeleteDocumentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteDocument, request, options: options);
  }

  $grpc.ResponseStream<$0.BatchGetDocumentsResponse> batchGetDocuments(
      $0.BatchGetDocumentsRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$batchGetDocuments, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.BeginTransactionResponse> beginTransaction(
      $0.BeginTransactionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$beginTransaction, request, options: options);
  }

  $grpc.ResponseFuture<$0.CommitResponse> commit($0.CommitRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$commit, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> rollback($0.RollbackRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$rollback, request, options: options);
  }

  $grpc.ResponseStream<$0.RunQueryResponse> runQuery($0.RunQueryRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$runQuery, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.RunAggregationQueryResponse> runAggregationQuery(
      $0.RunAggregationQueryRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$runAggregationQuery, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.PartitionQueryResponse> partitionQuery(
      $0.PartitionQueryRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$partitionQuery, request, options: options);
  }

  $grpc.ResponseStream<$0.WriteResponse> write(
      $async.Stream<$0.WriteRequest> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$write, request, options: options);
  }

  $grpc.ResponseStream<$0.ListenResponse> listen(
      $async.Stream<$0.ListenRequest> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$listen, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListCollectionIdsResponse> listCollectionIds(
      $0.ListCollectionIdsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listCollectionIds, request, options: options);
  }

  $grpc.ResponseFuture<$0.BatchWriteResponse> batchWrite(
      $0.BatchWriteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$batchWrite, request, options: options);
  }

  $grpc.ResponseFuture<$1.Document> createDocument(
      $0.CreateDocumentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createDocument, request, options: options);
  }
}

@$pb.GrpcServiceName('google.firestore.v1.Firestore')
abstract class FirestoreServiceBase extends $grpc.Service {
  $core.String get $name => 'google.firestore.v1.Firestore';

  FirestoreServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetDocumentRequest, $1.Document>(
        'GetDocument',
        getDocument_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetDocumentRequest.fromBuffer(value),
        ($1.Document value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ListDocumentsRequest, $0.ListDocumentsResponse>(
            'ListDocuments',
            listDocuments_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ListDocumentsRequest.fromBuffer(value),
            ($0.ListDocumentsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateDocumentRequest, $1.Document>(
        'UpdateDocument',
        updateDocument_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateDocumentRequest.fromBuffer(value),
        ($1.Document value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteDocumentRequest, $2.Empty>(
        'DeleteDocument',
        deleteDocument_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteDocumentRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BatchGetDocumentsRequest,
            $0.BatchGetDocumentsResponse>(
        'BatchGetDocuments',
        batchGetDocuments_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.BatchGetDocumentsRequest.fromBuffer(value),
        ($0.BatchGetDocumentsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BeginTransactionRequest,
            $0.BeginTransactionResponse>(
        'BeginTransaction',
        beginTransaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.BeginTransactionRequest.fromBuffer(value),
        ($0.BeginTransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CommitRequest, $0.CommitResponse>(
        'Commit',
        commit_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CommitRequest.fromBuffer(value),
        ($0.CommitResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RollbackRequest, $2.Empty>(
        'Rollback',
        rollback_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RollbackRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RunQueryRequest, $0.RunQueryResponse>(
        'RunQuery',
        runQuery_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.RunQueryRequest.fromBuffer(value),
        ($0.RunQueryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RunAggregationQueryRequest,
            $0.RunAggregationQueryResponse>(
        'RunAggregationQuery',
        runAggregationQuery_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.RunAggregationQueryRequest.fromBuffer(value),
        ($0.RunAggregationQueryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PartitionQueryRequest,
            $0.PartitionQueryResponse>(
        'PartitionQuery',
        partitionQuery_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.PartitionQueryRequest.fromBuffer(value),
        ($0.PartitionQueryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.WriteRequest, $0.WriteResponse>(
        'Write',
        write,
        true,
        true,
        ($core.List<$core.int> value) => $0.WriteRequest.fromBuffer(value),
        ($0.WriteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListenRequest, $0.ListenResponse>(
        'Listen',
        listen,
        true,
        true,
        ($core.List<$core.int> value) => $0.ListenRequest.fromBuffer(value),
        ($0.ListenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListCollectionIdsRequest,
            $0.ListCollectionIdsResponse>(
        'ListCollectionIds',
        listCollectionIds_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ListCollectionIdsRequest.fromBuffer(value),
        ($0.ListCollectionIdsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BatchWriteRequest, $0.BatchWriteResponse>(
        'BatchWrite',
        batchWrite_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BatchWriteRequest.fromBuffer(value),
        ($0.BatchWriteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateDocumentRequest, $1.Document>(
        'CreateDocument',
        createDocument_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateDocumentRequest.fromBuffer(value),
        ($1.Document value) => value.writeToBuffer()));
  }

  $async.Future<$1.Document> getDocument_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetDocumentRequest> request) async {
    return getDocument(call, await request);
  }

  $async.Future<$0.ListDocumentsResponse> listDocuments_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListDocumentsRequest> request) async {
    return listDocuments(call, await request);
  }

  $async.Future<$1.Document> updateDocument_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateDocumentRequest> request) async {
    return updateDocument(call, await request);
  }

  $async.Future<$2.Empty> deleteDocument_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteDocumentRequest> request) async {
    return deleteDocument(call, await request);
  }

  $async.Stream<$0.BatchGetDocumentsResponse> batchGetDocuments_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.BatchGetDocumentsRequest> request) async* {
    yield* batchGetDocuments(call, await request);
  }

  $async.Future<$0.BeginTransactionResponse> beginTransaction_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.BeginTransactionRequest> request) async {
    return beginTransaction(call, await request);
  }

  $async.Future<$0.CommitResponse> commit_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CommitRequest> request) async {
    return commit(call, await request);
  }

  $async.Future<$2.Empty> rollback_Pre(
      $grpc.ServiceCall call, $async.Future<$0.RollbackRequest> request) async {
    return rollback(call, await request);
  }

  $async.Stream<$0.RunQueryResponse> runQuery_Pre($grpc.ServiceCall call,
      $async.Future<$0.RunQueryRequest> request) async* {
    yield* runQuery(call, await request);
  }

  $async.Stream<$0.RunAggregationQueryResponse> runAggregationQuery_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.RunAggregationQueryRequest> request) async* {
    yield* runAggregationQuery(call, await request);
  }

  $async.Future<$0.PartitionQueryResponse> partitionQuery_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.PartitionQueryRequest> request) async {
    return partitionQuery(call, await request);
  }

  $async.Future<$0.ListCollectionIdsResponse> listCollectionIds_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListCollectionIdsRequest> request) async {
    return listCollectionIds(call, await request);
  }

  $async.Future<$0.BatchWriteResponse> batchWrite_Pre($grpc.ServiceCall call,
      $async.Future<$0.BatchWriteRequest> request) async {
    return batchWrite(call, await request);
  }

  $async.Future<$1.Document> createDocument_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateDocumentRequest> request) async {
    return createDocument(call, await request);
  }

  $async.Future<$1.Document> getDocument(
      $grpc.ServiceCall call, $0.GetDocumentRequest request);
  $async.Future<$0.ListDocumentsResponse> listDocuments(
      $grpc.ServiceCall call, $0.ListDocumentsRequest request);
  $async.Future<$1.Document> updateDocument(
      $grpc.ServiceCall call, $0.UpdateDocumentRequest request);
  $async.Future<$2.Empty> deleteDocument(
      $grpc.ServiceCall call, $0.DeleteDocumentRequest request);
  $async.Stream<$0.BatchGetDocumentsResponse> batchGetDocuments(
      $grpc.ServiceCall call, $0.BatchGetDocumentsRequest request);
  $async.Future<$0.BeginTransactionResponse> beginTransaction(
      $grpc.ServiceCall call, $0.BeginTransactionRequest request);
  $async.Future<$0.CommitResponse> commit(
      $grpc.ServiceCall call, $0.CommitRequest request);
  $async.Future<$2.Empty> rollback(
      $grpc.ServiceCall call, $0.RollbackRequest request);
  $async.Stream<$0.RunQueryResponse> runQuery(
      $grpc.ServiceCall call, $0.RunQueryRequest request);
  $async.Stream<$0.RunAggregationQueryResponse> runAggregationQuery(
      $grpc.ServiceCall call, $0.RunAggregationQueryRequest request);
  $async.Future<$0.PartitionQueryResponse> partitionQuery(
      $grpc.ServiceCall call, $0.PartitionQueryRequest request);
  $async.Stream<$0.WriteResponse> write(
      $grpc.ServiceCall call, $async.Stream<$0.WriteRequest> request);
  $async.Stream<$0.ListenResponse> listen(
      $grpc.ServiceCall call, $async.Stream<$0.ListenRequest> request);
  $async.Future<$0.ListCollectionIdsResponse> listCollectionIds(
      $grpc.ServiceCall call, $0.ListCollectionIdsRequest request);
  $async.Future<$0.BatchWriteResponse> batchWrite(
      $grpc.ServiceCall call, $0.BatchWriteRequest request);
  $async.Future<$1.Document> createDocument(
      $grpc.ServiceCall call, $0.CreateDocumentRequest request);
}

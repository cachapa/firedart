#!/usr/bin/env bash

if [ ! -d "$PROTOBUF" ]; then
  echo "Please set the PROTOBUF environment variable to your clone of google/protobuf."
  exit -1
fi

if [ ! -d "$GOOGLEAPIS" ]; then
  echo "Please set the GOOGLEAPIS environment variable to your clone of googleapis/googleapis."
  exit -1
fi

PROTOC="protoc --dart_out=grpc:lib/generated -I$PROTOBUF/src -I$GOOGLEAPIS"

$PROTOC $GOOGLEAPIS/google/rpc/status.proto

$PROTOC $PROTOBUF/src/google/protobuf/any.proto
$PROTOC $PROTOBUF/src/google/protobuf/empty.proto
$PROTOC $PROTOBUF/src/google/protobuf/struct.proto
$PROTOC $PROTOBUF/src/google/protobuf/timestamp.proto

$PROTOC $PROTOBUF/src/google/protobuf/wrappers.proto

$PROTOC $GOOGLEAPIS/google/firestore/v1/common.proto
$PROTOC $GOOGLEAPIS/google/firestore/v1/write.proto
$PROTOC $GOOGLEAPIS/google/firestore/v1/query.proto
$PROTOC $GOOGLEAPIS/google/firestore/v1/firestore.proto
$PROTOC $GOOGLEAPIS/google/firestore/v1/document.proto

$PROTOC $GOOGLEAPIS/google/type/latlng.proto

dartfmt -w lib/generated

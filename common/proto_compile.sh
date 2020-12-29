#!/bin/bash

protoc -I=protos protos/*.proto --dart_out=grpc:lib/generated
protoc -I=protos protos/google/protobuf/*.proto --dart_out=lib/generated

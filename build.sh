#!/bin/bash

echo "GOPATH is $GOPATH"
echo "BUILDPATH is $GOPATH/$BUILDPATH"
cd $GOPATH
cd $BUILDPATH

echo "GET DEPENDENCIES"
go get

echo "BUILD GO PROJECT"
CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo .

ls -R
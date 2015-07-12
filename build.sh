#!/bin/bash

echo "GOPATH is $GOPATH"
echo "BUILDPATH is $GOPATH/$BUILDPATH"
cd $GOPATH
cd $BUILDPATH

echo "GET DEPENDENCIES"
go get

echo "BUILD GO PROJECT"
echo "GOOS is $GOOS"
echo "GOARCH is $GOARCH"
CGO_ENABLED=0 go build -a -installsuffix cgo .

ls -R
#!/bin/bash

echo "GOPATH is $GOPATH"
echo "BUILDPATH is $GOPATH/$BUILDPATH"
cd $GOPATH
cd $BUILDPATH

echo "GET DEPENDENCIES"
go get

echo "GO TEST"
go test -v | go-junit-report > report.xml

echo "BUILD GO PROJECT"
echo "GOOS is $GOOS"
echo "GOARCH is $GOARCH"
CGO_ENABLED=0 go build -a -installsuffix cgo .

ls -R
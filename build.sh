#!/bin/bash

echo "GOPATH is $GOPATH"
echo "BUILDPATH is $GOPATH/$BUILDPATH"
cd $GOPATH
cd $BUILDPATH

echo "GET DEPENDENCIES"
go get

echo "GO TEST"
go get -u github.com/jstemmer/go-junit-report
go test -v | go-junit-report > report.xml

echo "BUILD GO PROJECT"
echo "GOOS is $GOOS"
echo "GOARCH is $GOARCH"
echo "GOARM is $GOARM"
CGO_ENABLED=0 go build -a -installsuffix cgo .

ls -R
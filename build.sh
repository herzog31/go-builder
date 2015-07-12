#!/bin/bash

echo "GOPATH is $GOPATH"
echo "BUILDPATH is $GOPATH/$BUILDPATH"
cd $GOPATH
cd $BUILDPATH

ls -R
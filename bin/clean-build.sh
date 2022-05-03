#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo <&2 "useage: $(basename $0) typescript-file"
    exit
fi

readonly BUILD_DIR=../../build

echo cleaning up..
rm -R ../build
cd ../src/typescript
echo compiling..
tsc $1 --outDir $BUILD_DIR
echo done!
#!/bin/bash

if [[ -d ./build ]] ; then
    rm -rf ./build
fi

mkdir build

lilac coreutils/cat.ls -o build/cat2
lilac coreutils/echo.ls -o build/echo2
lilac coreutils/pwd.ls -o build/pwd2

lilac examples/cd.ls -o build/cd2
lilac examples/fork1.ls -o build/fork1

echo "Done"


#!/bin/sh

if [ -z "$1" ]; then
    echo "Usage: $0 <version> ..."
    exit 1
fi

if [ -d ./kernels/$1 ]; then
    echo "Building kernel $1"
    version=$1
    shift
    make -C ./kernels/$version O=out LLVM=1 $@
else
    echo "Kernel $1 not found"
fi

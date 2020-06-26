#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

mkdir -p ${DIR}/../build >/dev/null 2>&1
cd ${DIR}/../build
cmake -DLLVM_ENABLE_PROJECTS=clang -G "Unix Makefiles" $@ ../llvm
make -j4

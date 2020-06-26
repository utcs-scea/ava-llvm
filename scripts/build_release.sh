#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

mkdir -p ${DIR}/../build >/dev/null 2>&1
docker build -t ava/build_llvm:v7.1 -o out --build-arg BUILDKIT_INLINE_CACHE=1 ${DIR}
# docker push ava/build_llvm:v7.1
# docker build --cache-from ava/build_llvm:v7.1 ${DIR}

if [[ ! -d ${PWD}/artifacts ]]; then
  mkdir ${PWD}/artifacts
fi
docker run --rm -v ${PWD}/artifacts:/artifacts ava/build_llvm:v7.1 cp /llvm/ava-llvm-release-7.1.tar.gz /artifacts
echo "Tarball copied to ${PWD}/artifacts"

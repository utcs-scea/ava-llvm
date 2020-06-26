FROM ubuntu:18.04 AS build-stage
WORKDIR /

# Install dependencies
RUN apt-get update && \
 apt-get -yq install build-essential git gcc-7 cmake python3

# Clone repository
RUN git clone https://github.com/utcs-scea/ava-llvm.git llvm

# Build LLVM
RUN cd llvm && ./scripts/build.sh

# Archive binaries
RUN cd llvm && \
    strip build/lib/libclang.so.7 && \
    tar -czvf ava-llvm-release-7.1.tar.gz build/lib/clang build/lib/libclang.so.7

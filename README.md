# How to build

The repository should be cloned to the AvA root directory.
In this directory:

```
mkdir build
cd build
cmake -DLLVM_ENABLE_PROJECTS=clang -G "Unix Makefiles" ../llvm
make
```

or simply execute:

```
./scripts/build.sh
```

This will place the build artifacts in `llvm/build`. You do not need to install them.
`nwcc` (CAvA) will find them in their build locations.

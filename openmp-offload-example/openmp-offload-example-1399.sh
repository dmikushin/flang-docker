#!/bin/bash

# https://github.com/flang-compiler/flang/issues/1399

export PATH=$PATH:/opt/llvm/bin

# How OpenMP 4 offloading works in LLVM: https://openmp.llvm.org/SupportAndFAQ.html
# TODO fix: -fopenmp-targets=x86_64,amdgcn-amd-amdhsa,nvptx64-nvidia-cuda
flang -O2 -fopenmp -fopenmp-targets=nvptx64-nvidia-cuda \
    /openmp-offload-example/src/example.f90 \
    -o /openmp-offload-example/build/example

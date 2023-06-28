FROM classic-flang-llvm-project

LABEL maintainer "Dmitry Mikushin <dmitry@kernelgen.org>"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        vim \
        gdb && \
    rm -rf /var/lib/apt/lists/*

COPY ./openmp-offload-example.sh /


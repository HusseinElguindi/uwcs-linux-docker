# Match student CS server Ubuntu version
FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive

RUN \
    apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y build-essential && \
    apt-get install -y software-properties-common && \
    apt-get install -y curl wget git unzip diffutils dos2unix && \
    apt-get install -y gcc g++ libc-dev valgrind gdb cmake python3.8 && \
    apt-get install -y libgtest-dev # Google Test Suite source

# Build and link Google Test Suite
RUN \
    cd /usr/src/gtest && \
    cmake CMakeLists.txt && \
    make && \
    cp ./lib/*.a /usr/lib

WORKDIR /root

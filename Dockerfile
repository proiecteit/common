FROM ubuntu:16.04

RUN add-apt-repository ppa:ubuntu-toolchain-r/test
RUN apt-get update && apt-get install -y \
    build-essential \
    autotools-dev \
    autoconf \
    libcurl3 \
    automake \
    libcurl4-openssl-dev \
    curl \
    git \
    cmake \
    libmicrohttpd-dev \
    libssl-dev \
    libhwloc-dev
RUN apt-get install -y g++-7
RUN update-alternatives \
    --install /usr/bin/gcc gcc /usr/bin/gcc-7 60 \
    --slave /usr/bin/gcc-ar gcc-ar /usr/bin/gcc-ar-7 \
    --slave /usr/bin/gcc-nm gcc-nm /usr/bin/gcc-nm-7 \
    --slave /usr/bin/gcc-ranlib gcc-ranlib /usr/bin/gcc-ranlib-7

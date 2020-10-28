FROM ubuntu:18.04
RUN apt-get update && apt-get install -y \
    git \
    libtool  \
    autoconf \
    automake \
    pkg-config \
    libunwind-dev

RUN git clone https://github.com/zeromq/libzmq.git --branch v4.2.5 && \
    cd libzmq && \
    ./autogen.sh && \
    ./configure && \
    make -j3 &&  make install && \
    cd .. && rm -rf libzmq 

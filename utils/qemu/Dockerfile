FROM ubuntu:16.04

RUN apt update 
RUN apt install build-essential libpython3-dev python3 pkg-config libglib2.0-dev libpixman-1-dev -y
COPY qemu /workspace/qemu
WORKDIR /workspace/qemu
RUN ./configure --prefix=/workspace/qemu-static --static --disable-system --enable-linux-user
RUN make -j24
RUN make install
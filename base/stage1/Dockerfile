ARG stage0=jetson/tk1/base0
FROM ${stage0} as deps

FROM scratch

WORKDIR /

COPY --from=deps /jetpack/Linux_for_Tegra/rootfs/ /


COPY cuda* .
RUN dpkg -i cuda-repo*
RUN apt update
RUN apt-get install cuda-toolkit-6-5 -y
SHELL ["/bin/bash", "-c"]]
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install build-essential wget -y
RUN wget https://github.com/Kitware/CMake/archive/v3.14.7.tar.gz && tar xvf v3.14.7.tar.gz

RUN cd CMake* && ./bootstrap --prefix=/usr/local && make -j24&& make install

COPY sources.list /etc/apt/sources.list

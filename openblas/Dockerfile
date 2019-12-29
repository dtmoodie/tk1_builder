from jetsontk1:base

WORKDIR /workspace
RUN apt-get install -y gfortran-4.8
COPY openblas openblas
WORKDIR /workspace/openblas
RUN make TARGET=CORTEXA15 HOSTCC=gcc
RUN make prefix=/usr/local install

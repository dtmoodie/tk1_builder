from jetson/tk1/base

WORKDIR /workspace
RUN apt-get install -y gfortran-4.8
COPY openblas openblas
WORKDIR /workspace/openblas
RUN make TARGET=CORTEXA15 HOSTCC=gcc prefix=/usr/local
RUN make TARGET=CORTEXA15 HOSTCC=gcc prefix=/usr/local install
RUN cp ./libopenblas* /usr/local/lib/
ARG from=jetson/tk1/openblas
FROM ${from}

WORKDIR /workspace
COPY cudnn* .
RUN tar xvf cudnn* && cp cudnn*/*.h /usr/local/include && cp cudnn*/lib* /usr/local/lib
COPY darknet darknet
WORKDIR /workspace/darknet
RUN make -j24 && cp libdark* /usr/local/lib && cp include/* /usr/local/include

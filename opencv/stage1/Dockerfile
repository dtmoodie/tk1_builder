from jetson/tk1/base

ARG ARCH='3.2'

WORKDIR /workspace

COPY opencv opencv
COPY opencv_contrib opencv_contrib

RUN apt-get install -y libpython-dev libpython3-dev
WORKDIR /workspace/opencv/build
RUN cmake .. \
    -DBUILD_opencv_cudacodec=ON \
    -DWITH_CUDA=ON \
    -DWITH_CUBLAS=ON \
    -DWITH_CUFFT=ON \
    -DWITH_OPENGL=OFF \
    -DWITH_QT=OFF \
    -DBUILD_TESTS=OFF \
    -DCUDA_ARCH_BIN=${ARCH} \
    -DCUDA_ARCH_PTX="" \
    -DBUILD_opencv_stitching=OFF

RUN make -j24
RUN make install 

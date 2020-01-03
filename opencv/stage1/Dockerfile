ARG version=4.1.1
from jetson/tk1/gstreamer

ARG version=4.1.1
ARG ARCH='3.2'

RUN apt-get install -y \
    libpython3-dev \
    libpython2.7-dev \
    curl git

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python2 get-pip.py
RUN python3 get-pip.py
RUN python3 -m pip install numpy 
RUN python2 -m pip install numpy==1.15

WORKDIR /workspace

COPY opencv opencv
COPY opencv_contrib opencv_contrib

WORKDIR /workspace/opencv
RUN mkdir build
WORKDIR /workspace/opencv/build
RUN cmake .. \
    -DBUILD_opencv_cudacodec=OFF \
    -DOPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules \
    -DWITH_CUDA=ON \
    -DWITH_CUBLAS=ON \
    -DWITH_CUFFT=ON \
    -DWITH_OPENGL=OFF \
    -DWITH_QT=OFF \
    -DBUILD_TESTS=OFF \
    -DCUDA_ARCH_BIN=${ARCH} \
    -DCUDA_ARCH_PTX=""

#RUN make -j24
#RUN make install 

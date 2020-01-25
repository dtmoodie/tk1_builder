ARG build_from=jetson/tk1/base
from ${build_from}
WORKDIR /workspace

COPY src src

RUN wget https://developer.nvidia.com/embedded/dlc/l4t-Jetson-TK1-Gstjpeg-Sources-R21-5
RUN wget https://developer.nvidia.com/embedded/dlc/l4t-Jetson-TK1-GstEGL-Sources-R21-5
RUN tar xvf l4t-Jetson-TK1-Gstjpeg-Sources-R21-5
RUN tar xvf l4t-Jetson-TK1-GstEGL-Sources-R21-5

RUN apt-get install -y build-essential dpkg-dev \
  autoconf \
  git \
  flex bison autotools-dev automake \
  liborc-dev autopoint libtool gtk-doc-tools \
  libxv-dev libasound2-dev libtheora-dev libogg-dev \
  libvorbis-dev libbz2-dev libv4l-dev libvpx-dev libjack-dev \
  libpulse-dev \
  libspeex-dev \
  libwmf-bin \
  texlive-base-bin 

# this is for WebRTC
RUN apt-get install -y \
  libnice-dev libneon27-gnutls-dev

# this is for hls plugin
RUN apt-get install -y \
  nettle-dev libgcrypt11-dev openssl

RUN apt-get install -y \
  libegl1-mesa-dev \
  libgles2-mesa-dev

# for uvch264src
RUN apt-get install -y libusb-dev libusb-1.0-0-dev libgudev-1.0-dev

WORKDIR /workspace/src/gstreamer

RUN ./autogen.sh && \
  ./configure --prefix=/usr/local && \
  make -j24 && \
  make install

WORKDIR /workspace/src/gst-plugins-base
RUN ./autogen.sh
RUN ./configure --prefix=/usr/local

# http://gstreamer-devel.966125.n4.nabble.com/I-can-t-compile-gst-plugins-base-td4686604.html
RUN sed -i 's/GST_LIBS = -L\/usr\/local\/lib -lgstreamer-1.0 -lgobject-2.0 -lglib-2.0   $(GCOV_LIBS)/GST_LIBS = -L\/usr\/local\/lib -lgstreamer-1.0 -lgobject-2.0 -lglib-2.0 -lgstbase-1.0 $(GCOV_LIBS)/g' tests/icles/Makefile
RUN make -j24 install
RUN cp gst-libs/gst/gl/egl/gstglcontext_egl.h /usr/local/include/gstreamer-1.0/gst/gl/egl

WORKDIR /workspace/src/gst-plugins-good
RUN ./autogen.sh
RUN ./configure --prefix=/usr/local
RUN make -j24 install 

WORKDIR /workspace/src/gst-plugins-bad
RUN ./autogen.sh
RUN ./configure --prefix=/usr/local
RUN make -j24 install

WORKDIR /workspace/src/gst-plugins-ugly
RUN ./autogen.sh
RUN ./configure --prefix=/usr/local
RUN make -j24 install

ENV EGL_LIBS=/usr/lib/arm-linux-gnuabihf/tegra-egl/libEGL.so
WORKDIR /workspace/gstegl_src/gst-egl
RUN ./configure
RUN  make -j24 install

WORKDIR /workspace/src/gst-omx-nvidia
RUN ./autogen.sh --with-omx-target=tegra
RUN make -j24 install

# https://devtalk.nvidia.com/default/topic/1009988/jetson-tk1/building-hardware-accelerated-gstjpeg-from-source-/
WORKDIR /workspace/gstjpeg_src/gst-jpeg/gst-jpeg-1.0
#RUN apt-get install libjpeg-dev -y
RUN apt-get install libjpeg-dev -y
ENV CFLAGS="-I/workspace/gstjpeg_src/nv_headers -L/usr/lib/arm-linux-gnueabihf/tegra -DUSE_TARGET_TEGRA"
ENV NOCONFIGURE=true
RUN cp /workspace/gstjpeg_src/nv_headers/* /usr/local/include
RUN ./autogen.sh
RUN ./configure
RUN make -j24 install


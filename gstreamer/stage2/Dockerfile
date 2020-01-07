ARG build_from
ARG from

FROM ${build_from} as deps

ARG from

FROM ${from}

COPY --from=deps /usr/local/lib/ /usr/local/lib/
COPY --from=deps /usr/local/include/ /usr/local/include/

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

RUN apt-get remove --purge gstreamer* libgstreamer* gir1.2-gstreamer-1.0 -y
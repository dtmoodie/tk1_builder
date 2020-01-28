ARG build_from
ARG from

FROM ${build_from} as deps

ARG from

FROM ${from}

RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list' 
RUN curl -sSL 'http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xC1CF6E31E6BADE8868B172B4F42ED6FBAB17C654' |  apt-key add - 

RUN apt-get clean 
RUN apt-get update
RUN apt-get install dpkg 

RUN apt-get install -y \
    python-rosdep \
    python-empy \
    libpython2.7-dev \
    libpython3.4-dev \
    libgpgme11-dev \
    libssl-dev \
    libbz2-1.0 \
    bzip2 \
    libbz2-dev \
    libzip-dev \
    libzip2 


COPY --from=deps /opt/ros/melodic /opt/ros/melodic
COPY --from=deps /usr/local/ /usr/local
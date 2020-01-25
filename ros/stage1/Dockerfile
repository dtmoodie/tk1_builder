ARG from
FROM jetson/tk1/build/ros-src as deps
ARG from
FROM ${from}

RUN apt-get install -y curl 
RUN apt-get clean 
RUN apt-get update
RUN apt-get install dpkg 
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list' 
RUN curl -sSL 'http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xC1CF6E31E6BADE8868B172B4F42ED6FBAB17C654' |  apt-key add - 
RUN apt-get update
RUN apt-get install python-rosdep python-empy -y 
RUN rosdep init 


RUN HOME=/home/ubuntu USER=ubuntu SUDO_USER=ubuntu rosdep update 
WORKDIR /workspace 

COPY console_bridge console_bridge
WORKDIR /workspace/console_bridge
RUN mkdir build
WORKDIR /workspace/console_bridge/build
RUN cmake .. && make -j24 && make install

COPY poco /workspace/poco
WORKDIR /workspace/poco/build
RUN cmake .. && make -j24 && make install

COPY tinyxml2 /workspace/tinyxml2
WORKDIR /workspace/tinyxml2/build
RUN cmake .. && make -j24 && make install

COPY lz4 /workspace/lz4
WORKDIR /workspace/lz4
RUN make -j24 && make install

WORKDIR /workspace 
COPY --from=deps /workspace/src /workspace/src 
COPY common_msgs /workspace/src/common_msgs

RUN apt-get install -y libpython2.7-dev libpython3.4-dev libgpgme11-dev libssl-dev libbz2-1.0 bzip2 libbz2-dev libzip-dev libzip2

# these are updated libraries for newer boost without boost::signals
COPY roscpp  /workspace/src/ros_comm/roscpp
COPY message_filters /workspace/src/ros_comm/message_filters
COPY rosbag_storage /workspace/src/ros_comm/rosbag_storage
COPY rosbag /workspace/src/ros_comm/rosbag
RUN ./src/catkin/bin/catkin_make_isolated --install \
    -DCMAKE_BUILD_TYPE=Release \
    -DCATKIN_ENABLE_TESTING=OFF \
    --install-space /opt/ros/melodic




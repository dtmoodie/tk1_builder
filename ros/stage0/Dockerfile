FROM ubuntu:18.04

WORKDIR /workspace
RUN apt-get update
RUN apt-get install -y curl gnupg gnupg2
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list'
RUN curl -sSL 'http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xC1CF6E31E6BADE8868B172B4F42ED6FBAB17C654' | apt-key add -
RUN mkdir ~/.gnupg

RUN apt update 
COPY install_deps_melodic install_deps 
RUN ./install_deps 
RUN rosinstall_generator ros_comm --rosdistro melodic --deps --tar > melodic-ros_comm.rosinstall
RUN wstool init -j8 src melodic-ros_comm.rosinstall

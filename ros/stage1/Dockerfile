ARG from
FROM ${from}

RUN apt-get install curl -y
RUN sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
RUN curl -sSL 'http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xC1CF6E31E6BADE8868B172B4F42ED6FBAB17C654' | sudo apt-key add -
RUN apt-get update
RUN apt-get install python-rosdep python-rosinstall-generator python-wstool python-rosinstall build-essential
RUN rosdep init
RUN rosdep update

RUN rosinstall_generator ros_comm --rosdistro melodic --deps --wet-only --tar > melodic-ros_comm-wet.rosinstall
RUN wstool init -j8 src melodic-ros_comm-wet.rosinstall


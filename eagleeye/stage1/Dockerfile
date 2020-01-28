ARG from

FROM ${from}

RUN apt-get install -y liblapack-dev

COPY eagleeye /workspace/eagleeye
WORKDIR /workspace/eagleeye/build
RUN apt-get update
RUN apt-get install -y libeigen3-dev libpython-dev libpython3-dev python python3
RUN source /opt/ros/melodic/setup.bash && cmake .. -DBUILD_TESTS=OFF
RUN make -j24
RUN source /opt/ros/melodic/setup.bash && make install

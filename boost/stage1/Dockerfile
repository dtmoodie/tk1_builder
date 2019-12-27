ARG from
FROM ${from}

WORKDIR /build
RUN wget https://dl.bintray.com/boostorg/release/1.69.0/source/boost_1_69_0.tar.gz
RUN tar xvf boost_1*

WORKDIR /build/boost_1_69_0
RUN apt-get install libpython-dev -y
RUN ./bootstrap.sh --with-libraries=fiber,python,program_options,test,atomic,date_time,stacktrace,thread,system,regex,log
RUN ./b2 cxxflags="-std=c++1y" \
    threading=multi \
    variant=release \
    link=shared \
    --reconfigure


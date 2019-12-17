ARG from
FROM ${from}

WORKDIR /build
RUN wget https://dl.bintray.com/boostorg/release/1.69.0/source/boost_1_69_0.tar.gz
RUN tar xvf boost_1*
RUN cd boost_1_69_0 && \
    ./bootstrap.sh --with-libraries=fiber,python,program_options,test,atomic,date_time,stacktrace,thread,system,regex,log,signals && \
    ./b2 cxxflags="-std=c++1y" \
    threading=multi \
    variant=release \
    link=shared \
    define=BOOST_NO_CXX14_CONSTEXPR \
    --reconfigure


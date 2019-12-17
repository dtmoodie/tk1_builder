ARG from
ARG build_from

FROM ${build_from} as deps

ARG from
FROM ${from}

# copy boost build into destination
COPY --from=deps /build/boost_1_69_0/boost /usr/local/include/boost
COPY --from=deps /build/boost_1_69_0/stage/lib /usr/local/lib

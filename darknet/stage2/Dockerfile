ARG from
ARG build_from

FROM ${build_from} as deps

ARG from

FROM ${from}
RUN apt-get install -y liblapack-dev
COPY --from=deps /usr/local /usr/local

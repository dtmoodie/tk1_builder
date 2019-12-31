ARG build_from
ARG from

FROM ${build_from} as deps

ARG from

FROM ${from}

COPY --from=deps /usr/local/lib/* /usr/local/lib/
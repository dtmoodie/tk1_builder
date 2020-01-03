ARG from
ARG build_from

FROM ${build_from} as deps

ARG from

FROM ${from}

COPY --from=deps /usr/local /usr/local

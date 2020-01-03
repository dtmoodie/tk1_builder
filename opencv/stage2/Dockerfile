ARG from
ARG build_from
FROM ${build_from} as deps
ARG from
FROM ${from}

COPY --from=deps /usr/local/lib /usr/local/lib
COPY --from=deps /usr/local/bin /usr/local/bin
COPY --from=deps /usr/local/include /usr/local/include
COPY --from=deps /usr/local/share /usr/local/share


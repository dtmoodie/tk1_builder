ARG build_from
ARG from

FROM ${build_from} as deps

ARG from

FROM ${from}

COPY --from=deps /opt/ros/melodic /opt/ros/melodic

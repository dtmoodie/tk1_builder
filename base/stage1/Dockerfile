ARG stage0=jetson/tk1/base0
FROM ${stage0} as deps

FROM scratch

WORKDIR /

COPY --from=deps /jetpack/Linux_for_Tegra/rootfs/ /

RUN apt update
SHELL ["/bin/bash", "-c"]]
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install build-essential cmake -y

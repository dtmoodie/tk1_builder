ARG root_from
ARG from
FROM ${root_from} as deps

ARG from
FROM ${from}

RUN apt update && apt install lbzip2 sudo bzip2

WORKDIR /jetpack
COPY Tegra124_Linux_R21.7.0_armhf.tbz2 .
RUN tar xpf Tegra124_Linux_R21.7.0_armhf.tbz2

COPY --from=deps / /jetpack/Linux_for_Tegra/rootfs

WORKDIR /jetpack/Linux_for_Tegra
RUN ./apply_binaries.sh

CMD [ "/bin/bash", "./flash.sh", "-S", "14580MiB", "jetson-tk1", "mmcblk0p1" ]
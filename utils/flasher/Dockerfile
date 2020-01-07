FROM jetson/tk1/jetpack
ARG root_from
FROM ${root_from} as deps

COPY --from=deps / /jetpack/Linux_for_Tegra/rootfs

WORKDIR /jetpack/Linux_for_Tegra
RUN ./apply_binaries.sh

CMD [ "/bin/bash", "./flash.sh", "-S", "14580MiB", "jetson-tk1", "mmcblk0p1" ]
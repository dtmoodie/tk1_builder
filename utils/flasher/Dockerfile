ARG root_from
FROM ${root_from} as deps

FROM jetson/tk1/jetpack

COPY --from=deps / /jetpack/Linux_for_Tegra/rootfs

WORKDIR /jetpack/Linux_for_Tegra

CMD [ "/bin/bash", "./flash.sh", "-S", "14580MiB", "jetson-tk1", "mmcblk0p1" ]

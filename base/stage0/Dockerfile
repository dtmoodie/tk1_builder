FROM jetson/tk1/jetpack

COPY Tegra_Linux_Sample-Root-Filesystem_R21.7.0_armhf.tbz2 .
RUN tar xpf Tegra_Linux_Sample-Root-Filesystem_R21.7.0_armhf.tbz2 --directory /jetpack/Linux_for_Tegra/rootfs

WORKDIR /jetpack/Linux_for_Tegra
RUN ./apply_binaries.sh
COPY qemu-arm-static /jetpack/Linux_for_Tegra/rootfs/usr/bin
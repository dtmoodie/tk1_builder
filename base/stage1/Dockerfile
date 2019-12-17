FROM scratch

WORKDIR /

COPY rootfs/ /
COPY qemu-arm-static /usr/bin/

# wd now do it again to get permissions right
COPY Tegra_Linux_Sample-Root-Filesystem_R21.7.0_armhf.tbz2 .
RUN tar xpf Tegra_Linux_Sample-Root-Filesystem_R21.7.0_armhf.tbz2 --directory / || true && rm Tegra_Linux_Sample-Root-Filesystem_R21.7.0_armhf.tbz2

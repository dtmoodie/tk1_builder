FROM scratch

WORKDIR /

COPY rootfs/ /
COPY qemu-arm-static /usr/bin/

ENV QEMU_BIN_DIR=/usr/bin
ADD ./register.sh /register
ADD ./qemu-binfmt-conf.sh /qemu-binfmt-conf.sh
RUN chmod +x /qemu-binfmt-conf.sh


# we unpack it again ontop of the existing filesystem to get the permissions correct
# we ignore some errors from the untar process as it is attempting to unpack a few empty folders (/sys) where docker is already mounting them
COPY Tegra_Linux_Sample-Root-Filesystem_R21.7.0_armhf.tbz2 .
RUN tar xpf Tegra_Linux_Sample-Root-Filesystem_R21.7.0_armhf.tbz2 --directory / || true && rm Tegra_Linux_Sample-Root-Filesystem_R21.7.0_armhf.tbz2


ENTRYPOINT ["/register"]

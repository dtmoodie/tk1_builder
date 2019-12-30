FROM ubuntu:16.04

RUN apt update && apt install lbzip2 sudo bzip2

WORKDIR /jetpack
COPY Tegra124_Linux_R21.7.0_armhf.tbz2 .
RUN tar xpf Tegra124_Linux_R21.7.0_armhf.tbz2

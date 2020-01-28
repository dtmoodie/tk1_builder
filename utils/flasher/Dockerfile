ARG root_from
FROM ${root_from} as deps

FROM jetson/tk1/jetpack

COPY --from=deps / /jetpack/Linux_for_Tegra/rootfs

WORKDIR /jetpack/Linux_for_Tegra
COPY flash /jetpack/Linux_for_Tegra
COPY get_ip_1804 /jetpack/Linux_for_Tegra
RUN apt-get install net-tools

ENTRYPOINT ["./flash"]
CMD ["dev"]

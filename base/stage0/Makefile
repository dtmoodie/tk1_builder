# from https://developer.nvidia.com/linux-tegra-r217
#  download sample root file system
#  jetson tk1 32bit driver package

all:
	cp ../../archives/Tegra_Linux* .
	cp /usr/bin/qemu-arm-static .
	docker build -t jetson/tk1/base0 .

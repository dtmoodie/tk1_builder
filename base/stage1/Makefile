# from https://developer.nvidia.com/linux-tegra-r217
#  download sample root file system
#  jetson tk1 32bit driver package

unpack:
	cp ../../archives/Tegra_Linux* .
	mkdir rootfs -p
	echo "Root permissions are needed to unpack the root filesystem with correct permissions"
	sudo tar xpf Tegra_Linux_Sample-Root-Filesystem_R21.7.0_armhf.tbz2 --directory rootfs
	cp /usr/bin/qemu-arm-static .


image:
	sudo docker build -t jetsontk1:base1 .

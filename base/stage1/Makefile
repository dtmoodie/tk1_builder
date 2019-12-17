# from https://developer.nvidia.com/linux-tegra-r217
#  download sample root file system
#  jetson tk1 32bit driver package

unpack:
	mkdir rootfs
	sudo tar xpf Tegra_Linux_Sample-Root-Filesystem_R21.7.0_armhf.tbz2 --directory rootfs
	cp /usr/bin/qemu-arm-static .
	#rm Tegra_Linux_Sample-Root-Filesystem_R21.7.0_armhf.tbz2


image:
	sudo docker build -t jetsontk1:base1 .

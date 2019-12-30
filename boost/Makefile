all:
	(cd stage1; docker build -t jetson/tk1/build/boost . --build-arg from=jetson/tk1/base)
	(cd stage2; docker build -t jetson/tk1/boost . --build-arg from=jetson/tk1/base --build-arg build_from=jetson/tk1/build/boost)

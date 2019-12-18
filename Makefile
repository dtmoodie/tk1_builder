

all:
	(cd base/stage1; make unpack)
	(cd base/stage1; make image)
	(cd base/stage2; make)
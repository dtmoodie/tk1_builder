

all:
	(cd utils/jetpack; make)
	(cd base; make)
	(cd boost; make)
	(cd openblas; make)
	(cd gstreamer; make)
	
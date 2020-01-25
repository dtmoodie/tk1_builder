

all:
	(cd utils/jetpack; make)
	(cd base; make)
	(cd boost; make)
	(cd openblas; make)
	(cd gstreamer; make)
	(cd opencv; make)
	(cd darknet; make)
	(cd ros; make)
	(cd eagleeye; make)
	(cd deploy; make)


flash:
	(cd utils/flasher; make image)
	(cd utils/flasher; make flash)

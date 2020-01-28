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

export NAME
flash:
	(cd utils/flasher; make image)
	(cd utils/flasher; make flash)


copy:
	ID=$(shell docker create jetson/tk1/deploy /bin/bash) && \
	docker cp --archive $$ID:/usr/local -> local.tar && \
	docker cp --archive $$ID:/opt -> opt.tar && \
	docker rm -v $$ID
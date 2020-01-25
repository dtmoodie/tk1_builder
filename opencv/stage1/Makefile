clone:
	git clone http://github.com/opencv/opencv
	git clone http://github.com/opencv/opencv_contrib

version3:
	(cd opencv; git checkout hough)
	(cd opencv_contrib; git checkout tags/3.4.1)

	docker build -t jetson/tk1/build/opencv3 .
	
version4:
	(cd opencv; git checkout tags/4.1.1)
	(cd opencv_contrib; git checkout tags/4.1.1)
	docker build -t jetson/tk1/build/opencv4 .

all:
	version3
	version4



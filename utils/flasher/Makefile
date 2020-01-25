image:
	docker build -t jetson/tk1/flasher . \
		--build-arg root_from=jetson/tk1/deploy

flash:
	docker run --privileged jetson/tk1/flasher

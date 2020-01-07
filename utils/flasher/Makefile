image:
	docker build -t jetsontk1:flasher . \
		--build-arg root_from=jetsontk1:base \
		--build-arg from=ubuntu:16.04


flash:
	docker run --privileged jetsontk1:flasher
all:
	cp ~/.ssh/id_rsa.pub .
	docker build -t jetson/tk1/deploy . \
		--build-arg from=jetson/tk1/eagleeye
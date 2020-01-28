.PHONY: image flash

image:
	docker build -t jetson/tk1/flasher . \
		--build-arg root_from=jetson/tk1/deploy

flash:
	docker run --rm --privileged jetson/tk1/flasher $(NAME) $(./get_ip_1804)
	#echo "Waiting for device to boot"
	#sleep 30

	#scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ubuntu@$(NAME):/home/ubuntu/.ssh/id_rsa.pub /home/$(NAME)/.ssh/authorized_keys

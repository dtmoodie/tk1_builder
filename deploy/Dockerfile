ARG from

FROM ${from}

COPY id_rsa.pub /home/ubuntu/.ssh/authorized_keys
COPY maxperf /usr/bin/maxperf
RUN echo "ubuntu ALL=(ALL:ALL) NOPASSWD:/usr/bin/maxperf" >> /etc/sudoers
RUN echo "ubuntu ALL=(ALL:ALL) NOPASSWD:/sbin/reboot" >> /etc/sudoers
RUN echo "ubuntu ALL=(ALL:ALL) NOPASSWD:/usr/bin/tegrastats" >> /etc/sudoers
RUN mv /home/ubuntu/tegrastats /usr/bin/tegrastats

RUN apt-get install -y ipython nano

COPY ld .
RUN cat ld  > /home/ubuntu/.bashrc
RUN ldconfig

COPY run /home/ubuntu/
COPY --chown=ubuntu:ubuntu facedb /home/ubuntu/facedb
COPY --chown=ubuntu:ubuntu yolo_face /home/ubuntu/yolo_face
COPY --chown=ubuntu:ubuntu get_ip /home/ubuntu/

# run on first boot
COPY firstboot /etc/rc.local
COPY rc.local /home/ubuntu/rc.local
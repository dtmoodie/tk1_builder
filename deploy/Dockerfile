ARG from

FROM ${from}

COPY id_rsa.pub /home/ubuntu/.ssh/authorized_keys
COPY maxperf /usr/bin/maxperf
RUN echo "ubuntu ALL=(ALL:ALL) NOPASSWD:/usr/bin/maxperf" >> /etc/sudoers
RUN echo "ubuntu ALL=(ALL:ALL) NOPASSWD:/sbin/reboot" >> /etc/sudoers
RUN echo "ubuntu ALL=(ALL:ALL) NOPASSWD:/usr/bin/tegrastats" >> /etc/sudoers
RUN mv /home/ubuntu/tegrastats /usr/bin/tegrastats

RUN apt-get install -y ipython nano

RUN echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib:/usr/local/lib" > /home/ubuntu/.bashrc
RUN ldconfig




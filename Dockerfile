FROM ubuntu:22.04
RUN apt update && apt install  openssh-server sudo -y
RUN /usr/bin/ssh-keygen -A
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 test
RUN echo 'test:test' | chpasswd
RUN service ssh start
EXPOSE 2022
CMD ["/usr/sbin/sshd","-D"]

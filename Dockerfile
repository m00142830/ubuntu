FROM ubuntu:22.04
RUN apt update && apt install openssh-client openssh-server sudo -y
EXPOSE 22
ENTRYPOINT ["tail", "-f", "/dev/null"]

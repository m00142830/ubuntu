FROM ubuntu:22.04
RUN apt update && apt install openssh-client openssh-server sudo -y
# setup git user
RUN adduser --system -s /bin/bash git
RUN mkdir -p /home/git/.ssh
RUN touch /home/git/.ssh/authorized_keys
RUN chmod 700 /home/git/.ssh
RUN chmod 600 /home/git/.ssh/authorized_keys
RUN ln -s /home/git /repos
RUN chown git -R /home/git
EXPOSE 22
ENTRYPOINT ["tail", "-f", "/dev/null"]

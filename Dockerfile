FROM jenkins/jenkins:latest
USER root
RUN apt update && \
    apk update && \
    apk add ansible openssh-client openssh-keygen sshpass && \
    adduser -D /bin/sh ansible && \
    apt -y install ansible && \
    apt install sshpass -y

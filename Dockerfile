FROM jenkins/jenkins:latest
USER root
RUN apt update && \
    apt install sshpass -y && \
    apt install ansible -y

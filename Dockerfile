FROM jenkins/jenkins:latest
USER root
RUN apt update && \
    chmod 600 ./tp_dev_ynov.pem && \
    apt -y install ansible && \
    apt install sshpass -y

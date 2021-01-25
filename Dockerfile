FROM jenkins/jenkins:latest
USER root
RUN apt update && \
    apt install software-properties-common && \
    sudo apt-add-repository --yes --update ppa:ansible/ansible && \
    apt install sshpass -y && \
    apt install ansible -y

FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    software-properties-common

#RUN apt-get update
#RUN apt-get install -y software-properties-common
RUN apt-add-repository -y ppa:ansible/ansible
RUN apt-get update \
    && apt-get install -y ansible \
    && apt-get install -y iproute2 \
    && apt-get install -y iputils-ping \
    && apt-get install -y git 

#COPY *.sh /tmp/
#COPY *.yaml /tmp/
#RUN mkdir /tmp/roles
#COPY roles/ /tmp/roles
RUN sed -i "s/#host_key_checking/host_key_checking/g" /etc/ansible/ansible.cfg

WORKDIR /tmp

RUN git clone https://github.com/vishwanathj/vish-ansible.git


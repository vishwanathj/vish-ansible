FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    python-dev \
    gcc \
    libffi-dev \
    libssl-dev \
    python-pip \
    git \
    wget

RUN pip install --upgrade pip setuptools

#RUN pip install apache-ariatosca

RUN pip install apache-ariatosca[ssh]==0.1.1 --no-binary apache-ariatosca

WORKDIR /tmp

RUN git clone https://github.com/apache/incubator-ariatosca.git /tmp/incubator-ariatosca

WORKDIR /tmp/incubator-ariatosca

RUN git checkout tags/0.1.1

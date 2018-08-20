FROM ubuntu:16.04
MAINTAINER xiang_zhi_@126.com

RUN apt-get update && apt-get install -y wget r-base

RUN cd ~/ && wget https://github.com/pachterlab/kallisto/releases/download/v0.44.0/kallisto_linux-v0.44.0.tar.gz && \
    tar -xzvf kallisto_linux-v0.44.0.tar.gz && rm kallisto_linux-v0.44.0.tar.gz && \
    echo 'PATH="$PATH:$HOME/kallisto_linux-v0.44.0"' >> ~/.bashrc

ADD code /code
RUN chmod a+x /code/*

FROM ubuntu:22.04

COPY ./sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install -y  \
    gcc \
    python3  \
    python3-distutils \
    python3-pip \
    python3-apt &&\
    apt-get autoremove && apt-get autoclean

CMD ["/bin/bash"]
FROM adouang/docker-swarm:latest

ENV SERF_VERSION 0.6.4_linux_amd64

RUN apt-get update

RUN curl -L https://dl.bintray.com/mitchellh/serf/$SERF_VERSION.zip -o serf.zip

RUN unzip serf.zip

RUN mv serf /usr/local/bin

RUN rm serf.zip

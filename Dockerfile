FROM swarm:latest

ENV SERF_VERSION 0.6.4_linux_amd64

RUN curl https://dl.bintray.com/mitchellh/serf/$SERF_VERSION.zip

RUN sudo apt-get install unzip

RUN unzip $SERF_VERSION.zip

RUN sudo mv serf /usr/local/bin

RUN rm $SERF_VERSION.zip

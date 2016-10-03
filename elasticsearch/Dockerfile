FROM debian:latest
MAINTAINER Yuji Konishi

RUN apt-get update -y
RUN apt-get install -y git
RUN apt-get install -y curl
RUN apt-get install -y unzip
RUN apt-get install -y gcc
RUN apt-get install -y make
RUN apt-get install -y openjdk-7-jdk

COPY elasticsearch-2.4.1.tar.gz /tmp/elasticsearch-2.4.1.tar.gz

RUN apt-get install -y sudo
RUN groupadd -g 1000 elasticsearch && \
	useradd -g elasticsearch -G sudo -d /home/elasticsearch -m -s /bin/bash elasticsearch && \
	echo 'elasticsearch:password' | chpasswd
USER elasticsearch

RUN cd /home/elasticsearch && tar zxvf /tmp/elasticsearch-2.4.1.tar.gz
WORKDIR /home/elasticsearch/elasticsearch-2.4.1
RUN sed -i '$a network.host: 0.0.0.0' ./config/elasticsearch.yml
RUN ./bin/plugin install mobz/elasticsearch-head

ADD script.sh /home/elasticsearch/script.sh
CMD [ "/home/elasticsearch/script.sh" ]

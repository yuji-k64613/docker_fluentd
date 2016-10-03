FROM debian:latest
MAINTAINER Yuji Konishi

RUN apt-get update -y
RUN apt-get install -y git
RUN apt-get install -y curl
RUN apt-get install -y unzip
RUN apt-get install -y gcc
RUN apt-get install -y make
RUN apt-get install -y openjdk-7-jdk

COPY kibana-4.6.1-linux-x86_64.tar.gz /tmp/kibana-4.6.1-linux-x86_64.tar.gz

RUN apt-get install -y sudo
RUN groupadd -g 1000 kibana && \
	useradd -g kibana -G sudo -d /home/kibana -m -s /bin/bash kibana && \
	echo 'kibana:password' | chpasswd
USER kibana

RUN cd /home/kibana && tar zxvf /tmp/kibana-4.6.1-linux-x86_64.tar.gz
WORKDIR /home/kibana/kibana-4.6.1-linux-x86_64
RUN sed -i '$a elasticsearch.url: "http://elasticsearch:9200"' ./config/kibana.yml

ADD script.sh /home/kibana/script.sh
CMD [ "/home/kibana/script.sh" ]

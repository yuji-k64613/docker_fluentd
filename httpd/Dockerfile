FROM debian:latest
MAINTAINER Yuji Konishi

RUN apt-get update -y
RUN apt-get install -y git
RUN apt-get install -y curl
RUN apt-get install -y unzip
RUN apt-get install -y gcc
RUN apt-get install -y make
RUN apt-get install -y openjdk-7-jdk

RUN apt-get install -y apache2

ADD script.sh /root/script.sh
CMD [ "/root/script.sh" ]

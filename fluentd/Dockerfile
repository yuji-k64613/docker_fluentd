FROM debian:latest
MAINTAINER Yuji Konishi

RUN apt-get update -y
RUN apt-get install -y git
RUN apt-get install -y curl
RUN apt-get install -y unzip
RUN apt-get install -y gcc
RUN apt-get install -y make
RUN apt-get install -y openjdk-7-jdk

RUN apt-get install -y ruby
RUN apt-get install -y ruby-dev
RUN gem install fluentd -v "~> 0.12.0" --no-ri --no-rdoc
RUN gem install fluent-plugin-elasticsearch

ADD script.sh /root/script.sh
CMD [ "/root/script.sh" ]

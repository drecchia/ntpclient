FROM debian:jessie

MAINTAINER Danilo Recchia <danilo@deltatecnologia.com>

ENV DEBIAN_FRONTEND noninteractive
ENV NTP_SERVER a.ntp.br
ENV INTERVAL 2h

RUN apt-get update -qq && apt-get install -y ntpdate

ADD files/runme.sh /runme.sh

RUN chmod +x /*.sh

ENTRYPOINT /runme.sh 

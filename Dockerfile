FROM ubuntu:18.04
MAINTAINER Hani_Brown <hm98127@naver.com>

# Avoiding user interactive with tzdata
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update
RUN apt-get install -y php5.6

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]

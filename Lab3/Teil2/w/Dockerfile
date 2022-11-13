FROM debian:latest

ENV DEBIAN_FRONTEND noninteractive
ENV container docker


ENV WORDPRESS_DB ='database'
ENV WORDPRESS_DB_USER ='user'
ENV WORDPRESS_DB_PASS ='123'
ENV WORDPRESS_DB_HOST ='mysql:3306'


RUN apt update
RUN apt upgrade -y

RUN apt install ca-certificates apt-transport-https -y
RUN apt install wget -y
RUN apt --force-yes install apache2 -y

RUN apt update
RUN apt install php libapache2-mod-php -y
RUN apt install unzip

RUN cd /var/www/html
RUN wget https://wordpress.org/latest.zip 
RUN unzip -q latest.zip 
RUN rm latest.zip
RUN mv wordpress/wp-config-sample.php wordpress/wp-config.php

EXPOSE 8080/tcp

VOLUME /var/www/html/wordpress
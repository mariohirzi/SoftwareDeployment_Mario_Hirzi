FROM ubuntu:latest

ENV container docker


ARG MYSQL_USER 'user'
ARG MYSQL_PASS '123'
ARG MYSQL_DB 'database'

RUN apt update
RUN apt upgrade -y
RUN apt install --force-yes mysql-server -y

RUN sed -i "s/.*bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf


EXPOSE 3306/tcp

COPY ./entrypoint.sh /
ENTRYPOINT [ "./entrypoint.sh" ]
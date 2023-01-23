FROM debian:buster

RUN apt-get update \
    && apt-get install mariadb-server -y

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY tools/configure.sh /tmp/

RUN service mysql start \
    && bash /tmp/configure.sh

EXPOSE 3306

CMD ["mysqld"]
FROM debian:buster

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install mariadb-server mariabd-client \


COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/init_db.sql /tmp/

RUN systemctl start mysql \
    && mysql < /tmp/init_db.sql \
    && rm -rf /tmp/init_db.sql \

EXPOSE 3306

CMD ["bash"]
ENTRYPOINT ["systemctl", "start", "mysql"]



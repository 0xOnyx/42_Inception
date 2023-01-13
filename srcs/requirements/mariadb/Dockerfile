FROM debian:buster

RUN apt-get update \
    && apt-get install mariadb-server \

EXPOSE 3306

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/init_db.sql /tmp/

RUN systemctl start mariadb.service &&



CMD ["bash"]
ENTRYPOINT ["/tmp/config.sh"]



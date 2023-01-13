FROM debian:buster

RUN sudo apt-get update \
    sudo apg-get install mariadb-server \

COPY ./conf/config.sh /tmp/config.sh
RUN chmod +x /tmp/config.sh

CMD ["sh", "/tmp/config.sh"]



FROM debian:buster

RUN apt-get update
RUN apt-get install php php-mysqli php-fpm wget sendmail -y

EXPOSE 9000

#https://www.digitalocean.com/community/tutorials/php-fpm-nginx

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d
COPY ./tools/ /var/www/

RUN chmod +x /var/www/worpress_start.sh

RUN /var/www/worpress_start.sh

ENTRYPOINT ["/usr/sbin/php-fpm7.3", "--nodaemonize"]




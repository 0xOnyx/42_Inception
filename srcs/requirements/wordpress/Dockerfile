FROM debian:buster

RUN apt-get update      \
    && apt-get install  \
    wget                \
    tar                 \
    php7                \
    php7-fpm			\
    php7-bcmath			\
    php7-bz2 			\
    php7-calendar		\
    php7-ctype			\
    php7-curl			\
    php7-dom			\
    php7-exif			\
    php7-fileinfo		\
    php7-gd				\
    php7-gmagick		\
    php7-gmp			\
    php7-iconv			\
    php7-imap			\
    php7-intl			\
    php7-json			\
    php7-mbstring		\
    php7-mcrypt			\
    php7-memcache		\
    php7-mysqli			\
    php7-mysqlnd		\
    php7-openssl		\
    php7-pcntl			\
    php7-pdo			\
    php7-pdo_mysql		\
    php7-pdo_pgsql		\
    php7-pdo_sqlite 	\
    php7-pgsql			\
    php7-phar			\
    php7-posix			\
    php7-session		\
    php7-shmop			\
    php7-simplexml		\
    php7-soap			\
    php7-sockets		\
    php7-sodium			\
    php7-sqlite3		\
    php7-sysvsem		\
    php7-sysvshm		\
    php7-tokenizer		\
    php7-xml			\
    php7-xmlreader		\
    php7-xmlwriter		\
    php7-xsl			\
    php7-zip			\
    php7-zlib

EXPOSE 9000

#https://www.digitalocean.com/community/tutorials/php-fpm-nginx

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d
COPY ./tools/ /var/www/

RUN chmod +x /var/www/worpress_start.sh

RUN /var/www/worpress_start.sh

ENTRYPOINT ["service", "start", "php7.3-fpm"]




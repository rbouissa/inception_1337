FROM debian:11

RUN apt update && apt upgrade && apt install php7.4 php7.4-mysql php7.4-fpm vim wget unzip -y

WORKDIR /var/www/html

RUN wget http://wordpress.org/latest.zip

RUN unzip latest.zip

RUN mv wordpress/* .


RUN mkdir -p /run/php/

RUN mkdir -p /var/run/php && \
    chmod 755 /var/run/php && \
    chown www-data:www-data /var/run/php

RUN sed -i -e 's/.*listen = .*/listen = 9000/' /etc/php/7.4/fpm/pool.d/www.conf

CMD ["php-fpm7.4", "--nodaemonize"]
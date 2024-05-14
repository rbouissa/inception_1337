FROM debian:buster
RUN apt-get update && apt-get upgrade -y 
RUN apt-get -y install wget
RUN apt-get install -y php7.3\
					    php7.3-fpm\
						php7.3-mysql\
						mariadb-client
RUN mkdir -p /var/www/html
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

WORKDIR /var/www/html
COPY config.sh /bin/
RUN chmod +x /bin/config.sh


RUN mkdir -p /var/run/php && \
    chmod 777 /var/run/php && \
    chown www-data:www-data /var/run/php

# RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www
# RUN cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz
# RUN	chown -R root:root /var/www/wordpress
CMD ["sh", "/bin/config.sh"]
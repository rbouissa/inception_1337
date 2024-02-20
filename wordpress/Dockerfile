FROM debian:11
RUN apt update && apt upgrade 
RUN apt-get -y install wget
RUN apt-get install -y php7.4\
						php-fpm\
						php-mysql\
						mariadb-client
RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz
RUN	chown -R root:root /var/www/wordpress
COPY www.conf //etc/php/7.4/fpm/pool.d
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
CMD ["./tools/script.sh"]
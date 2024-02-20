RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.pha
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
sleep 10
wp config create	--allow-root \
                    --dbname= mydata \
					--dbuser= MyUser \
					--dbpass= 1234 \
					--dbhost=mariadb:3306 --path='/var/www/wordpress'

/usr/sbin/php-fpm7.4 -F
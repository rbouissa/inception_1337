#!/bin/bash

sleep 10

sed -i -e 's/.*listen = .*/listen = 9000/' /etc/php/7.3/fpm/pool.d/www.conf
# chmod 777 "/var/www/html/*"
# mkdir -p /run/php
wp core download --allow-root
wp config create --dbhost="mariadb" --dbname="mydata" --dbuser="MyUser" --dbpass="1234" --allow-root
# wp core install --url=$URL --title=$TITLE --admin_user=$ADMIN --admin_password=$ADMINPASS --admin_email=$ADMINEMAIL --allow-root
# wp user create $USER $USEREMAIL --role=subscriber --user_pass=$USERPASS --allow-root
chown -R www-data:www-data /var/www/html
php-fpm7.3 -F -R --nodaemonize
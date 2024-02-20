#!/bin/bash

CONFIG_FILE="/etc/mysql/mariadb.conf.d/50-server.cnf"
sed -i 's/^bind-address\s*=\s*127\.0\.0\.1/bind-address = 0.0.0.0/' "$CONFIG_FILE"
mysql_install_db
service mariadb start
# mysql_secure_installation << RR
# Y
# Y
# Y
# Y
# Y
# Y
# RR

#mkdir /run/mysqld
echo "create database mydata" | mysql
echo "CREATE USER IF NOT EXISTS 'MyUser'@'localhost' IDENTIFIED BY '1234';" | mysql
echo "GRANT ALL PRIVILEGES ON \`mydata\`.* TO \`MyUser\`@'%' IDENTIFIED BY '1234';" | mysql
echo "flush privileges;" | mysql
service mariadb stop
mariadbd

# exec "$@"
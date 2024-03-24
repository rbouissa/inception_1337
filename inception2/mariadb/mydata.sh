#!/bin/bash

CONFIG_FILE="/etc/mysql/mariadb.conf.d/50-server.cnf"
sed -i 's/^bind-address\s*=\s*127\.0\.0\.1/bind-address = 0.0.0.0/' "$CONFIG_FILE"
mysql_install_db
service mysql start
sleep 4
# mysql_secure_installation << RR
# Y
# Y
# Y
# Y
# Y
# Y
# RR
echo "create database mydata" | mariadb
echo "CREATE USER IF NOT EXISTS 'MyUser'@'localhost' IDENTIFIED BY '1234';" | mariadb
echo "GRANT ALL PRIVILEGES ON mydata.* TO MyUser@'%' IDENTIFIED BY '1234';" | mariadb
echo "flush privileges;" | mariadb
service mysql stop
mysqld_safe

# exec "$@"
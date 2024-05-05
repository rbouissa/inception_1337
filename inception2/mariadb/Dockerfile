FROM debian:buster
RUN apt-get update && apt-get upgrade -y
RUN apt-get install mariadb-server mariadb-client -y
RUN apt-get install vim -y
COPY mydata.sh /
COPY 50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN chown -R mysql /var/lib/mysql && chgrp -R mysql /var/lib/mysql
RUN chmod +x /mydata.sh
# CMD ["tail","-f"]
CMD ["./mydata.sh"]
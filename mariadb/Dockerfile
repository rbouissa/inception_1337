FROM debian:bullseye
RUN apt update && apt upgrade && apt install mariadb-server -y
RUN apt install vim -y
COPY mydata.sh /
RUN chmod +x /mydata.sh

CMD ["./mydata.sh"]
#CMD ["mysqld_safe"]
# RUN apt install curl 
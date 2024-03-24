FROM debian:buster
RUN apt-get update && apt-get upgrade -y
RUN apt-get install mariadb-server -y
RUN apt-get install vim -y
COPY mydata.sh /
RUN chmod +x /mydata.sh
# CMD ["tail","-f"]
CMD ["./mydata.sh"]
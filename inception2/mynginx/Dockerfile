FROM debian:buster

RUN apt-get update && apt-get upgrade && apt-get install nginx -y
RUN apt-get install vim -y
RUN apt-get install curl -y
RUN mkdir -p /etc/nginx/ssl
RUN apt-get install openssl -y
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MA/ST=Benguerir-Marrakech/L=Benguerir/O=42/OU=1337/CN=rbouissa.42.fr/UID=rbouissa"
COPY nginx.conf /etc/nginx/conf.d
RUN chmod 755 /var/www/html

CMD [ "nginx", "-g", "daemon off;" ]
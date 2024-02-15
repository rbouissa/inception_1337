FROM debian:buster
RUN apt update && apt upgrade && apt install nginx -y
RUN apt install vim -y
RUN apt install curl -y
Run mkdir -p /etc/nginx/ssl
RUN apt install openssl -y
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MA/ST=Benguerir-Marrakech/L=Benguerir/O=42/OU=1337/CN=rbouissa.42.fr/UID=rbouissa"
COPY nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /var/run/nginx
RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html
CMD [ "nginx", "-g", "daemon off;" ]
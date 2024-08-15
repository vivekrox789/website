FROM ubuntu
RUN apt update
RUN apt install apache2 -y
RUN apt -y install curl
ADD . /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND

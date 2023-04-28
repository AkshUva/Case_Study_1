FROM ubuntu

RUN apt update -y && apt install git -y

RUN apt install apache2 -y

RUN rm -f /var/www/html/index.html

ADD https://raw.githubusercontent.com/AkshUva/Case_Study_1/main/index.html /var/www/html/

ENTRYPOINT apachectl -D FOREGROUND


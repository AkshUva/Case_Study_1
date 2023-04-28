FROM ubuntu

RUN apt update -y && apt install git -y

RUN apt install apache2 -y

RUN rm -f /var/www/html/index.html

RUN git clone https://github.com/AkshUva/Case_Study_1.git /var/www/html

EXPOSE 80

ENTRYPOINT apachectl -D FOREGROUND

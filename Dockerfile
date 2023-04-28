FROM ubuntu

RUN apt update -y && apt install git -y

RUN apt install apache2 -y

RUN rm -f /var/www/html/index.html

ADD ./index.html /var/www/html

ENTRYPOINT apachectl -D FOREGROUND

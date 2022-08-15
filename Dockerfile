#Contenedor v.1.0

FROM ubuntu:latest

RUN apt-get update -y && apt-get install apache2 -y && apt install python3 -y

CMD /usr/sbin/apache2ctl -D FOREGROUND
#FROM php:7.4-cli-alpine as phpstage
#FROM php:7.4-fpm-alpine as phpstage
#FROM sickcodes/docker-osx:latest

FROM baotaostudy/baotaoscript:latest
WORKDIR /
COPY tindex.php index.php
COPY file_server.py ./
COPY startd.sh ./

#CMD ["sh", "-c", "php -S 0.0.0.0:8500&"]
#FROM python:2.7

#RUN pecl install swoole
#RUN docker-php-ext-install swoole
#RUN docker-php-ext-enable redis zip swoole

##RUN apk add --no-cache python3  py3-pip nginx

#RUN ls -al /usr/bin
#RUN uname -a

##COPY requirements.txt ./
##RUN pip install --no-cache-dir -r requirements.txt
##COPY . .
##EXPOSE 8000 8500
##RUN ls -al /usr/bin
##CMD ["sh", "-c", "php -S 0.0.0.0:8500"]

#RUN cat /etc/nginx.conf
#CMD sh -c php -S  0.0.0.0:8500;/usr/bin/python3 ./file_server.py
#CMD ["/bin/sh","./startd.sh"]
#CMD ["php","-S 127.0.0.1:8000"]

#CMD [ "python3", "./file_server.py" ]



FROM php:7.4-cli-alpine as phpstage

#CMD ["sh", "-c", "php -S 0.0.0.0:8500&"]
#FROM python:2.7
RUN apk add --no-cache python3  py3-pip
RUN ls -al /usr/bin
RUN uname -a
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

CMD ["sh", "-c", "php -S 0.0.0.0:8500"]
#CMD [ "python3", "./file_server.py" ]



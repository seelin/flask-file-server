FROM php:7.4-cli-alpine as phpstage
#CMD ["sh", "-c", "php -S 0.0.0.0:8500"]
#FROM python:2.7
RUN apt-get update 
RUN apt-get install -y python
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

CMD [ "python", "./file_server.py" ]



FROM python:2.7
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD [ "python", "./file_server.py" ]

FROM php:7.4-cli-alpine
CMD ["sh", "-c", "php -S 0.0.0.0:8500"]

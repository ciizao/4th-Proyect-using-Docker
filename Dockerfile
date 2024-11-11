FROM php:8.1-cli

WORKDIR /usr/src/app

COPY . /usr/src/app

EXPOSE 3000

CMD ["sh", "-c", "php -S 0.0.0.0:3000 -t /usr/src/app"]



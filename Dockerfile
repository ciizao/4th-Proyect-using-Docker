
FROM php:8.1-cli

COPY . /usr/src/app

EXPOSE 3000

CMD ["php", "-S", "0.0.0.0:$PORT", "-t", "/usr/src/app"]


FROM php:8.1-cli

# Establece el directorio de trabajo
WORKDIR /usr/src/app

# Copia los archivos desde el directorio local al contenedor
COPY . /usr/src/app

# Expone el puerto 3000
EXPOSE 3000

# Usa sh -c para que PHP interprete la variable $PORT correctamente
CMD ["sh", "-c", "php -S 0.0.0.0:$PORT -t /usr/src/app"]



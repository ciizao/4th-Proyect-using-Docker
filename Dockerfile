# Usa la imagen oficial de PHP sin Apache
FROM php:8.1-cli

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copia los archivos de tu aplicación desde tu máquina local al contenedor
COPY . /usr/src/app

# Expone el puerto 3000 (esto es solo para propósitos locales, Railway usa el puerto asignado dinámicamente)
EXPOSE 3000

# Inicia el servidor PHP embebido en la IP 0.0.0.0 para aceptar conexiones desde fuera del contenedor
CMD ["php", "-S", "0.0.0.0:3000", "-t", "/usr/src/app"]


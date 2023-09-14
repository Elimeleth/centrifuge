FROM centrifugo/centrifugo:v5

# Define el número máximo de archivos abiertos
RUN ulimit -n 262144

# Monta el directorio con el archivo de configuración en el contenedor
VOLUME /centrifugo

# Expone el puerto 8000
EXPOSE 8000

# Arranca Centrifugo con el archivo de configuración especificado
CMD ["centrifugo", "-c", "/centrifugo/config.json"]
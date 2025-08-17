FROM ghcr.io/hacktricks-wiki/hacktricks-cloud/translator-image:latest

# Idioma de la wiki (inglés)
ARG LANG=master
ENV LANG=${LANG}

WORKDIR /app
COPY . /app

# Exponemos el puerto que usará mdbook
EXPOSE 3000

# Ejecuta mdbook en modo servidor
CMD ["bash", "-c", "MDBOOK_PREPROCESSOR__HACKTRICKS__ENV=dev mdbook serve --hostname 0.0.0.0 --port 3000"]

#partimos de una imagen base de ubuntu
FROM ubuntu
RUN apt update && apt install -yq --no-install-recommends \
     apache2 \
     nano \
     curl \
     net-tools iputils-ping

#mantiene el contenedor en ejecucion
# tail es un comando que nunca termina
CMD ["tail", "-f", "/dev/null"]
#partimos de una imagen base de ubuntu
FROM ubuntu
RUN apt update && apt install -yq --no-install-recommends \
     apache2 \
     nano \
     curl \
     net-tools iputils-ping

#delegar la responsabilidad de la configuracion de las isos (no se hace en el dockerfile)
#a los scripts llamados entrypoints (scripts de inicio para un contenedor)
#mantiene el contenedor en ejecucion
# tail es un comando que nunca termina
#copiar los entrypoints (admin) dentro del contenedor en /root/admin /bin/admin
RUN mkdir -p /root/base/ubuntu/admin
#directorio actual dentro del contenedor
WORKDIR /root/base/ubuntu/admin

COPY ./dockerfiles/base/ubuntu/admin .
RUN chmod o+x ./start.sh
ENTRYPOINT ["./start.sh"]
#CMD ["tail", "-f", "/dev/null"]
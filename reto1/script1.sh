#!/bin/bash
echo ''
echo "Creamos servidor llamado servidor_web con imagen nginx."
docker run -d --name servidor_web -p 8181:80 nginx
read -p "Presione ENTER para seguir." siguiente

echo ''
echo "Listamos los contenedores que están corriendo."
docker ps
read -p  "Presione ENTER para seguir." siguiente

echo ''
echo "Listamos las imágenes que están en el host."
docker images
read -p  "Presione ENTER para seguir." siguiente

echo ''
echo "Detenemos el servidor llamado servidor_web."
docker stop servidor_web
read -p  "Presione ENTER para seguir." siguiente

echo ''
echo "Listamos los contenedores para verificar que se haya detenido."
docker ps
read -p  "Presione ENTER para seguir." siguiente

echo ''
echo "Eliminamos el servidor llamdo  servidor_web."
docker rm servidor_web
read -p  "Presione ENTER para seguir." siguiente

echo ''
echo "Listamos TODOS los contenedores."
docker ps -a
read -p  "Presione ENTER para seguir." siguiente
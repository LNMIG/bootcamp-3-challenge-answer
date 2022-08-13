#!/bin/bash
echo ''
echo "Creamos servidor llamado bbdd con imagen mariadb."
docker run -d -p 3306:3306 --name bbdd -e "MARIADB_ROOT_PASSWORD=root" -e "MARIADB_DATABASE=prueba" -e "MARIADB_USER=invitado" -e "MARIADB_PASSWORD=invitado" mariadb
read -p "Presione ENTER para seguir." siguiente

echo ''
echo "Verificamos que no se puede eliminar el servidor y la imagen mientras están montados."
docker rm bbdd
docker rmi mariadb
read -p "Presione ENTER para seguir." siguiente
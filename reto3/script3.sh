#!/bin/bash

echo "<html>" >> src/index.html
echo "<body>" >> src/index.html
echo "<p>HOMEWORK 3</p>" >> src/index.html
echo "</body>" >> src/index.html
echo "</html>" >> src/index.html

touch Dockerfile
echo "FROM nginx:alpine" >> Dockerfile
echo "COPY /src/index.html /usr/share/nginx/html" >> Dockerfile

docker volume create static_content

docker build -t bootcamp_nginx .

docker run -d --name bootcamp_container -v static_content:/usr/share/nginx/html -p 8080:80 bootcamp_nginx

echo ''
echo 'Vamos a loguearnos a dockerhub'
echo ''
read -p "Ingrese su nombre de usuario para logearse a dockerhub y presione 'enter': " myusername
read -p "Ingrese su clave para logearse a dockerhub y presione 'enter': " mypassword

docker login -u $myusername -p $mypassword docker.io

docker tag bootcamp_nginx $myusername/bootcamp_nginx:v1.0.0 

docker push $myusername/bootcamp_nginx:v1.0.0
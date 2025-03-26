#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

echo "Instalando Apache"
apt-get install apache2 -y

echo "Instalando unzip"
apt-get install unzip -y


cd /tmp

echo "Baixando arquivo do Github"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip


echo "descompactar e copiar os arquivos"
unzip main.zip

cd linux-site-dio-main

cp -r * /var/www/html/


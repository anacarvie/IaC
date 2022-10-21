#!/bin/bash

echo "Atualizando servidor Manjaro"

pamac update --force-refresh

echo "Instalando apache"

pamac install apache

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /srv/http/

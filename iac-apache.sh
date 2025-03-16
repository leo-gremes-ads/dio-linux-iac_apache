#!/bin/bash

GRN='\e[92m'
DEF=$(tput sgr0)

echo ${GRN}Atualizando sistema ... ${DEF}
apt update -y
apt upgrade -y

echo ${GRN}Instalando pacotes ... ${DEF}
apt install apache2 unzip -y

echo ${GRN}Baixando arquivos ...${DEF}
cd /tmp
wget https://github.com/leogremes/NLW-e-sports/archive/refs/heads/master.zip
unzip master.zip
cp -rfv NLW-e-sports-master/* /var/www/html/

echo ${GRN}Finalizado!${DEF}

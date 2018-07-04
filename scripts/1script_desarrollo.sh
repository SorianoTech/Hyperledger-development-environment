#!/bin/bash
#
# Sergio Soriano
# Fecha 04/07/2018
# GNU License
# Instalador de los requisitos previos para el entorno de desarollo de hyperldger

sudo apt install curl
curl -O https://hyperledger.github.io/composer/latest/prereqs-ubuntu.sh 
chmod u+x prereqs-ubuntu.sh 
./prereqs-ubuntu.sh
reboot
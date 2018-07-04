#!/bin/bash
#
# Sergio Soriano
# 04/07/2018
# GNU License
# Instalacion de Fabric server

mkdir ~/fabric-dev-servers && cd ~/fabric-dev-servers 
curl -O https://raw.githubusercontent.com/hyperledger/composer-tools/master/packages/fabric-dev-servers/fabric-dev-servers.tar.gz 
tar -xvf fabric-dev-servers.tar.gz
./downloadFabric.sh
reboot

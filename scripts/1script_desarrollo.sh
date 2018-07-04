#!/bin/bash
#
# Sergio Soriano
#
# GNU License
#

sudo apt install curl
curl -O https://hyperledger.github.io/composer/latest/prereqs-ubuntu.sh 
chmod u+x prereqs-ubuntu.sh 
./prereqs-ubuntu.sh
reboot
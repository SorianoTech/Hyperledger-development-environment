#!/bin/bash

./dockers_stop.sh

cd ~/fabric-dev-servers/fabric-scripts/hlfv1/composer
docker-compose start
echo- e "\nWaiting for 15 seconds to the dockers wake up\n"
sleep 15
cd
cd hypercert-network
echo -e "\nStarting the network docker\n"
composer network list -c admin@hypercert-network

echo -e "\nStarting the REST server\n"
composer-rest-server -c admin@hypercert-network -n always -w true &


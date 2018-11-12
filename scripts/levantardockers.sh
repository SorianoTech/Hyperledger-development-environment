#!/bin/bash
cd ~/fabric-dev-servers/fabric-scripts/hlfv1/composer
docker-composer start
cd
cd hypercert-network
composer network list -c admin@hypercert-network
composer-rest-server -c admin@hypercert-network -n always -w true

#!/bin/bash
#Este script arranca fabric, crea un fichero bna, crea una admincar y levanta la red la 1 vez
cd fabric-dev-servers
./startFabric.sh
cd ..
yo hyperledger-composer:businessnetwork
composer archive create -t dir -n .
cd ..
cd fabric-dev-servers
./createPeerAdminCard.sh
cd ..
cd hypercert-network/
composer network install --card PeerAdmin@hlfv1 --archiveFile  hypercert-network@0.0.1.bna
composer network start --networkName hypercert-network --networkAdmin admin --networkAdminEnrollSecret adminpw --card PeerAdmin@hlfv1 --file networkadmin.card --networkVersion 0.0.1
composer card import --file networkadmin.card
composer-rest-server -c admin@hypercert-network -n always -w true

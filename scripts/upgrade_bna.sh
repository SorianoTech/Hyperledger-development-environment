#!/bin/bash
cd hypercert-network
nano package.json
#cambiar version en fichero package.json
cd models
nano org.hypercert.cto
#modificamos la información del fichero que queramos. cto js o acl
cd ..
composer archive create -t dir -n .
#En la siguiente orden hay que cambiar el fichero bna por el ultimo creado
composer network install -a hypercert-network@0.0.2.bna -c PeerAdmin@hlfv1
#Al final en el flag -V hay que poner la version nueva.
composer network upgrade -c PeerAdmin@hlfv1 -n hypercert-network -V 0.0.2
composer-rest-server -c admin@hypercert-network -n always -w true

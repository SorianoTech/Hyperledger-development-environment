Arranque de composer playground
>composer-playground

Arranque de Fabric
>cd ~/fabric-dev-servers 
>./startFabric.sh 

>yo hyperledger-composer

composer card delete -c PeerAdmin@byfn-network-org1

>docket stats
>docker ps

composer card list

-----Comandos necesarios para levantar el docker de dev cuando ya tenemos los otros dockers levantados---------
Si lanzamos el script ./startFabric.sh nos borra todos los docker y los levanta de nuevo

>composer network install --card PeerAdmin@hlfv1 --archiveFile <nombre>@0.0.1.bna

>composer network start --networkName land-registry --networkAdmin admin --networkAdminEnrollSecret adminpw --card PeerAdmin@hlfv1 --file networkadmin.card --networkVersion 0.0.1

>composer card import --file networkadmin.card 
nos lo importa en .composer

composer-rest-server -c admin@land-registry -n always -w true


#Herramientas fabric samples 1.1
Web de donde tira el enlace de abajo
https://raw.githubusercontent.com/hyperledger/fabric/master/scripts/bootstrap.sh
curl -sSL http://bit.ly/2ysbOFE | bash -s 1.2.0-rc1



Para resetear la base de datos
Borra todos los docker(y me los tiene que descargar luego)
>teardownAllDocker.sh (completo)
Tira los docker pero no me los borra
>teardownFabric.sh (menos agresivo)

Composer
------------
List business network from card admin@land-registry (esto me levanta el docker de dev)
>composer network list -c admin@land-registry


Actualizar
>composer network upgrade -n land-registry> -V 0.0.2 -c admin@land-registry

Ruta de los dockers
/home/sergio/.nvm/versions/node/v8.11.2/lib/node_modules/composer-playground/node_modules/composer-playground-api/scripts/docker-compose.yaml

Eliminamos la instalación del Playground actual
>npm uninstall -g composer-playground  
Instalamos nuevamente el Playgroud
>npm install -g composer-playground  


Docker
----------
docker kill $(docker ps -q)
docker rm $(docker ps -aq)
docker rmi $(docker images dev-* -q)

Change to the directory where the docker-compose.yml file is (e.g. /home/<user>/fabric-tools/fabric-scripts/hlfv1/composer
docker-compose stop
docker-compose start

Remove chaincode images (e.g. dev-peer1.org2.example.com-mycc-1.0 or dev-peer0.org1.example.com-mycc-1.0

yeomao
----------------
Monaje Angular 4 application
>yo hyperledger-composer:angular


Real Fabric usually in a group called "hlfv1"
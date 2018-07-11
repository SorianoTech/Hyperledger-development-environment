Esta página contiene información sobre los comandos o script que mas utilizaremos. Esta divida en:

- Fabric
- Composer
- Composer play-ground
- Docker
- Yeoman


---------------------------------------------------------------------------------------------------------------
-----Comandos necesarios para levantar el docker de dev cuando ya tenemos los otros dockers levantados---------
---------------------------------------------------------------------------------------------------------------

>composer network install --card PeerAdmin@hlfv1 --archiveFile <nombre>@0.0.1.bna

>composer network start --networkName land-registry --networkAdmin admin --networkAdminEnrollSecret adminpw --card PeerAdmin@hlfv1 --file networkadmin.card --networkVersion 0.0.1

>composer card import --file networkadmin.card 

Solo si queremos importar la card en composer, este comando nos lo importa en .composer

>composer-rest-server -c admin@land-registry -n always -w true

Fabric
---------------
Arranque de Fabric

>cd ~/fabric-dev-servers 
>./startFabric.sh 

Si lanzamos el script ./startFabric.sh nos borra todos los docker y los levanta de nuevo

Para resetear la base de datos
Borra todos los docker(y me los tiene que descargar luego)
>teardownAllDocker.sh (completo)

Tira los docker pero no me los borra

>teardownFabric.sh (menos agresivo)

composer card delete -c PeerAdmin@byfn-network-org1

>docket stats
>docker ps

#Herramientas fabric samples 1.1
Web de donde descarga el enlace de abajo
https://raw.githubusercontent.com/hyperledger/fabric/master/scripts/bootstrap.sh

>curl -sSL http://bit.ly/2ysbOFE | bash -s 1.2.0-rc1


Composer
------------
List business network from card admin@land-registry (esto me levanta el docker de dev)
>composer network list -c admin@land-registry


Actualizar
>composer network upgrade -n land-registry> -V 0.0.2 -c admin@land-registry

Ruta de los dockers
```/home/sergio/.nvm/versions/node/v8.11.2/lib/node_modules/composer-playground/node_modules/composer-playground-api/scripts/docker-compose.yaml```

Muestra la lista de card
>composer card list

Composer-playground
---------------------
Arranque de composer playground
>composer-playground

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
cd ~/fabric-dev-servers/fabric-scripts/hlfv1/composer
docker-compose stop
docker-compose start

Remove chaincode images (e.g. dev-peer1.org2.example.com-mycc-1.0 or dev-peer0.org1.example.com-mycc-1.0

yeoman
----------------
>yo hyperledger-composer

Monaje Angular 4 application
>yo hyperledger-composer:angular


Real Fabric usually in a group called "hlfv1"



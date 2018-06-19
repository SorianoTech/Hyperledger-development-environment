# Hyperledger-development-environment
Creacion de un entorno de desarrollo local para trabajar con Hyperledger

Requisitos
----------
- Virtual box
- Compartir el Portapapeles
- Discos de 25 GB
- 2 GB RRAM

Sobre el SO
------------
- Instalar Ubuntu 16.04
- Instalar Updates del SO
- Instalar Guest Addtion


Prerrequisitos
---------------
>sudo apt install curl

>curl -O https://hyperledger.github.io/composer/latest/prereqs-ubuntu.sh 

>chmod u+x prereqs-ubuntu.sh 

>./prereqs-ubuntu.sh 

Reiniciar

Instalación de VSCode
------
https://code.visualstudio.com

- Descargar el paquete .deb para instalar en Ubuntu

- Instalar dentro de “Extensiones” el “Hyperledger Composer” del Marketplace

Instalación de las CLI Tools
----------------------------
Todos estos paquetes se instalan SIN sudo.
Estas herramientas que nos permiten definir como va a ser nuestra blockchain.

>npm install -g composer-cli

Herramientas para publicar la blockchain:
>npm install -g composer-rest-server

Nos permite crear esqueletos de aplicaciones, fiheros, componentes. Son utilidades adionales:
>npm install -g generator-hyperledger-composer 

Prototipador de aplicaciones:
>npm install -g yo 

Composer Playground:
>npm install -g composer-playground 

Ignorar los warnnings.
Reiniciar (Hasta aquí todavía no tenemos Fabric instalado)

Para lanzar el entorno desde el terminal:
>composer-playground

Instalación de Fabric
---------------------
Creamos una carpeta:
>mkdir ~/fabric-dev-servers && cd ~/fabric-dev-servers 

Descargarmos el fichero:
>curl -O https://raw.githubusercontent.com/hyperledger/composer-tools/master/packages/fabric-dev-servers/fabric-dev-servers.tar.gz 

Descomprimimos:
>tar -xvf fabric-dev-servers.tar.gz

En este momento puede ser interesante instalar Kitematic. Es una aplicación para gestionar los contenedores de Docker:

>https://github.com/docker/kitematic/release

>

Descargamos Fabric
------------------
>cd ~/fabric-dev-servers 

>./downloadFabric.sh

Arranque del Fabric
-----------------------
>cd ~/fabric-dev-servers 

>./startFabric.sh 


Conectar nodos entre si
-------------------------
Descargamos los fabric samples, el comando descarga el scrio de la web: https://raw.githubusercontent.com/hyperledger/fabric/master/scripts/bootstrap.sh

>curl -sSL https://goo.gl/6wtTN5 | bash -s 1.1.0 

Añadimos el directorio para poder ejecutar los scripts desde cualquier lugar del sistema

Actualizamos la lista de PATH
>PATH=$PATH:$HOME/fabric-samples/bin/


## Configuración de Docker para uso en Red 
>docker swarm init --advertise-addr 192.168.56.101

Para obtener el token para añadir orto equipo a este swaarm
>docker swarm join-token manager

Copiamos la informacion que nos devuelve para introducir en el otro equipo.

Si queremos dejar de ser manager del swarm
>docker swarm leave --force

Creamos la red
>docker network create --attachable --driver overlay my-net

En el equipo 2
>docker swarm join --token SWMTKN-1-0z5y1o9sm1nv0e95n13pcuntrc9gfjv1alwx0za2dfanmzdcd7-bpzwthhraykggmgz25b7c14m1 192.168.56.104:2377

![2computer](images/Image3.png)

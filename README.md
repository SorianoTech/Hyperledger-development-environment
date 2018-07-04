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

Descargarmos el fichero de herramientas de desarrolo:
>curl -O https://raw.githubusercontent.com/hyperledger/composer-tools/master/packages/fabric-dev-servers/fabric-dev-servers.tar.gz 

Descomprimimos:
>tar -xvf fabric-dev-servers.tar.gz

En este momento puede ser interesante instalar Kitematic. Es una aplicación para gestionar los contenedores de Docker:

>https://github.com/docker/kitematic/releases

>

Descargamos Fabric
------------------
>cd ~/fabric-dev-servers 

>./downloadFabric.sh

Arranque del Fabric
-----------------------
>cd ~/fabric-dev-servers 

>./startFabric.sh 




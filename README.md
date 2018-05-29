# Hyperledger-development-environment
Creacion de un entorno de desarrollo local para trabajar con Hyperledger

Requisitos
----------

Sobre el SO
------------
Compartir el portapapeles
Instalar Ubuntu 16.04
Instalar Updates del SO
Instalar Guest Addtion



Prerrequisitos
---------------
>sudo apt install curl
>curl -O https://hyperledger.github.io/composer/latest/prereqs-ubuntu.sh 
>chmod u+x prereqs-ubuntu.sh 
>./prereqs-ubuntu.sh 

Reiniciar

VSCode
------
https://code.visualstudio.com
Descargar el paquete .deb para instalar en Ubuntu
Instalar dentro de “Extensiones” el “Hyperledger Composer” del Marketplace

Instalación de las CLI Tools
----------------------------
//todos estos paquetes se instalan SIN sudo
//herramientas que nos permiten definir como va a ser nuestra bloc
>npm install -g composer-cli 
//herramientas para publicar la blockchain
>npm install -g composer-rest-server
//nos permite crear esqueletos de aplicaciones, fiheros, componentes
//son utilidades adionales
>npm install -g generator-hyperledger-composer 
//es un prototipador de aplicaciones
>npm install -g yo 
>npm install -g composer-playground 

Ignorar los warnnings
Reiniciar (Hasta aquí todavía no tenemos Fabric instalado)

Para lanzar el entorno desde el terminal
composer-playground

Instalación de Fábric
---------------------

>mkdir ~/fabric-dev-servers && cd ~/fabric-dev-servers 

>curl -O https://raw.githubusercontent.com/hyperledger/composer-tools/master/packages/fabric-dev-servers/fabric-dev-servers.tar.gz 
>tar -xvf fabric-dev-servers.tar.gz

En este momento puede ser interesante instalar Kitematic
https://github.com/docker/kitematic/releases

Arranque de Fabric
------------------
>cd ~/fabric-dev-servers 
>./downloadFabric.sh

Arranque del Playground
-----------------------
>cd ~/fabric-dev-servers 
>./startFabric.sh 






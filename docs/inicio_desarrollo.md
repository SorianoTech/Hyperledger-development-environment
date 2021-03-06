# ¿Qué vamos a encontrar en este documento?
Los pasos necesarios para desplegar una red empresaria en un entorno de desarollo

* Paso 1: Creación de la estructura de red de negocio
* Paso 2: Definición de la red de negocio
* Paso 3: Generación del archivo de red de negocio (bna) en base a lo anterior
* Paso 4: Creación de credenciales de administrador
* Paso 5: Despliegue de la nueva red dentro de Fabric
* Paso 6: Publicamos un servidor REST para acceder a la Blockchain


Paso 1. Creamos la estructura de Red
------------------------------------

>yo hyperledger-composer:businessnetwork

Nos crea una estructura de archivos entera que nos permite dar de alta:
 - asset
 - Participantes
 - transcacciones

Paso 2. Nos vamos a "model" y editamos el fichero "*.cto" y ponemos el contenido siguiente:
--------------------------------------------------------------------------------------------

/**
 * My commodity trading network
 */
namespace org.acme.biznet
asset Commodity identified by tradingSymbol {
    o String tradingSymbol
    o String description
    o String mainExchange
    o Double quantity
    --> Trader owner
}
participant Trader identified by tradeId {
    o String tradeId
    o String firstName
    o String lastName
}
transaction Trade {
    --> Commodity commodity
    --> Trader newOwner
}

Paso 2. Nos vamos a "lib" y editamos el fichero "logic.js" y ponemos el contenido siguiente:
------------------------------------------------------------------------------------------

/**
 * Track the trade of a commodity from one trader to another
 * @param {org.acme.biznet.Trade} trade - the trade to be processed
 * @transaction
 */
async function tradeCommodity(trade) {
    trade.commodity.owner = trade.newOwner;
    let assetRegistry = await getAssetRegistry('org.acme.biznet.Commodity');
    await assetRegistry.update(trade.commodity);
}

Paso 3. Creamos un fichero para los permisos de nombre "permissions.acl"
------------------------------------------------------------------------

>touch permission.acl

Introducimos el siguiente contenido "Lista Blanca"

/**
 * Access control rules for tutorial-network
 */
rule Default {
    description: "Allow all participants access to all resources"
    participant: "ANY"
    operation: ALL
    resource: "org.acme.biznet.*"
    action: ALLOW
}

rule SystemACL {
  description:  "System ACL to permit all access"
  participant: "ANY"
  operation: ALL
  resource: "org.hyperledger.composer.system.**"
  action: ALLOW
}

Paso 3. Generación del fichero BNA
-----------------------------------
>composer archive create -t dir -n .

Paso 4. Creacionismos de Credenciales de Administrador
------------------------------------------------------
En “fabric-dev-servers” ejecutamos el script “createPeerAdminCard.sh”
Se nos crea “PeerAdmin@hlfv1”

Paso 5. Despliegue en composer para probar la red
------------------
Esto nos levantara el docker peer0.org

>composer network install --card PeerAdmin@hlfv1 --archiveFile <nombre>@0.0.1.bna

>composer network start --networkName tutorial-network --networkAdmin admin --networkAdminEnrollSecret adminpw --card PeerAdmin@hlfv1 --file networkadmin.card --networkVersion 0.0.1 

>composer card import --file networkadmin.card 
Aparece la card en $/.composer/cards

>composer network ping --card admin@tutorial-network

Paso 6. Generación del servidor REST
-----------------------------------
>composer-rest-server
composer-rest-server -c networkcarname -n never -a true -w true

donde "networkcarname" es el nombre de la card


A VECES ERROR CON COMPOSER-REST-SERVER
--------------------------------------
npm i ieee754 --save-dev





















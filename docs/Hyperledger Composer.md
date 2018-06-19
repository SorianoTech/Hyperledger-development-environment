# ¿Para que sirve?
Como Composer podremos diseñar nuestra red de negocio de una manera fácil y rápida.

# Alcance
En este documento podemos encontrar una explicacion de los tipos de fichero que podemos encotrar en Hyperledger Composer. El resultado de la modelización de todos estos ficheros nos creara un Bussiness Network definition (una definicion de negocio)

# Hyperledger Composer
Dentro del composer podemos encontrar los siguientes elmentos:

- Playground
- Ficheros de configuración
- Blockchain state storage
- Conection profile
- Asset
- Participant
- Identies
- Cards
- Querys
- Events
- Acces List
- History Registry


## Ficheros de configuración
 Estos ficheros nos permiten realizar busquedas de información dentro de la cadena. 

* Model File
``models/sample.cto``
Es el fichero que contiene la información del modelo de negocio creado, donde se identifican a los activos *participantes*, *transacciones* y *eventos*. También contiene el namespace que contiene la definiciones básicas de los elementos nombrados anteriormente.
 
* Script File
``lib/sample.js``
En este fichero definiremos toda la logica del negocio.[poner un ejemplo]

* Access Control
``permissions.acl``

* Query file
 ``query.qry``

![Imagen][folder]
## Playground 
Playground es el entorno web que nos crea composer para poder modelizar nuestra red bna de una forma más comoda.

Tenemos dos opciones:
 * Modelar nuestras red mediante playground
 * Modelar nuestra red generando una estructura de ficheros con yeoman.
 * 



![Imagen][logo]

[logo]: ../images/logo.jpg "Test de imagen"
[folder]: ../images/folder.png "Carpetas de la red de negocio"
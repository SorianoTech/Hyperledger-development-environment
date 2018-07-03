# ¿Para que sirve?
Como Composer podremos diseñar nuestra red de negocio de una manera fácil y rápida.

# Alcance
En este documento podemos encontrar una explicacion de los tipos de fichero que podemos encotrar en Hyperledger Composer. El resultado de la modelización de todos estos ficheros nos creara un Bussiness Network definition (una definicion de negocio).

Veremos como interactuan los diferentes elemnos que componen una red de empresaria. En nuestro caso la red de cadena de producción del vino.
- Activos
- Participantes
- Control de acceso
- Transacciones
- Eventos


# Hyperledger Composer
Dentro del composer podemos encontrar los siguientes elmentos:

- Playground
- Ficheros de configuración
- Blockchain state storage
- Conection profile
- Identies
- Cards
- Querys
- Acces List
- History Registry

Recursos: 
- Asset
- Participant
- Transactions
- Events
- Enum Type
- Conceps



## Ficheros de configuración
 Estos ficheros nos permiten realizar busquedas de información dentro de la cadena. 

* Model File
``models/sample.cto``
Es el fichero que contiene la información del modelo de negocio creado, donde se identifican a los activos *participantes*, *transacciones* y *eventos*. También contiene el namespace que contiene la definiciones básicas de los elementos nombrados anteriormente.
El fichero .cto deben incluir un único espacio de nombres y, al menos, una definición de recursos(activo,participante, etc...).
 
* Script File
``lib/sample.js``
En este fichero definiremos toda la logica del negocio.[poner un ejemplo]
Será como el smart contract, en el podemos decir lo que ocurre por ejemplo cuando la temperatura baja, por ejemplo si baja de 0 grados, la uva se congela y ya no vale.

* Access Control
``permissions.acl``
En este fichero definimos los permisos, por ejemplo un productor no tiene acceso al contrato entre el transportista y el cliente.

* Query file
 ``query.qry``

![Imagen][folder]

## Playground 
Playground es el entorno web que nos crea composer para poder modelizar nuestra red bna de una forma más comoda y sin necesidad de que la red se este ejecutando. Nos permite probar todas las funcionalidades que va a tener sin tener desplegada la red. Osea para mostrar una prueba piloto.

Playground se ejecuta o dentro de un navegador o contra Fabric para que valide las redes de pares.

Tenemos dos opciones:
 * Modelar nuestras red mediante playground
 * Modelar nuestra red generando una estructura de ficheros con yeoman.
 



[folder]: ../images/folder.png "Carpetas de la red de negocio"
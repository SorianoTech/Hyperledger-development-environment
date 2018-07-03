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


composer network start --card PeerAdmin@hlfv1 --networkAdmin admin --networkAdminEnrollSecret adminpw --archiveFile land-registry@0.0.1.bna --file networkadmin.card


#Herramientas fabric samples 1.1
Web de donde tira el enlace de abajo
https://raw.githubusercontent.com/hyperledger/fabric/master/scripts/bootstrap.sh
curl -sSL http://bit.ly/2ysbOFE | bash -s 1.2.0-rc1


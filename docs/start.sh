# Mata el rest server si esta activo
[ `ps -ef | grep composer-rest-server | grep -v grep | wc -l` -gt 0 ] && killproc composer-rest-server


cd ~/fabric-dev-servers
./startFabric.sh

cd ~/hypercert-network

#Instala el .bna
composer network install -a hypercert-network@0.0.2.bna -c PeerAdmin@hlfv1

# Inicia la red y levanta el docker
composer network start --networkName hypercert-network --networkAdmin admin --networkAdminEnrollSecret adminpw --card PeerAdmin@hlfv1 --file networkadmin.card --networkVersion 0.0.2
composer network start --networkName hypercert-network --networkAdmin admin --networkAdminEnrollSecret adminpw --card admin@hypercert-network --file networkadmin.card --networkVersion 0.0.2


# Levanta el rest-server como servicio
composer-rest-server -c admin@hypercert-network -n never -w true &

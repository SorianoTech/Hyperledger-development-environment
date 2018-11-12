#!/bin/bash

echo -e "\nStopping REST server...\n"
process=`ps -ef | grep composer-rest-server | grep -v grep | awk '{print $2}'`
[ -n "${process}" ] && kill ${process}

echo -e "\nStopping Fabric Dockers...\n"
activeDockers=`docker stats --no-stream | wc -l`

if [ ${activeDockers} -gt 1 ] ; then
    cd ~/fabric-dev-servers/fabric-scripts/hlfv1/composer
    docker-compose stop
fi

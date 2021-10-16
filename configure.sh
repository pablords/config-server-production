#!/bin/bash


if [ ! -d "jenkins" ]; then
    echo "criando diretorio jenkins"
    mkdir jenkins
fi

if [ ! -d "portainer_data" ]; then
    echo "criando diretorio portainer_data"
    mkdir portainer_data
fi


echo export CONFIG_PROD_HOME=~/config-server-production >> ~/.bashrc
export PORTAINER_HOME=~/config-server-production/portainer_data
export JEKINS_HOME=~/config-server-production/jenkins

sudo setfacl -R -d -m o::rwx $JEKINS_HOME

echo -n dev123456 > ./portainer_data/senha-portainer

source ~/.bashrc

docker-compose up -d
#!/bin/bash


if [ ! -d "jenkins" ]; then
    echo "criando diretorio jenkins"
    mkdir jenkins
fi

cp .env.example .env

echo export CONFIG_PROD_HOME=~/config-server-production >> ~/.bashrc
echo export JEKINS_HOME=~/config-server-production >> ~/.bashrc

sudo setfacl -R -d -m o::rwx $JEKINS_HOME


source ~/.bashrc

docker-compose up -d
#!/bin/bash


mkdir jenkins



export PORTAINER_HOME=~/config-server-production/portainer_data
export JEKINS_HOME=~/config-server-production/jenkins

sudo setfacl -R -d -m o::rwx $JEKINS_HOME

echo -n dev123456 > ./portainer_data/senha-portainer

source ~/.bashrc

docker-compose up -d
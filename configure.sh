#!/bin/bash


mkdir jenkins


export HTTP_HOME=~/devops-server/http
export PORTAINER_HOME=~/devops-server/portainer_data
export JEKINS_HOME=~/devops-server/jenkins

sudo setfacl -R -d -m o::rwx $JEKINS_HOME

echo -n dev123456 > ./portainer_data/senha-portainer

source ~/.bashrc

docker-compose up -d
#!/bin/bash
read -p "Digite o Container: " container
docker-compose stop "$container"

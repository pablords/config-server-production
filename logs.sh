#!/bin/bash
read -p "Digite o Container: " container
docker-compose -ft --tail=1000 "$container"

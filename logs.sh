#!/bin/bash
read -p "Digite o Container: " container
docker-compose logs -ft --tail=1000 "$container"

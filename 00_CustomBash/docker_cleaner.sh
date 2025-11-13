#!/bin/bash

docker container prune -f
docker network prune -f
docker volume prune -f
docker builder prune -f
find /var/lib/docker/containers/ -type f -name "*-json.log" -exec truncate -s 0 {} \;
docker system df

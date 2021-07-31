#!/bin/bash

docker-compose exec nginx sh -c "nginx -t"
docker-compose exec nginx sh -c "nginx -s reload"
echo "Nginx reloaded!"

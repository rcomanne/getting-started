#!/bin/bash

echo 'Starting all components via docker-compose'

echo ''
echo 'Starting Traefik...'
cd traefik
docker-compose up --detach --remove-orphans
cd -
echo 'Started Traefik'
echo 'Go to Traefik dashboard --> traefik.docker.localhost:8080'

echo ''
echo 'Starting Vault...'
cd vault
docker-compose up --detach --remove-orphans
cd -
echo 'Started Vault'
echo 'Go to Vault UI --> vault.docker.localhost:8200'
echo 'Vault root token = root_token'

echo ''
echo 'Starting the ELK stack'
cd elk
docker-compose up --detach --remove-orphans
cd -
echo 'Started the ELK stack'
echo 'Go to Kibana --> kibana.docker.localhost:5601'

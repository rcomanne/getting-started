#!/bin/bash

echo 'Stopping all components via docker-compose'

echo ''
echo 'Stopping Traefik...'
cd traefik
docker-compose down
cd -
echo 'Stopped Traefik'

echo ''
echo 'Stopping Vault...'
cd vault
docker-compose down
cd -
echo 'Stopped Vault'

echo ''
echo 'Stopping the ELK stack'
cd elk
docker-compose down
cd -
echo 'Stopped the ELK stack'

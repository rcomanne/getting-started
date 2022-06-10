# getting-started

## Requirements
1. [Install Docker](https://www.docker.com/get-started/)
1. [Install docker-compose](https://docs.docker.com/compose/install/)
1. [Install Vault CLI](https://learn.hashicorp.com/tutorials/vault/getting-started-install?in=vault/getting-started)

## ELK
Contains a docker-compose file for the ELK stack.

### Run it
```bash
$ cd elk
$ docker-compose up
```

### Access
Kibana
`kibana.docker.localhost:5601`
`localhost:5601`

## Traefik
Traefik will act as a reverse proxy, providing routing to all Docker images that you want to run.  
By default, it will only run Traefik and a `whoami` container.  

### Run
```bash
$ cd traefik
$ docker-compose up
```
### Access
#### Traefik 
`traefik.docker.localhost:8080`
`localhost:8080`

#### Whoami
`whoami.docker.localhost`

## Vault
Vault will start in development mode, available at port 8200 with root token value `root_token`
### Run
```bash
$ cd vault
$ docker-compose up
```

### Access
Vault UI 
`localhost:8200`
`vault.docker.localhost:8200`

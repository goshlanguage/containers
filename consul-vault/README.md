Vault
===

This is an example of bringing up Vault using Consul as a backend. Currently, only docker-compose is supported, but I intend to add a Kubernetes example as well.

Production level improvements such as a quorum for Consul and TLS w/ perhaps certbot obtaining a cert is also important.

Setup
===

Have docker-compose installed

Mac OS X (w/ Brew)

```sh
brew install docker-compose
```

Debian/Ubuntu

```sh
apt-get install docker-compose
```

Next, setup the following folders in your home dir, or create your own folders for vault and consul's bind mounts, and edit docker-compose.yml to update ~/volumes/consul/* and ~/volumes/vault/*

```sh
mkdir -p ~/volumes/consul/assets/conf.d;
mkdir -p ~/volumes/vault/assets/conf.d
```

Running
===

Bring up the deployment first:
```sh
docker-compose up -d
```

Next, you need to exec into the Vault container, run init and unseal:

```sh
docker ps
CONTAINER ID        IMAGE                COMMAND                  CREATED             STATUS              PORTS                                                                                                    NAMES
fe6df792913b        consulvault_vault    "/vault/vault serv..."   2 minutes ago      Up 2 minutes       0.0.0.0:8200->8200/tcp                                                                                   consulvault_vault_1

docker exec -ti consulvault_vault_1 /bin/bash


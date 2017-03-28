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
root@vault:/# /vault/vault unseal
Error checking seal status: Error making API request.

URL: GET http://127.0.0.1:8200/v1/sys/seal-status
Code: 400. Errors:

* server is not yet initialized
root@vault:/# vault/vault init
Unseal Key 1: maynNEF6iU0ODU/F6wl2Ab66rFFPqqN/74E0CDT2GxUB
Unseal Key 2: rGDcdz+RETXxWCg9JQlQeMRWGKd4s5EIglU0SnFiGdsC
Unseal Key 3: 3oGG4QfvtZ6ObZYYzynhQZdfftXbOB/iTqHYfKl0CXoD
Unseal Key 4: 3+rdti2K8hWJ0JYryPJncLWTDavWVJTn8lSnthVx57IE
Unseal Key 5: rQuHIBX0Vr725SgOItLWSeaaa9l13xoNPqBLgM1n9xMF
Initial Root Token: 0093810d-3186-53b1-115d-8dab9cb33056



Vault initialized with 5 keys and a key threshold of 3. Please
securely distribute the above keys. When the Vault is re-sealed,
restarted, or stopped, you must provide at least 3 of these keys
to unseal it again.

Vault does not store the master key. Without at least 3 keys,
your Vault will remain permanently sealed.
root@vault:/# vault/vault unseal
Key (will be hidden):
Sealed: true
Key Shares: 5
Key Threshold: 3
Unseal Progress: 1
root@vault:/# vault/vault unseal
Key (will be hidden):
Sealed: true
Key Shares: 5
Key Threshold: 3
Unseal Progress: 2
root@vault:/# vault/vault unseal
Key (will be hidden):

```

Next, check your Consul UI to ensure that the vault service has changed from a failed service to a passing service:

http://localhost:8500/ui/

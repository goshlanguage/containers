Running w/ Self signed cert
===

When running, be sure to set the VAULT_SKIP_VERIFY environment variable, as the certificate generated with this image is not a valid cert.

ex:
```sh
docker run -d --name vault -e VAULT_SKIP_VERIFY=true vault
```

Running w/ your own cert
===
To add a valid certificate, replace the cert and key files, and add a ca entry in files/etc/vault/config.json with the path in which you copy said files to.


Getting started
===
To get started, you will need to initial vault, which can be done either from an exec shell, or by just exec'ing vault init:

Exec shell
```
<implied docker exec -ti vault /bin/sh>
/ # vault init
```

or

```
$ docker exec vault /go/bin/vault init
```

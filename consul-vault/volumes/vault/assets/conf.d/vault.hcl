backend "consul" {
  address = "consul_1:8500"
  address = "consul_2:8500"
  address = "consul_3:8500"
  path = "vault"
}

listener "tcp" {
 address = "0.0.0.0:8200"
 tls_disable = 1
}

disable_mlock = true

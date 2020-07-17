provider "kubernetes" {
  load_config_file = "false"

  host = "https://192.168.64.3:8443"

  client_certificate     = "${file("~/.minikube/profiles/minikube/client.crt")}"
  client_key             = "${file("~/.minikube/profiles/minikube/client.key")}"
  cluster_ca_certificate = "${file("~/.minikube/ca.crt")}"
}
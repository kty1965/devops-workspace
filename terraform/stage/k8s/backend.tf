terraform {
  backend "local" {
    path = "k8s-terraform.tfstate"
  }
}
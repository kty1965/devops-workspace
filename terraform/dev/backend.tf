terraform {
  backend "local" {
    path = "dev-terraform.tfstate"
  }
  required_version = ">= 0.12"
}
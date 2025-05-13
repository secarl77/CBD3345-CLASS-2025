terraform {
  required_version = ">= 1.0"
  backend "remote" {
    organization = "tu-organizacion"  # <-- cámbialo por el nombre de tu organización en Terraform Cloud

    workspaces {
      name = "develop"
    }
  }
}

provider "null" {}

resource "null_resource" "example" {
  triggers = {
    message = "Hello from develop!"
  }
}


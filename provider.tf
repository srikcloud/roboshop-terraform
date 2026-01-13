provider "azurerm" {
     features {}
     subscription_id = "f7fcf972-1a3d-456c-a347-914d12f8c308"
}

terraform {
  backend "azurerm" {}
}

provider "vault" {
 address = "http://vault.srikanth553.store:8200"
 token = var.token
}
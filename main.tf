terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.105.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource-group-storage" {
  source  = "KaPany322/resource-group-storage/azurerm"
  version = "1.0.0"
}
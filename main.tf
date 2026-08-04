terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group_storage" {
  source  = "Anastasiia-Chikrizova/resource_group_storage/azurerm"
  version = "1.0.0"
}

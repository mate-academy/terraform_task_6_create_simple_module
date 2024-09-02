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

module "resource_group_storage" {
  source  = "salaxambar/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name      = "example-resources"
  location                 = "East US"
  storage_account_name     = "panchak1"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

output "storage_account_primary_endpoint" {
  value = module.resource_group_storage.storage_account_primary_endpoint
}


terraform {
  required_version = ">= 1.0.0"
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
  source  = "Clem97121/resourcegroupstorage/azureem"
  version = "1.0.3"

  resource_group_name      = "rg-production-env"
  location                 = "East US"
  storage_account_name     = "stprodstorageacc9876"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

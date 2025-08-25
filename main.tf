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
  source  = "leoleiden/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name              = "my-resource-group"
  location                         = "East US"
  storage_account_name             = "mystorageacc0123"
  storage_account_tier             = var.storage_account_tier
  storage_account_replication_type = var.storage_account_replication_type
}

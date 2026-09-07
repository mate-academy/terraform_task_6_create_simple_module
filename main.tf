terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group_storage" {
  source                           = "./modules/resource_group_storage" # Use local path, not remote registry
  resource_group_name              = var.resource_group_name
  location                         = var.location
  storage_account_name             = var.storage_account_name
  storage_account_tier             = var.storage_account_tier
  storage_account_replication_type = var.storage_account_replication_type
}
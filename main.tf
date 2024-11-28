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

output "resource_group_id" {
  value = module.resource_group_storage.resource_group_id
}

output "storage_account_id" {
  value = module.resource_group_storage.storage_account_id
}

module "resource_group_storage" {
  source               = "cth-usq/resource_group_storage/azurerm"
  version              = "1.0.1"
  resource_group_name  = "my-resource-group"
  location             = "East US"
  storage_account_name = "mystorageaccount771"
}

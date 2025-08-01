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
  source  = "registry.terraform.io/leoleiden/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name              = "my-awesome-rg-from-module"
  location                         = "East US"
  storage_account_name             = "myawesomestorageacc12345"
  storage_account_tier             = "Standard"
  storage_account_replication_type = "LRS"
}

output "resource_group_id_from_module" {
  description = "The ID of the resource group created by the module."
  value       = module.resource_group_storage.resource_group_id
}

output "storage_account_primary_access_key_from_module" {
  description = "The primary access key for the storage account created by the module."
  value       = module.resource_group_storage.storage_account_primary_access_key
  sensitive   = true
}
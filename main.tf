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

module "azure_storage_module" {
  source  = "goldbergnik1993-cloud/resource-group-storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "rg-final-task-check"
  location            = "West Europe"

  storage_account_name = "goldbergstorage2026final"
}

output "storage_id" {
  value = module.azure_storage_module.storage_account_id
}
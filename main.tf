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
  source               = "Darya-Savchenko/resource_group_storage/azurerm"
  version              = "1.0.0"
  resource_group_name  = "task6-resource-group"
  storage_account_name = "task6storageaccount"
  location             = "West US"
}


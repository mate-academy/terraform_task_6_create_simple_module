terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group_storage" {
  source  = "AndS9/resourcegroupstorage/azurerm"
  version = "1.0.3"

  resource_group_name  = "group_from_module"
  location             = "Sweden Central"
  storage_account_name = "andriis9storageaccount"
}
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
  source  = "vanyas627/resource-group-storage/azurerm"
  version = "1.0.1"

  resource_group_name  = var.resource_group_name
  storage_account_name = var.storage_account_name
  location             = var.location
}
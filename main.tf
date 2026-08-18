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
  source  = "maxmlv/resource_group_storage/azurerm"
  version = "1.0.0"

  # insert required variables here
  resource_group_name  = "my-resource-group"
  storage_account_name = "mystorageaccount123mm"
  location             = "westeurope"
}
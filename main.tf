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
  source  = "Kagerou4649/resource_group_storage/azurerm"
  version = "1.0.1"

  resource_group_name  = "specific-resource-group"
  storage_account_name = "specificstorageaccount"
  location             = "West US"
}

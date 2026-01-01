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
  source  = "maximprysyazhnikov/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "rg-module-demo"
  location             = "westeurope"
  storage_account_name = "demostoragemodule01"
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.8.0"
    }
  }
}

provider "azurerm" {
  features {

  }
}


module "resource_group_storage" {
  source               = "./modules/resource_group_storage"
  resource_group_name  = "mate-resources1"
  storage_account_name = "matestorage3639"
  location             = "West US"
}
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group_storage" {
  source  = "app.terraform.io/1ntact/resource_group_storage/azurerm"
  version = "1.0.1"

  resource_group_name      = "my-resource-group"
  location                 = "West Europe"
  storage_account_name     = "intactstorage20260811"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

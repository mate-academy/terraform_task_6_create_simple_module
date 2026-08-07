terraform {
  required_version = ">= 1.0.0"
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
  source  = "app.terraform.io/Clem97121/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name      = var.rg_name
  location                 = "East US"
  storage_account_name     = var.storage_name
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

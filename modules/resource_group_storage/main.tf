terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.115.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "main" {
  name     = var.res_gr_name
  location = var.region
}

resource "azurerm_storage_account" "main" {
  name                     = local.strg_acc_name
  location                 = var.region
  resource_group_name      = var.res_gr_name
  account_tier             = "Premium"
  access_tier              = "Hot"
  account_kind             = "StorageV2"
  account_replication_type = "LRS"
}

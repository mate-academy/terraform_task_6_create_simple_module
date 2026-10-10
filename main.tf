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
  source  = "Somewellich/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "rg-task6-module"
  storage_account_name = "task6fed2026"
  location             = "East US"
}
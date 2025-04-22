terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group" {
  source = "./modules/resource_group_storage"
  resource_name = "resource_group_1"
  storage_account_name  = "beliardemodemo123"
  location = "East US"
}

module "resource_group_2" {
  source = "./modules/resource_group_storage"
  resource_name = "resource_group_2"
  storage_account_name  = "beliardemodemo12345"
  location = "East US"
}
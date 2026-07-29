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
  skip_provider_registration = true
}

module "resource_group_storage" {
  source = "git::https://github.com/Baranotik15/terraform-azurerm-resource_group_storage.git?ref=v1.0.0"

  resource_group_name  = "rg-task6-module-demo"
  location             = "West Europe"
  storage_account_name = "sttask6moduledemo"
}

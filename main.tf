terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.114"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group_storage" {
  source  = "app.terraform.io/dimonalek/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name = var.resource_group_name
  location            = var.location
  storage_name_prefix = var.storage_name_prefix
  account_tier        = var.account_tier
  account_replication = var.account_replication
  tags                = var.tags
}

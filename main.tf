terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.105.0"
    }
  }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = true
    }
  }
}

module "resource_group_storage" {
  source               = "L1mbxbx/resource_group_storage/azurerm"
  version              = "1.0.0"
  location             = "West Europe"
  resource_group_name  = "limbx-terraform-rg"
  storage_account_name = "limbxterraformstorage100"
}

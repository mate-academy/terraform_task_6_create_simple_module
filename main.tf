terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.3.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "e522e345-6958-4412-ac50-2288577f1a0a"
}

module "resource_group_storage" {
  source = "github.com/OKochubeii/terraform-azurerm-resource_group_storage"

  resource_group_name  = "example-resources"
  location             = "Poland Central"
  storage_account_name = "storageaccountname"
}

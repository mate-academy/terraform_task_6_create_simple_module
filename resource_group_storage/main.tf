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
}

module "rg_storage" {
  source  = "github.com/chornoknysh/terraform-azurerm-resource_group_storage"
  version = "1.0.0"

  resource_group_name  = "example-rg"
  location             = "West Europe"
  storage_account_name = "examplestorageacct123"
}

output "resource_group_id" {
  value = module.rg_storage.resource_group_id
}

output "storage_account_id" {
  value = module.rg_storage.storage_account_id
}
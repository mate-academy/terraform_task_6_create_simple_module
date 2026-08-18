terraform {
  required_version = ">= 1.8.4"
  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
  skip_provider_registration = true
}

module "resource_group_storage" {
  source = "./modules/resource_group_storage"
  
  resource_group_name  = "rg-module-test"
  location             = "eastus"
  storage_account_name = "mystoragemodule999"
  container_name       = "moduledata"
  
  tags = {
    Environment = "test"
    Module      = "true"
  }
}

output "storage_account_name" {
  value = module.resource_group_storage.storage_account_name
}

output "resource_group_name" {
  value = module.resource_group_storage.resource_group_name
}
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
  use_oidc                   = true
  skip_provider_registration = true
}

module "resource_group_storage" {
  source = "git::https://github.com/ll221/terraform-azurerm-resource_group_storage.git?ref=v1.0.1"

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
  description = "Name of the created Storage Account"
  value       = module.resource_group_storage.storage_account_name
}

output "resource_group_name" {
  description = "Name of the created Resource Group"
  value       = module.resource_group_storage.resource_group_name
}

output "container_name" {
  description = "Name of the created Blob Container"
  value       = module.resource_group_storage.container_name
}

   output "primary_blob_endpoint" {
     description = "Primary endpoint for Blob storage"
     value       = "https://${module.resource_group_storage.storage_account_name}.blob.core.windows.net/"
   }

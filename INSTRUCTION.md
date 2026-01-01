# Terraform AzureRM Resource Group Storage Module

This Terraform module creates:
- Azure Resource Group
- Azure Storage Account

## Requirements
- Terraform >= 1.5.0
- AzureRM provider

## Usage

```hcl
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "rg_storage" {
  source  = "maximprysyazhnikov/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "rg-example"
  location             = "northeurope"
  storage_account_name = "examplestorage123"
}

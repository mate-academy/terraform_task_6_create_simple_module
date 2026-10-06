# Terraform Azure Resource Group and Storage Account Module

This Terraform module creates an Azure Resource Group and an Azure Storage Account.

## Requirements

- Terraform >= 1.8.4
- AzureRM provider >= 3.105.0
- Azure subscription

## Inputs

- resource_group_name - Name of the Azure Resource Group.
- location - Azure region.
- storage_account_name - Name of the Azure Storage Account.

## Outputs

- resource_group_id
- resource_group_name
- storage_account_id
- storage_account_name
- storage_account_primary_blob_endpoint

## Usage

Example module configuration:

module "resource_group_storage " {
  source  = "tetianamohorian23/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "my-resource-group"
  location             = "swedencentral"
  storage_account_name = "mystorageaccount2026"
}

## Description

The module creates:

1. An Azure Resource Group.
2. An Azure Storage Account.

The Storage Account uses Standard performance and locally redundant storage (LRS).

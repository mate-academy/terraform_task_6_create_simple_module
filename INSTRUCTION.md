# Terraform Module: Azure Resource Group and Storage Account

This module is designed to create an Azure Resource Group and a Storage Account.

## Usage

To use this module, copy the code below and paste it into your root Terraform configuration:

module "resource_group_storage" {
  source = "https://github.com/vladyslavgusakovskiy/terraform-azurerm-resource_group_storage"

  resource_group_name  = "my-resource-group"
  location             = "East US"
  storage_account_name = "myuniquestorageacct123"
}

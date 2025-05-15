provider "azurerm" {
  features {}
}

module "resource_group_storage" {
  source  = "vhurna/resource-group-storage/azurerm"
  version = "1.2.0"

  resource_group_name  = "prod-resources"
  storage_account_name = "prodstorageacct"
  location             = "West US"
}
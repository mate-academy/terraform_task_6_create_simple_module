provider "azurerm" {
  features {}
}

module "resource_group_storage" {
  source  = "Loki-sudo007/resource-group-storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "specific-resource-group"
  storage_account_name = "specificstorage123"
  location             = "West US"
}
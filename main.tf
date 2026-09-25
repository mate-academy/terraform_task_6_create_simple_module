provider "azurerm" {
  features {}
}


module "resource_group_storage" {
  source               = "kdacc/resource-group-storage/azurerm"
  version              = "1.0.0"
  resource_group_name  = "specific-resource-group"
  storage_account_name = "specificstorageaccount"
  location             = "West US"
}
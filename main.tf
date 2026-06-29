provider "azurerm" {
  features {}
}

module "resource_group_storage" {
  source  = "volodymyrlp/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name  = var.resource_group_name
  location             = var.location
  storage_account_name = var.storage_account_name
  tags                 = var.tags
}

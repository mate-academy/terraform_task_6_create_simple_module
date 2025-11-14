provider "azurerm" {
  features {}
}

module "resource_group_storage" {
  source = "./modules/resource_group_storage"
}

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

module "resource_group_storage" {
  source               = "Losiev/resource_group_storage/azurerm"
  version              = "1.0.0"
  resource_group_name  = "task6-rg"
  location             = "East US"
  storage_account_name = "task6sacc"
}

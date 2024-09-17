provider "azurerm" {
  features {}
  subscription_id = "d345fa5d-4fda-4d1e-abf1-c8a7e4fb0576"
  tenant_id       = "e84abfc3-c8c5-4892-8f6d-942a64e5bfc4"
}

module "resource_group_storage" {
  source = "Serveladik/resource_group_storage/azurerm"

  resource_group_name  = var.resource_group_name
  location             = var.location
  storage_account_name = var.storage_account_name
}

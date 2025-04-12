module "resource_group_storage" {
  source               = "Rozdorozhnii/resource_group_storage/azurerm"
  resource_group_name  = "matetask-6-rg"
  location             = "East US"
  storage_account_name = "matetaskstoracc"
  version              = "1.0.0"
}
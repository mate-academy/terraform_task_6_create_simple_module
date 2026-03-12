module "resource_group_storage" {
  source                  = "dimak20/resource-group-storage/azurerm"
  version                 = "1.0.1"
  resource_group_name     = "mytaskmodule-rg"
  resource_group_location = "West Europe"
  storage_account_name    = "mytaskmodule-sa"
  storage_container_name  = "mytaskmodule-container"
}
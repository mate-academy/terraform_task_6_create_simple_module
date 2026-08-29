module "resource_group_storage" {
  source               = "eugeneermakov696/resource_group_storage/azurerm"
  version              = "1.0.0"
  resource_group_name  = "rg12541"
  location             = "West Europe"
  storage_account_name = "somestorageacct12541"
}
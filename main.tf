module "resource_group_storage" {
  source  = "Petliuk/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "task6-resources"
  storage_account_name = "task6storagepetliuk"
  location             = "Sweden Central"
}

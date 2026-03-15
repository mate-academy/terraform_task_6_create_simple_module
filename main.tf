module "resource_group_storage" {
  source  = "TsykalanovDima/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "mate-academy-rg"
  location             = "westeurope"
  storage_account_name = "mateacademystorage01"
  account_tier         = "Standard"
  account_replication  = "LRS"
}

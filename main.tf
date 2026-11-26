module "resource_group_storage" {
  source  = "daniilshpak/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "development-rg"
  storage_account_name = "superveryimportantiles"
  location             = "Sweden Central"
  environment          = "development"
}
module "resource_group_storage" {
  source = "./modules/resource_group_storage"

  resource_group_name  = "mate-academy-rg"
  location             = "westeurope"
  storage_account_name = "mateacademystorage01"
  account_tier         = "Standard"
  account_replication  = "LRS"
}

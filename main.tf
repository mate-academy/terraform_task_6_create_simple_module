module "resource_group_storage" {
  source  = "aleksandrmajlo/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name      = var.resource_group_name
  location                 = var.location
  storage_account_name     = var.storage_account_name
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  tags                     = var.tags
}

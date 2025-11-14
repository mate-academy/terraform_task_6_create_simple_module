module "resource_group_storage" {
  source = "git::https://github.com/kenu21/terraform-azurerm-resource_group_storage.git?ref=v1.0.1"

  resource_group_name      = var.resource_group_name
  location                 = var.location
  storage_account_name     = var.storage_account_name
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

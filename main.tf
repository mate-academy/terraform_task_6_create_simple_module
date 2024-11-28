module "resource_group_storage" {
  source  = "yaroslavyvk/resource_group_storage/azurerm"
  version = "v1.1.0"

  resource_group_name  = var.resource_group_name
  location             = var.location
  storage_account_name = var.storage_account_name
}

output "resource_group_id" {
  value = module.resource_group_storage.resource_group_id
}

output "storage_account_id" {
  value = module.resource_group_storage.storage_account_id
}

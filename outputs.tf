output "resource_group_name" {
  description = "Name of the created resource group"
  value       = module.resource_group_storage.resource_group_name
}

output "resource_group_id" {
  description = "ID of the created resource group"
  value       = module.resource_group_storage.resource_group_id
}

output "storage_account_name" {
  description = "Name of the created storage account"
  value       = module.resource_group_storage.storage_account_name
}

output "storage_account_id" {
  description = "ID of the created storage account"
  value       = module.resource_group_storage.storage_account_id
}

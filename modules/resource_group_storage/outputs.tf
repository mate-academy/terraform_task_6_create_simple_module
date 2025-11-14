output "resource_group_name" {
  description = "The name of the created resource group"
  value       = module.resource_group_storage.resource_group_name
}

output "storage_account_name" {
  description = "The name of the created storage account"
  value       = module.resource_group_storage.storage_account_name
}

output "storage_account_primary_web_endpoint" {
  description = "The primary web endpoint of the storage account"
  value       = module.resource_group_storage.storage_account_primary_web_endpoint
}

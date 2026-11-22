output "resource_group_name" {
  description = "Name of the Azure resource group created by the module."
  value       = module.resource_group_storage.resource_group_name
}

output "resource_group_id" {
  description = "ID of the Azure resource group created by the module."
  value       = module.resource_group_storage.resource_group_id
}

output "storage_account_name" {
  description = "Name of the Azure storage account created by the module."
  value       = module.resource_group_storage.storage_account_name
}

output "storage_account_id" {
  description = "ID of the Azure storage account created by the module."
  value       = module.resource_group_storage.storage_account_id
}

output "storage_account_primary_endpoint" {
  description = "Primary blob endpoint of the storage account."
  value       = module.resource_group_storage.storage_account_primary_endpoint
}

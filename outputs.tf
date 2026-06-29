output "resource_group_name" {
  description = "Name of the resource group created by the module."
  value       = module.resource_group_storage.resource_group_name
}

output "storage_account_name" {
  description = "Name of the storage account created by the module."
  value       = module.resource_group_storage.storage_account_name
}

output "primary_blob_endpoint" {
  description = "Primary blob service endpoint of the storage account."
  value       = module.resource_group_storage.primary_blob_endpoint
}

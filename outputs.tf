output "resource_group_id" {
  description = "The ID of the created resource group."
  value       = module.resource_group_storage.resource_group_id
}

output "storage_account_id" {
  description = "The ID of the created storage account."
  value       = module.resource_group_storage.storage_account_id
}

output "storage_account_primary_blob_endpoint" {
  description = "The primary blob endpoint of the created storage account."
  value       = module.resource_group_storage.primary_blob_endpoint
}

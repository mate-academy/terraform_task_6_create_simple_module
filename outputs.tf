output "resource_group_id" {
  description = "ID returned by the resource_group_storage module."
  value       = module.resource_group_storage.resource_group_id
}

output "storage_account_id" {
  description = "ID returned by the resource_group_storage module."
  value       = module.resource_group_storage.storage_account_id
}

output "storage_account_primary_blob_endpoint" {
  description = "Primary Blob endpoint returned by the module."
  value       = module.resource_group_storage.storage_account_primary_blob_endpoint
}

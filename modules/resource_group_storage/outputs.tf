output "my_storage_id" {
  value = module.resource_group_storage.storage_account_id
}

output "blob_endpoint" {
  value = module.resource_group_storage.storage_account_primary_blob_endpoint
}
output "resource_group_id" {
  value = module.resource_group_storage.resource_group_id
}

output "resource_group_name" {
  value = module.resource_group_storage.resource_group_name
}

output "storage_account_id" {
  value = module.resource_group_storage.storage_account_id
}

output "storage_account_name" {
  value = module.resource_group_storage.storage_account_name
}

output "storage_account_primary_blob_endpoint" {
  value = module.resource_group_storage.storage_account_primary_blob_endpoint
}

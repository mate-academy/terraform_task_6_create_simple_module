output "final_rg_id" {
  value = module.resource_group_storage.resource_group_id
}

output "final_storage_endpoint" {
  value = module.resource_group_storage.storage_account_primary_blob_endpoint
}


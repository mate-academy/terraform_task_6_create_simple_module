output "resource_group_id" {
  description = "ID of the Azure resource group created by the module."
  value       = module.resource_group_storage.resource_group_id
}

output "storage_account_id" {
  description = "ID of the Azure storage account created by the module."
  value       = module.resource_group_storage.storage_account_id
}

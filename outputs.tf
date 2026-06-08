output "resource_group_id" {
  description = "Created Resource Group ID."
  value       = module.resource_group_storage.resource_group_id
}

output "resource_group_name" {
  description = "Created Resource Group name."
  value       = module.resource_group_storage.resource_group_name
}

output "storage_account_id" {
  description = "Created Storage Account ID."
  value       = module.resource_group_storage.storage_account_id
}

output "storage_account_name" {
  description = "Created Storage Account name."
  value       = module.resource_group_storage.storage_account_name
}

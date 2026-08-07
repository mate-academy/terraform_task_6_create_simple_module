output "resource_group_id" {
  value       = azurerm_resource_group.rg.id
  description = "The ID of the created Resource Group."
}

output "storage_account_id" {
  value       = azurerm_storage_account.sa.id
  description = "The ID of the created Storage Account."
}

output "storage_account_primary_blob_endpoint" {
  value       = azurerm_storage_account.sa.primary_blob_endpoint
  description = "The primary blob endpoint of the Storage Account."
}
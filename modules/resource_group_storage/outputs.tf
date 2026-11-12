output "resource_group_id" {
  description = "ID of the resource group."
  value       = azurerm_resource_group.this.id
}

output "storage_account_id" {
  description = "ID of the storage account."
  value       = azurerm_storage_account.this.id
}

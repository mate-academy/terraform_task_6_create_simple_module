output "resource_group_name" {
  description = "The name of the created resource group"
  value       = azurerm_resource_group.this.name
}

output "storage_account_name" {
  description = "The name of the created storage account"
  value       = azurerm_storage_account.this.name
}

output "storage_account_id" {
  description = "The ID of the storage account"
  value       = azurerm_storage_account.this.id
}
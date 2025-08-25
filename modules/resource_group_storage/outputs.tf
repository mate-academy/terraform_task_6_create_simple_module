output "resource_group_id" {
  value       = azurerm_resource_group.rg.id
  description = "The ID of the created resource group"
}

output "storage_account_id" {
  value       = azurerm_storage_account.storage.id
  description = "The ID of the created storage account"
}

output "resource_group_name" {
  value = azurerm_resource_group.this.name
}

output "storage_account_name" {
  value = azurerm_storage_account.this.name
}

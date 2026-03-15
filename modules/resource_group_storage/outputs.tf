output "resource_group_id" {
  description = "The ID of the created resource group."
  value       = azurerm_resource_group.this.id
}

output "resource_group_name" {
  description = "The name of the created resource group."
  value       = azurerm_resource_group.this.name
}

output "storage_account_id" {
  description = "The ID of the created storage account."
  value       = azurerm_storage_account.this.id
}

output "storage_account_name" {
  description = "The name of the created storage account."
  value       = azurerm_storage_account.this.name
}

output "primary_blob_endpoint" {
  description = "The primary blob endpoint of the created storage account."
  value       = azurerm_storage_account.this.primary_blob_endpoint
}

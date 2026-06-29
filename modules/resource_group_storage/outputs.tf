output "resource_group_name" {
  description = "Name of the created resource group."
  value       = azurerm_resource_group.this.name
}

output "resource_group_id" {
  description = "ID of the created resource group."
  value       = azurerm_resource_group.this.id
}

output "storage_account_name" {
  description = "Name of the created storage account."
  value       = azurerm_storage_account.this.name
}

output "storage_account_id" {
  description = "ID of the created storage account."
  value       = azurerm_storage_account.this.id
}

output "primary_blob_endpoint" {
  description = "Primary blob service endpoint of the storage account."
  value       = azurerm_storage_account.this.primary_blob_endpoint
}

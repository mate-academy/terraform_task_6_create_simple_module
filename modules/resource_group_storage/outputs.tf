output "resource_group_id" {
  description = "The ID of the resource group."
  value       = azurerm_resource_group.example.id
}

output "storage_account_id" {
  description = "The ID of the storage account."
  value       = azurerm_storage_account.example.id
}

output "location" {
  description = "The location of the resource group and storage account."
  value       = azurerm_resource_group.example.location
}
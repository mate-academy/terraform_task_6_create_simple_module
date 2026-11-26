output "azurerm_resource_group_name" {
  description = "Name of the created Resource Groupt"
  value       = azurerm_resource_group.example.name
}

output "azurerm_resource_group_location" {
  description = "Location of the created Resource Group"
  value       = azurerm_resource_group.example.location
}

output "azurerm_storage_account_id" {
  description = "ID of the created Storage Account"
  value       = azurerm_storage_account.example.id
}
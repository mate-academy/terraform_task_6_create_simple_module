output "resource_group_name" {
  description = "Name of the created Resource Group"
  value       = azurerm_resource_group.this.name
}

output "resource_group_location" {
  description = "Location of the created Resource Group"
  value       = azurerm_resource_group.this.location
}

output "storage_account_name" {
  description = "Name of the created Storage Account"
  value       = azurerm_storage_account.this.name
}

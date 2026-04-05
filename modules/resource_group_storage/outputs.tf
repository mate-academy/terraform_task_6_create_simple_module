output "resource_group_id" {
  description = "ID созданной группы ресурсов"
  value       = azurerm_resource_group.rg.id
}

output "storage_account_id" {
  description = "ID созданного Storage Account"
  value       = azurerm_storage_account.storage.id
}

output "storage_primary_endpoints" {
  description = "Эндпоинты созданного хранилища"
  value       = azurerm_storage_account.storage.primary_web_endpoint
}

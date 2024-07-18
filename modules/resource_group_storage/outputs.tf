output "resource_group_id" {
  value     = azurerm_resource_group.rg.id
  sensitive = true
}

output "storage_account_id" {
  value     = azurerm_storage_account.storage_account.id
  sensitive = true
}

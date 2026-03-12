output "resource_group_id" {
  value = azurerm_resource_group.storage_group.id
}
output "storage_account_id" {
  value = azurerm_storage_account.storage_account.id
}
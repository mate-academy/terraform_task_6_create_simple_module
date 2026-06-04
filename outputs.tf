output "storage_account_name" {
  value       = azurerm_storage_account.example.name
  description = "The name of the storage account"
}

output "blob_endpoint" {
  value       = azurerm_storage_account.example.primary_blob_endpoint
  description = "Blob endpoint URL"
}

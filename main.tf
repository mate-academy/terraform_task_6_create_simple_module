module "resource_group_storage" {
  source = "https://github.com/vladyslavgusakovskiy/terraform-azurerm-resource_group_storage"
  version = "1.0.0"

  resource_group_name  = var.resource_group_name
  location             = var.location
  storage_account_name = var.storage_account_name
}
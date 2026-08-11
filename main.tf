module "resource_group_storage" {
  source  = "app.terraform.io/1ntact/resource_group_storage/azurerm"
  version = "1.0.1"

  resource_group_name  = var.resource_group_name
  location             = var.location
  storage_account_name = var.storage_account_name
}

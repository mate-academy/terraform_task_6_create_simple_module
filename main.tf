module "resource_group_storage" {
  source               = "Andr1yK/resource_group_storage/azurerm"
  version              = "1.0.0"
  resource_group_name  = "my-resource-group"
  storage_account_name = "mystorageacct"
}

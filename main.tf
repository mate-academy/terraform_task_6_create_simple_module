resource "random_id" "unique_suffix" {
  byte_length = 4
}

module "resource_group_storage" {
  source               = "v-shutov/resource_group_storage/azurerm"
  version              = "1.0.2"
  resource_group_name  = var.resource_group_name
  location             = var.location
  storage_account_name = "${var.storage_account_name}${random_id.unique_suffix.hex}"
}

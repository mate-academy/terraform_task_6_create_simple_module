module "resource_group_storage" {
  source = "github.com/gaupt/terraform-azurerm-resource_group_storage"

  resource_group_name  = "example-rg"
  location             = "East US"
  storage_account_name = "examplestorage"
}
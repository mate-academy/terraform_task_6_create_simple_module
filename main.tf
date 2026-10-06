module "resource_group_storage" {
  source  = "tetianamohorian23/resource-group-storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "mate-terraform-task-6-rg"
  location             = "swedencentral"
  storage_account_name = "matetf6storage20261006"
}

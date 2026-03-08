module "resource_group_storage" {
  source  = "matetask/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "mate_task"
  storage_account_name = "matetask"
}

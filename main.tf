module "resource_group_storage" {
  source = "./modules/resource_group_storage"

  resource_group_name  = "task6-resources"
  storage_account_name = "task6storageacc123"
  location             = "Sweden Central"
}
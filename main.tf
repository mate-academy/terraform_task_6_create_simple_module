module "resource_group_storage" {
  source = "./modules/resource_group_storage"

  resource_group_name  = "task6"
  location             = "westus"
  storage_account_name = "vr88"
}

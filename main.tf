module "resource_group_storage" {
  source  = "VolodymyrKaraniuk/resource_group_storage/azurerm"
  version = "1.0.0"
}
module "simple_module" {
  source                = "./modules/simple-module"
  resource_group_name   = "specific-resource-group"
  storage_account_name  = "specificstorageaccount"
  location              = "West US"
}
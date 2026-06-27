module "simplemodule" {
  source   = "nichelangeloo/simplemodule/azurerm"
  version  = "1.0.1"
  location = "East US"
  rg_name  = "tasktfstate"
  st_name  = "nichstorage"
}

# Example for local usage
# module "resource_group_storage" {
#   source   = "./modules/resource_group_storage"
#   rg_name  = "specific-resource-group"
#   st_name  = "specificstorageaccount"
#   location = "West US"
# }
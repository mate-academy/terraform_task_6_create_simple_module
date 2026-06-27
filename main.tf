module "resource_group_storage" {
  source   = "app.terraform.io/nichelangeloo/resource_group_storage/azurerm"
  version  = "1.0.0"
  rg_name  = "tfstate"
  st_name  = "nichelangeloost"
  location = "East US"
}
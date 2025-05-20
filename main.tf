terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.105.0"
    }
  }
}

# module "resource_group_storage" {
#   source = "git::https://github.com/konstantinou77/terraform-azurerm-resource_group_storage?ref=176e36b41def99a11dabd26acfd17cefcf6cb476"
#   #version = "1.0.0"
# }

module "resource_group_storage" {
  source  = "konstantinou77/resource_group_storage/azurerm"
  version = "1.0.2"
}
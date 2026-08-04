terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group_storage" {
  source = "github.com/Anastasiia-Chikrizova/terraform-azurerm-resource_group_storage"
}

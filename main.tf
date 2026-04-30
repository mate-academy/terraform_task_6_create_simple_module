terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0" # Рекомендую додати версію для стабільності
    }
  }
}

provider "azurerm" {
  features {} # Це обов'язковий блок для провайдера Azure
}


module "resource_group_storage" {
  source  = "app.terraform.io/Mate_Terraform/resource_group_storage/azurerm"
  version = "1.0.2"

  resource_group_name  = "my-rg"
  storage_account_name = "mystorageaccktkat"
  location             = "West Europe"
}
provider "azurerm" {
  features {}
}


module "resource_group_storage" {
source  = "Gosxa/resource_group_storage/azurerm"
version = "1.0.0"

  resource_group_name  = "my-rg"
  location             = "westeurope"
  storage_account_name = "mystorage123456"

  tags = {
    env = "dev"
  }
  
}
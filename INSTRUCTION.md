# resource_group_storage module (azurerm)

## Usage

```hcl
module "resource_group_storage" {
  source  = "<YOUR_GITHUB_USERNAME>/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "rg-example"
  location             = "westeurope"
  storage_account_name = "mystorage123456"
  container_name       = "tfstate"
}


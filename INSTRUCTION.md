# resource_group_storage module usage

```hcl
module "resource_group_storage" {
  source               = "salabam/resource_group_storage/azurerm"
  resource_group_name  = "rg-name"
  storage_account_name = "storageaccountname"
  location             = "West US"
}
```
# Azure Resource Group and Storage Module

This module creates an Azure Resource Group and a Storage Account inside it.

## Local usage

```hcl
module "resource_group_storage" {
  source = "./modules/resource_group_storage"

  resource_group_name      = "example-resources"
  location                 = "North Europe"
  storage_account_name     = "replacewithuniquename"
  account_replication_type = "LRS"

  tags = {
    environment = "training"
  }
}
```

## Terraform Registry usage

After the module is published from a GitHub repository named
`terraform-azurerm-resource_group_storage`, replace the local source with:

```hcl
module "resource_group_storage" {
  source  = "aleksandrmajlo/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "example-resources"
  storage_account_name = "replacewithuniquename"
}
```

Storage account names must be globally unique and contain 3-24 lowercase
letters and numbers.

## Outputs

- `resource_group_id`
- `resource_group_name`
- `storage_account_id`
- `storage_account_name`
- `storage_account_primary_blob_endpoint`

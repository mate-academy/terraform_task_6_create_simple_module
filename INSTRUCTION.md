# Module Usage Instructions

## Purpose

This module creates:

- one Azure Resource Group;
- one Azure Storage Account inside that resource group.

## Local usage

```hcl
module "resource_group_storage" {
  source = "./modules/resource_group_storage"

  resource_group_name  = "example-rg"
  location             = "westeurope"
  storage_account_name = "examplestorageacc01"
  account_tier         = "Standard"
  account_replication  = "LRS"
}
```

## Terraform Registry usage

After publishing the module to Terraform Registry, use it like this:

```hcl
module "resource_group_storage" {
  source  = "<YOUR_NAMESPACE>/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "example-rg"
  location             = "westeurope"
  storage_account_name = "examplestorageacc01"
  account_tier         = "Standard"
  account_replication  = "LRS"
}
```

## Inputs

- `resource_group_name`: name of the Azure Resource Group.
- `location`: Azure region for the resources.
- `storage_account_name`: globally unique storage account name, 3-24 lowercase alphanumeric characters.
- `account_tier`: storage account tier.
- `account_replication`: storage account replication type.

## Outputs

- `resource_group_id`
- `resource_group_name`
- `storage_account_id`
- `storage_account_name`
- `primary_blob_endpoint`

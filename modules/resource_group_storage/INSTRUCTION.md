# Terraform Module: Azure Resource Group and Storage Account

## Usage

Example usage of this module:

```hcl
module "resource_group_storage" {
 source               = "github.com/<your-username>/terraform-azurerm-resource_group_storage"
 resource_group_name  = "example-resource-group"
 storage_account_name = "examplestorageacct"
}
```

## Variables

- `resource_group_name` - The name of the resource group.
- `location` - The location of the resources (default: East US).
- `storage_account_name` - The name of the storage account.
- `account_tier` - The storage account tier (default: Standard).
- `account_replication_type` - The replication type for the storage account (default: LRS).

## Outputs

- `resource_group_name` - The name of the created resource group.
- `storage_account_name` - The name of the created storage account.

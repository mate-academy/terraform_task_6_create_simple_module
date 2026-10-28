# Azure Resource Group and Storage Account

This Terraform module creates two Azure resources:

- an Azure Resource Group;
- a Storage Account inside that Resource Group.

## Usage

```hcl
module "resource_group_storage" {
  source  = "aleksandrmajlo/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name      = "example-resources"
  location                 = "North Europe"
  storage_account_name     = "replacewithuniquename"
  account_replication_type = "LRS"

  tags = {
    environment = "training"
  }
}
```

Storage account names are globally unique and must contain 3-24 lowercase
letters and numbers.

## Inputs

| Name | Description | Type | Default | Required |
| --- | --- | --- | --- | --- |
| `resource_group_name` | Resource Group name | `string` | — | yes |
| `storage_account_name` | Globally unique Storage account name | `string` | — | yes |
| `location` | Azure region | `string` | `North Europe` | no |
| `account_tier` | Storage performance tier | `string` | `Standard` | no |
| `account_replication_type` | Storage replication type | `string` | `LRS` | no |
| `tags` | Tags applied to both resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
| --- | --- |
| `resource_group_id` | Resource Group ID |
| `resource_group_name` | Resource Group name |
| `storage_account_id` | Storage Account ID |
| `storage_account_name` | Storage Account name |
| `storage_account_primary_blob_endpoint` | Primary Blob endpoint |

## License

MIT

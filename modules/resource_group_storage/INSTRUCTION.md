# Terraform Azure Resource Group & Storage Module

This Terraform module creates:
- An Azure Resource Group
- An Azure Storage Account inside that resource group

## Requirements

- Terraform >= 1.3
- Azure Provider >= 3.0
- Azure subscription

## Usage

```hcl
module "resource_group_storage" {
  source  = "MateNizArtem/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "example-rg"
  storage_account_name = "examplestorage123"
  location             = "West Europe"
}
```


Inputs
| Name                 | Description                 | Type   | Required |
| -------------------- | --------------------------- | ------ | -------- |
| resource_group_name  | Name of the resource group  | string | yes      |
| storage_account_name | Name of the storage account | string | yes      |
| location             | Azure region                | string | yes      |

Outputs
| Name                 | Description                  |
| -------------------- | ---------------------------- |
| resource_group_name  | Created resource group name  |
| storage_account_name | Created storage account name |
| storage_account_id   | Storage account resource ID  |

Notes

Storage account names must be globally unique

All resources are created in the same location
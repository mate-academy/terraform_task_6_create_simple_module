# resource_group_storage module

Creates an Azure resource group and a storage account in the same region.

## Requirements

- Terraform >= 1.8.4
- Azure provider `hashicorp/azurerm` >= 3.105.0, < 4.0.0
- Azure CLI authenticated (`az login`)
- Permission to create resource groups and storage accounts

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| resource_group_name | Name of the resource group | `string` | n/a | yes |
| location | Azure region | `string` | n/a | yes |
| storage_account_name | Globally unique storage account name (3–24 lowercase letters/digits) | `string` | n/a | yes |
| account_tier | Storage account tier | `string` | `"Standard"` | no |
| account_replication_type | Storage replication type | `string` | `"LRS"` | no |

## Outputs

| Name | Description |
|------|-------------|
| resource_group_name | Name of the resource group |
| resource_group_id | ID of the resource group |
| storage_account_name | Name of the storage account |
| storage_account_id | ID of the storage account |
| storage_account_primary_endpoint | Primary blob endpoint |

## Local usage

```hcl
module "resource_group_storage" {
  source = "./modules/resource_group_storage"

  resource_group_name  = "rg-example"
  location             = "eastus"
  storage_account_name = "stexample12345"
}
```

```bash
terraform init
terraform plan
terraform apply
```

## GitHub / Registry usage

Published module:
https://registry.terraform.io/modules/NazarKulyk6/resource_group_storage/azurerm/1.0.0

GitHub source repository:
https://github.com/NazarKulyk6/terraform-azurerm-resource_group_storage

```hcl
module "resource_group_storage" {
  source  = "NazarKulyk6/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "rg-example"
  location             = "eastus"
  storage_account_name = "stexample12345"
}
```

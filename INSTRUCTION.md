# Terraform Module: Resource Group & Storage Account

## Overview

This module creates an Azure Resource Group and a Storage Account.

## Module Structure

```
modules/resource_group_storage/
  main.tf
  variables.tf
  outputs.tf
```

Published module repository: https://github.com/Petliuk/terraform-azurerm-resource_group_storage

Terraform Registry: `Petliuk/resource_group_storage/azurerm` (version `1.0.0`)

## Usage

```hcl
module "resource_group_storage" {
  source  = "Petliuk/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "task6-resources"
  storage_account_name = "task6storagepetliuk"
  location             = "Sweden Central"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|----------|
| resource_group_name | Name of the resource group | string | n/a | yes |
| storage_account_name | Name of the storage account | string | n/a | yes |
| location | Azure region | string | Sweden Central | no |

## Outputs

| Name | Description |
|------|-------------|
| resource_group_name | Name of the created resource group |
| storage_account_id | ID of the created storage account |

## Commands

```bash
terraform init
terraform validate
terraform plan
terraform apply
```

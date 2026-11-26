# Azure Resource Group and Storage Account Module

## Description

This Terraform module creates an Azure Resource Group and a Storage Account with Standard tier and LRS replication. The Storage Account is tagged with the specified environment.

## Requirements

- Terraform installed locally.
- AzureRM provider (`hashicorp/azurerm`) >= 5.0.0.
- An Azure subscription and configured Azure authentication.

## Usage

Configure the AzureRM provider in your root module and use the following module configuration:

```hcl
module "resource_group_storage" {
  source  = "daniilshpak/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "development-rg"
  storage_account_name = "exampledevstorage123"
  location             = "swedencentral"
  environment          = "development"
}
```

The Storage Account name must be globally unique and contain 3–24 lowercase letters and digits.

## Inputs

| Name | Description | Type | Required |
| --- | --- | --- | --- |
| resource_group_name | Name of the Resource Group | string | Yes |
| storage_account_name | Name of the Storage Account | string | Yes |
| location | Azure region | string | Yes |
| environment | Environment name used for tagging | string | Yes |

## Outputs

| Name | Description |
| --- | --- |
| azurerm_resource_group_name | Name of the Resource Group |
| azurerm_resource_group_location | Region of the Resource Group |
| azurerm_storage_account_id | ID of the Storage Account |

## Deployment

Run the following commands from your root module:

```bash
terraform init
terraform validate
terraform plan
terraform apply
```

Review the execution plan before applying the changes.
# Terraform Azure Resource Group Storage Module

This Terraform module creates:

- Azure Resource Group
- Azure Storage Account

## Terraform Registry

Module source:

`Loki-sudo007/resource-group-storage/azurerm`

Current version:

`1.0.0`

## Requirements

- Terraform installed
- Azure CLI installed
- Active Azure subscription
- Authentication to Azure

```bash
az login
```

## Usage

```hcl
provider "azurerm" {
  features {}
}

module "resource_group_storage" {
  source  = "Loki-sudo007/resource-group-storage/azurerm"
  version = "1.0.0"

  resource_group_name  = "my-resource-group"
  storage_account_name = "mystorageaccount123"
  location             = "East US"
}
```

## Inputs

- `resource_group_name` - Name of the Azure Resource Group
- `storage_account_name` - Name of the Azure Storage Account
- `location` - Azure region where resources will be created

## Outputs

- `resource_group_id` - ID of the created Azure Resource Group
- `storage_account_id` - ID of the created Azure Storage Account

## Run

```bash
terraform init
terraform plan
terraform apply
```
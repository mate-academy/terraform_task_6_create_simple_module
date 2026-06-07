# Terraform AzureRM Resource Group and Storage Account Module

A simple Terraform module to create an Azure Resource Group and an Azure Storage Account with standard replication.

## Prerequisites
- Terraform >= 1.0.0
- Azure CLI configured and authenticated
- AzureRM Provider `~> 3.0` (or compatible)

## Usage

Once the module is published to the Terraform Registry, you can use it in your `main.tf` like this:

```hcl
module "resource_group_storage" {
  source  = "<YOUR_GITHUB_USERNAME>/resource_group_storage/azurerm"
  version = "1.0.0"

  # Optional variables (they have defaults, but it's recommended to override them)
  resource_group_name  = "my-production-rg"
  location             = "westeurope"
  storage_account_name = "myprodstorageaccount123"
}
```
# Azure Resource Group and Storage Account Module

This Terraform module is used to create an Azure Resource Group and a Storage Account.

## Variables

The module uses the following variables for configuration:

- `resource_group_name` — the name of the Resource Group.
- `storage_account_name` — the name of the Storage Account.
- `location` — the Azure region where the resources will be created.

## Outputs

The module provides the following outputs:

- `resource_group_id` — the ID of the created Resource Group.
- `storage_account_id` — the ID of the created Storage Account.

## Usage

After adding the module to your Terraform configuration, run:

```bash
terraform init
terraform plan
terraform apply
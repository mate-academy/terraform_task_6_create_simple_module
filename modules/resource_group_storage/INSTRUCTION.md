Azure Storage Account Terraform Deployment

This project automates the creation of an Azure Resource Group and a Storage Account using Terraform.
Prerequisites

    Azure CLI

    Terraform

    Azure Subscription: You must be logged in via the CLI

Quick Start Guide

    Login to Azure
    Open your terminal and run:
    Bash

    az login

    Initialize Terraform
    Prepare the working directory and download the Azure provider:
    Bash

    terraform init

    Plan the Deployment
    Check what resources will be created before committing to the changes:
    Bash

    terraform plan

    Apply Changes
    Deploy the infrastructure to Azure:
    Bash

    terraform apply
    # Type 'yes' when prompted

Configuration Details

The deployment uses the following default values (defined in variables.tf or at the bottom of your main file):
Variable	Default Value
resource_group_name	mate6_example
location	East US
storage_account_name	mate6_storage_account

    Note: Storage account names must be globally unique across all of Azure. If the deployment fails, try changing the storage_account_name variable to something unique.

Cleanup

To avoid ongoing costs, you can destroy the resources created by this project:
Bash

terraform destroy

Troubleshooting

If you see an error regarding the output block, ensure your code reflects the following fix:
Terraform

# Corrected Output
output "azurerm_storage_account_id" {
    value = azurerm_storage_account.example.id
}
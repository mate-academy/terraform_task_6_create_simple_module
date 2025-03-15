# Terraform Module: Resource Group and Storage Account

This module creates a Resource Group and Storage Account in Azure.

## Usage

To use this module in your project, include the following code in your `main.tf`:

```hcl
module "resource_group_storage" {
  source               = "github.com/Ramzes525/terraform-azurerm-resource_group_storage"
  resource_group_name  = "my-resource-group"
  storage_account_name = "mystorageaccount"
  location             = "East US"
}

Inputs
Name	                     Description	                                    Type	Default
resource_group_name	    The name of the Azure Resource Group.	                string	task-6
storage_account_name	The name of the Azure Storage Account.	                string	storageaccount
location	            The Azure region where the resources will be created.	string	East US

# terraform-azurerm-resource_group_storage

## Overview

This Terraform module creates an Azure Resource Group and Storage Account.

## Usage

```hcl
module "resource_group_storage" {
  source = "github.com/YOUR_GITHUB_USERNAME/terraform-azurerm-resource_group_storage"

  resource_group_name  = "example-rg"
  location             = "West Europe"
  storage_account_name = "examplestorageacct"
}
Inputs
Name	Description	Type	Default	Required
resource_group_name	The name of the resource group	string	n/a	yes
location	The location of the resource group	string	n/a	yes
storage_account_name	The name of the storage account	string	n/a	yes
Outputs
Name	Description
resource_group_name	The name of the resource group
storage_account_name	The name of the storage account
Example
hcl
Copy code
module "resource_group_storage" {
  source = "github.com/YOUR_GITHUB_USERNAME/terraform-azurerm-resource_group_storage"

  resource_group_name  = "example-rg"
  location             = "West Europe"
  storage_account_name = "examplestorageacct"
}

output "resource_group_name" {
  value = module.resource_group_storage.resource_group_name
}

output "storage_account_name" {
  value = module.resource_group_storage.storage_account_name
}
License
This project is licensed under the MIT License - see the LICENSE file for details.

Contributing
Contributions are welcome! Please open an issue or submit a pull request for any changes.

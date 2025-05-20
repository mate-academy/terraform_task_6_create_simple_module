This module creates:

- A resource group
- A storage account

## Module Inputs

"resource_group_name"   - The name of the Azure resource group
"location"              - Azure region/location for resources
"storage_account_name"  - The name of the storage account

## Module Outputs

"resource_group_id"     - The ID of the created resource group |
"storage_account_id"    - The ID of the created storage account |

## How to use this module

In your Terraform root module, include the following:

module "resource_group_storage" {
  source  = "github.com/your_github_username/terraform-azurerm-resource_group_storage"
  version = "1.0.0"  # Use the appropriate version tag

  resource_group_name  = "my-resource-group"
  location             = "westeurope"  # Optional, defaults to "westeurope"
  storage_account_name = "mystorageacct123"
}

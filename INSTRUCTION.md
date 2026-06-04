storage
## Description
This module creates an Azure Resource Group and a Storage Account.
## Usage
```hcl
module "rg_storage" {
  source  = "username/terraform-azurerm-resource_group_storage"
  version = "1.0.0"

  resource_group_name = "my-rg"
  location            = "eastus"
  storage_account_name = "mystorageaccount"
  account_tier        = "Standard"
  account_replication_type = "LRS"
}

Variables
resource_group_name - Name of the resource group
/Default\ - tfvmexResourceGroupName

location - Azure region
/Default\ - centralus

storage_account_name - Name of storage account
/Default\ - tfvmexStorageAccountName

account_tier - Storage account tier
/Default\ - "Standard"

account_replication_type - Replication type
/Default\ -  "LRS"
# terraform-azurerm-resource_group_storage
terraform-azurerm - resource_group_storage

This module will create a new resource group and a storage account inside in your Azure terraform project.

To use this module simply add it to your terraform project and parametrize with following variables:

```
location
```

```
resource_group_name
```

```
storage_account_name
```

So that the final block will be look like this:
```
module "resource_group_storage" {
    location = "Your Location"
    resource_group_name = "your_new_resource_group_name"
    storage_account_name = "storage_account_name"
}

All values must comply with Terraform's requirements for this resources.
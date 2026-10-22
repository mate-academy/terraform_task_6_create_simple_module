This module will create **resource group** and **storage account** in **azure** with variables that are set in variables.tf and then output the **resource group id** and **storage acoount id**

In the **variables.tf** you can change **resource_group_name**, **storage_account_name** and **location**

By Default module will create resources in East US, name for resource group is "example-resources" and name for storageaccount is "examplestorageaccount"
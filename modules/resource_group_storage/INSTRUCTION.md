# Use the resource group and storage module

Run the commands from the root of the consumer configuration. Terraform 1.8.4, Azure CLI and an Azure subscription with permission to create a resource group and storage account are required.

## Use the local module

The exercise already calls the module from `./modules/resource_group_storage`. Set a globally unique storage account name using 3–24 lowercase letters or digits. The resource group name and region can be overridden through `resource_group_name` and `location`.

```powershell
az login
az account show --output table
$storageName = 'tfmodule' + [guid]::NewGuid().ToString('N').Substring(0, 12)
terraform init
terraform plan -out=tfplan -var "storage_account_name=$storageName"
terraform apply tfplan
terraform output
```

The outputs `resource_group_id` and `storage_account_id` identify the resources created by the module.

## Publish and use a Registry release

1. Put the contents of this module directory at the root of a public GitHub repository named `terraform-azurerm-resource-group-storage`. Include the Terraform files, README, this guide, `LICENSE`, and `.gitignore`.
2. Create the `v1.0.0` release tag and publish the repository in the Terraform Registry using your GitHub account.
3. After the release appears, replace the `source` line in the consumer's module block with the published address and add the version constraint. Keep the existing inputs.

   ```hcl
   source  = "VladislaveUst/resource-group-storage/azurerm"
   version = "1.0.0"
   ```

4. Run `terraform init`, then save and apply a new plan using the same inputs.

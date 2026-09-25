# Terraform Azure Resource Group and Storage Account Module

This Terraform module creates an Azure Resource Group and an Azure Storage Account.

## Requirements

- Terraform
- Azure CLI
- An active Azure subscription

## Usage

```hcl
module "resource_group_storage" {
  source = "github.com/kdacc/terraform-azurerm-resource_group_storage"

  resource_group_name  = "my-resource-group"
  location             = "East US"
  storage_account_name = "mystorageaccount123"
}
```

## Initialize Terraform:
```
terraform init
```

## Validate the configuration:
```
terraform validate
```

## Create an execution plan:
```
terraform plan
```

## Create the Azure resources:
```
terraform apply
```

## View outputs:
```
terraform output
```

## Remove the created resources:
```
terraform destroy
```
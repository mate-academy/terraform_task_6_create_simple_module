# Resource Group + Storage Module

This repository contains a Terraform module that creates:
- Azure Resource Group
- Azure Storage Account

## Module Files
- `modules/resource_group_storage/main.tf`
- `modules/resource_group_storage/variables.tf`
- `modules/resource_group_storage/outputs.tf`

## Inputs
- `resource_group_name` (string, required)
- `location` (string, required)
- `storage_name_prefix` (string, required, lowercase alphanumeric 3-18)
- `account_tier` (string, required)
- `account_replication` (string, required)
- `tags` (map(string), optional)

## Outputs
- `resource_group_id`
- `resource_group_name`
- `storage_account_id`
- `storage_account_name`

## Example (local module source)
```hcl
module "resource_group_storage" {
  source = "./modules/resource_group_storage"

  resource_group_name = "rg-demo"
  location            = "westeurope"
  storage_name_prefix = "stgdemo"
  account_tier        = "Standard"
  account_replication = "LRS"
  tags = {
    env = "dev"
  }
}
```

## Example (Terraform Registry source)
After publishing to Terraform Registry, switch `source` to:
```hcl
module "resource_group_storage" {
  source  = "<NAMESPACE>/resource_group_storage/azurerm"
  version = "~> 1.0"

  resource_group_name = "rg-demo"
  location            = "westeurope"
  storage_name_prefix = "stgdemo"
  account_tier        = "Standard"
  account_replication = "LRS"
  tags = {
    env = "dev"
  }
}
```

## Validate Locally
```bash
terraform fmt -recursive
terraform init
terraform validate
```

## Private Registry Authentication
This project uses a private module from Terraform Registry on Terraform Cloud.

### Local machine
Run login once:
```bash
terraform login
```

Or set an environment variable token for the current shell:
```bash
export TF_TOKEN_app_terraform_io="<your-token>"
```

PowerShell:
```powershell
$env:TF_TOKEN_app_terraform_io = "<your-token>"
```

### GitHub Actions
Add repository secret:
- Name: `TF_TOKEN_app_terraform_io`
- Value: Terraform Cloud user or team token with access to module `dimonalek/resource_group_storage/azurerm`

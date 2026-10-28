# Working with Terraform Modules

## Prerequisites

To complete this task, Terraform and Azure CLI must be installed and configured on your machine.

## Steps to Complete the Task

**1. Fork this Repository**

**2. Create a Simple Terraform Module**

- Create a directory named `modules/resource_group_storage` in the root of your repository.
- Inside the `modules/resource_group_storage` directory, create the following files:
    * `main.tf`: define the resources.
    * `variables.tf`: define the variables.
    * `outputs.tf`: define the outputs.

**3. Publish the Module on GitHub**

- Create a new repository on GitHub named according to Terraform's naming convention, e.g.`terraform-azurerm-resource_group_storage`.
- Add the module files (`main.tf`, `variables.tf`, `outputs.tf`) to this repository.
- Add an `INSTRUCTION.md` file with detailed usage instructions.
- Add a `LICENSE` file to specify the usage rights.
- Add a `.gitignore` file to ignore Terraform state files and other sensitive information.
- Commit and push the files to GitHub.

**4. Publish the Module to Terraform Registry**

- Ensure your GitHub repository name follows the format `terraform-<PROVIDER>-<MODULE_NAME>`.
- Sign in to the Terraform Registry with your GitHub account.
- Publish the module by linking your GitHub repository to the Terraform Registry.
- Tag the repository with a version (e.g., `v1.0.0`) following semantic versioning.

**5. Use the Module from Terraform Registry**

- In your main Terraform configuration (`main.tf`), use the module from the Terraform Registry.
- Initialize and apply the configuration to verify that the module is used correctly.

**6. Pull request's description should also contain a reference to a successful workflow run**

## Implemented solution

The reusable module lives in `modules/resource_group_storage` and contains:

- `main.tf` — the Resource Group and Storage Account;
- `variables.tf` — typed inputs, defaults, descriptions, and validation;
- `outputs.tf` — resource IDs, names, and the Blob endpoint;
- `versions.tf` — Terraform and AzureRM compatibility constraints;
- `INSTRUCTION.md` — local and Registry usage examples;
- `LICENSE` — the MIT license required for publishing.

The root configuration calls version `1.0.0` of the published Registry module:

```hcl
module "resource_group_storage" {
  source  = "aleksandrmajlo/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name  = var.resource_group_name
  location             = var.location
  storage_account_name = var.storage_account_name
}
```

The copy in `modules/resource_group_storage` is the module source used to build
the separate GitHub repository. The root configuration deliberately downloads
the published module, as required by the task.

## Validate without creating Azure resources

```bash
terraform init
terraform fmt -check -recursive
terraform validate
```

These commands install the provider and validate both the root configuration
and the child module. They do not create any Azure resources.

## Optional Azure deployment

Copy the example values and replace the Storage account name with a globally
unique name containing 3-24 lowercase letters and numbers:

```bash
cp terraform.tfvars.example terraform.tfvars
terraform plan -out=tfplan
terraform apply tfplan
```

Remove the resources after testing to avoid unexpected costs:

```bash
terraform destroy
```

## Publish the module

Create a separate GitHub repository named exactly:

```text
terraform-azurerm-resource_group_storage
```

Copy the contents of `modules/resource_group_storage` to that repository's
root. Commit the files, create a semantic version tag, and push it:

```bash
git tag -a v1.0.0 -m "Release module v1.0.0"
git push origin v1.0.0
```

After connecting that repository to the Terraform Registry, use the published
module in the root configuration:

```hcl
module "resource_group_storage" {
  source  = "aleksandrmajlo/resource_group_storage/azurerm"
  version = "1.0.0"

  resource_group_name  = var.resource_group_name
  location             = var.location
  storage_account_name = var.storage_account_name
}
```

The repository is published as version `1.0.0`, so `terraform init` can download
the module directly from Terraform Registry.

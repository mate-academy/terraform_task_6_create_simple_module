# resource_group_storage-demo

This Terraform root module demonstrates usage of the `resource_group_storage` module
from the private registry at app.terraform.io (organization `1ntact`).

It creates an Azure Resource Group and a Storage Account via the published module.

Usage:

1. Create `terraform.tfvars` from `terraform.tfvars.example` and edit values.
2. Ensure you are logged into Terraform Cloud: `terraform login` (insert API token).
3. Run `terraform init`, `terraform plan`.

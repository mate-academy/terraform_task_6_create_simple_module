# Terraform-azurerm-simplemodule

Usage:
1. Add your resource group name
2. Add your storage account name
3. Add your location
4. Integrate in your main.tf file with values described above

# Detailed instruction usage
```
module "simplemodule" {
  source   = "nichelangeloo/simplemodule/azurerm"
  version  = "1.0.1"
  location = "your vm location here"
  rg_name  = "your resource group name here"
  st_name  = "your storage name here"
}
```

# After adding your values
```
terraform init
terraform plan
terraform apply
```
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location/region where the resource group will be created"
  type        = string
  default     = "West Europe" # You can set a default or override it via tfvars or command line
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

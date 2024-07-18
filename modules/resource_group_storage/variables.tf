variable "resource_group_name" {
  type        = string
  default     = "terraform-module"
  description = "Resource group name"
}

variable "location_for_rg" {
  type        = string
  default     = "West Europe"
  description = "Location for the resource group"
}

variable "storage_account_name" {
  type        = string
  default     = "terraform-module-storage"
  description = "Storage account name"
}

variable "resource_group_name" {
  type        = string
  default     = "task-6-rg"
  description = "Resource group Name"
}

variable "location_for_rg" {
  type        = string
  default     = "West Europe"
  description = "Location for the resources"
}

variable "storage_account_name" {
  type        = string
  default     = "task-6-yaas-storage-account"
  description = "Storage account Name"
}
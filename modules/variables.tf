variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure location where resources will be created"
  type        = string
  default     = "East US"
}

variable "storage_account_name" {
  description = "The name of the Storage Account (must be unique globally)"
  type        = string
}

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
  description = "The name of the Storage Account (3-24 chars, lowercase letters and numbers)"
  type        = string

  validation {
    condition     = length(var.storage_account_name) >= 3 && length(var.storage_account_name) <= 24 && can(regex("^[a-z0-9]+$", var.storage_account_name))
    error_message = "Storage account name must be 3-24 chars, lowercase letters and numbers only."
  }
}
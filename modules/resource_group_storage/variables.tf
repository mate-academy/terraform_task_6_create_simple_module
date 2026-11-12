variable "resource_group_name" {
  description = "Name of the resource group to create."
  type        = string
  nullable    = false
}

variable "location" {
  description = "Azure region for the resource group and storage account."
  type        = string
  nullable    = false
}

variable "storage_account_name" {
  description = "Globally unique name for the storage account."
  type        = string
  nullable    = false

  validation {
    condition     = can(regex("^[a-z0-9]{3,24}$", var.storage_account_name))
    error_message = "Use 3 to 24 lowercase letters or digits for the storage account name."
  }
}

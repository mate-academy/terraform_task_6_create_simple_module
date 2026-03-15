variable "resource_group_name" {
  description = "The name of the Azure Resource Group."
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
}

variable "storage_account_name" {
  description = "Globally unique storage account name."
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9]{3,24}$", var.storage_account_name))
    error_message = "storage_account_name must contain 3-24 lowercase letters or digits."
  }
}

variable "account_tier" {
  description = "The tier of the storage account."
  type        = string
  default     = "Standard"

  validation {
    condition     = contains(["Standard", "Premium"], var.account_tier)
    error_message = "account_tier must be either Standard or Premium."
  }
}

variable "account_replication" {
  description = "The replication type of the storage account."
  type        = string
  default     = "LRS"

  validation {
    condition     = contains(["LRS", "GRS", "RAGRS", "ZRS", "GZRS", "RAGZRS"], var.account_replication)
    error_message = "account_replication must be a valid Azure storage replication type."
  }
}

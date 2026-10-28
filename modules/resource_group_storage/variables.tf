variable "resource_group_name" {
  description = "Name of the Azure resource group to create."
  type        = string

  validation {
    condition     = length(trimspace(var.resource_group_name)) > 0
    error_message = "resource_group_name must not be empty."
  }
}

variable "location" {
  description = "Azure region for all resources in this module."
  type        = string
  default     = "North Europe"

  validation {
    condition     = length(trimspace(var.location)) > 0
    error_message = "location must not be empty."
  }
}

variable "storage_account_name" {
  description = "Globally unique Storage account name using 3-24 lowercase letters and numbers."
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9]{3,24}$", var.storage_account_name))
    error_message = "storage_account_name must contain 3-24 lowercase letters and numbers only."
  }
}

variable "account_tier" {
  description = "Storage account tier: Standard or Premium."
  type        = string
  default     = "Standard"

  validation {
    condition     = contains(["Standard", "Premium"], var.account_tier)
    error_message = "account_tier must be Standard or Premium."
  }
}

variable "account_replication_type" {
  description = "Storage replication type."
  type        = string
  default     = "LRS"

  validation {
    condition = contains(
      ["LRS", "GRS", "RAGRS", "ZRS", "GZRS", "RAGZRS"],
      var.account_replication_type,
    )
    error_message = "account_replication_type must be LRS, GRS, RAGRS, ZRS, GZRS, or RAGZRS."
  }
}

variable "tags" {
  description = "Tags applied to the resource group and storage account."
  type        = map(string)
  default     = {}
}

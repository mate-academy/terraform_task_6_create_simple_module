variable "resource_group_name" {
  type        = string
  description = "Name of the resource group to create."
}

variable "location" {
  type        = string
  description = "Azure region where the resources will be created."
  default     = "North Europe"
}

variable "storage_account_name" {
  type        = string
  description = "Globally unique name of the storage account (3-24 lowercase alphanumeric characters)."
}

variable "account_tier" {
  type        = string
  description = "Performance tier of the storage account."
  default     = "Standard"
}

variable "account_replication_type" {
  type        = string
  description = "Replication strategy of the storage account."
  default     = "LRS"
}

variable "tags" {
  type        = map(string)
  description = "Tags applied to the resource group and storage account."
  default     = {}
}

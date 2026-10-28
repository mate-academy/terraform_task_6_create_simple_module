variable "resource_group_name" {
  description = "Name of the resource group created by the module."
  type        = string
}

variable "location" {
  description = "Azure region for the resource group and storage account."
  type        = string
  default     = "North Europe"
}

variable "storage_account_name" {
  description = "Globally unique Azure Storage account name."
  type        = string
}

variable "account_tier" {
  description = "Storage account performance tier."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Storage account replication strategy."
  type        = string
  default     = "LRS"
}

variable "tags" {
  description = "Tags applied to resources created by the module."
  type        = map(string)
  default = {
    environment = "training"
    managed_by  = "terraform"
  }
}

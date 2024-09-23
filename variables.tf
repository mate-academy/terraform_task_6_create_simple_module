variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "my-rg"
}

variable "location" {
  description = "The location for all resources."
  type        = string
  default     = "West Europe"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
  default     = "mystorageacct"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "rg-name"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
  default     = "saname"
}

variable "location" {
  description = "The location for all resources."
  type        = string
  default     = "West US"
}
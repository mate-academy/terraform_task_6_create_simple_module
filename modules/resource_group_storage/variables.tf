variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region to deploy resources"
  type        = string
  default     = "West US"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

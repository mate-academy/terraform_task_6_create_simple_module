# variables.tf

variable "resource_group_name" {
  description = "The name of the resource group to create"
  type        = string
  default     = "task6-resources"
}

variable "location" {
  description = "The location where resources will be created"
  type        = string
  default     = "West Europe"
}

variable "storage_account_name" {
  description = "The name of the storage account to create"
  type        = string
  default     = "task6torageacct"
}

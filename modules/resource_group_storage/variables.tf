variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "example-resource-group"
}

variable "location" {
  description = "The location of the resource group"
  type        = string
  default     = "Poland Central"
}

variable "storage_account_name" {
  description = "The unique_name across Azure of the storage account"
  type        = string
}
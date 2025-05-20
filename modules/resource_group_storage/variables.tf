variable "resource_group_name" {
  description = "The name of the resource group"
  default     = "example-resources"
}

variable "location" {
  description = "The Azure location for the resource group"
  default     = "East US"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  default     = "examplestorageaccount"
}
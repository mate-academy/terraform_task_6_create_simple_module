variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "example-resource-group"
}

variable "location" {
  description = "The Azure region where the resource group will be created"
  type        = string
  default     = "East US"
}

variable "storage_account_name" {
  description = "The name of the storage account to be created in the resource group"
  type        = string
  default     = "examplestorageaccount"
}

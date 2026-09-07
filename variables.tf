variable "resource_group_name" {
  description = "The name of the resource group"
  default     = "example-resources"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  default     = "examplestorageaccount"
}

variable "location" {
  description = "The location for all resources."
  default     = "East US"
}

variable "storage_account_tier" {
  description = "The tier for the storage account"
  default     = "Standard"
}
variable "storage_account_replication_type" {
  description = "The replication type for the storage account"
  default     = "LRS"
}

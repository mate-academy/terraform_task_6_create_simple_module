variable "resource_group_name" {
  description = "The name of the resource group where the storage account will be created."
  type        = string
  default     = "default-rg"
}

variable "location" {
  description = "The Azure region where the resource group and storage account will be created."
  type        = string
  default     = "East US"
}

variable "storage_account_name" {
  description = "The name of the storage account to be created."
  type        = string
  default     = "defaultstorageacct"
}

variable "storage_account_tier" {
  description = "The performance tier of the storage account. Valid values are 'Standard' or 'Premium'."
  type        = string
  default     = "Standard"
}

variable "storage_account_replication_type" {
  description = "The replication type of the storage account. Valid values are 'LRS', 'GRS', 'RAGRS', 'ZRS', or 'GZRS'."
  type        = string
  default     = "LRS"
}
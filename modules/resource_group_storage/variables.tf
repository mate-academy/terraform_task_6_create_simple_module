variable "resource_group_name" {
  type        = string
  description = "Name of the Azure Resource Group."
}

variable "location" {
  type        = string
  description = "Azure region where resources will be created."
  default     = "East US"
}

variable "storage_account_name" {
  type        = string
  description = "Name of the storage account. Must be globally unique."
}

variable "account_tier" {
  type        = string
  description = "Tier of the storage account (e.g., Standard, Premium)."
  default     = "Standard"
}

variable "account_replication_type" {
  type        = string
  description = "Replication type for the storage account (e.g., LRS, GRS)."
  default     = "LRS"
}
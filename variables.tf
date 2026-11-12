variable "resource_group_name" {
  description = "Name of the Azure resource group."
  type        = string
  default     = "rg-resource-group-storage"
}

variable "location" {
  description = "Azure region for the resource group and storage account."
  type        = string
  default     = "swedencentral"
}

variable "storage_account_name" {
  description = "Globally unique name of the Azure storage account."
  type        = string
}

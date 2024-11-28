variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "task6"
}

variable "location" {
  description = "Resource group location"
  type        = string
  default     = "East US"
}

variable "storage_account_name" {
  description = "Storage account name"
  type        = string
  default     = "task6-storage-account"
}

variable "resource_group_name" {
  type        = string
  description = "RG name"
}

variable "location" {
  type        = string
  description = "Azure region"
  default     = "westeurope"
}

variable "storage_account_name" {
  type        = string
  description = "Storage name (3-24 chars, lowercase letters + digits only)"
}

variable "container_name" {
  type        = string
  description = "Container name"
  default     = "tfstate"
}

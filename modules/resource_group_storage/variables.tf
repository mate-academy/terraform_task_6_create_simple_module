variable "resource_group_name" {
  description = "The name of the resource group"
  default     = "materg"
  type        = string

}

variable "location" {
  description = "The location for all resources."
  default     = "westeurope"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account"
  default     = "matestorageacc"
  type        = string
}

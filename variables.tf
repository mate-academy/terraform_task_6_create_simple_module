variable "resource_group_name" {
  type        = string
  description = "Name of the resource group to create."
  default     = "mate-task6-rg"
}

variable "location" {
  type        = string
  description = "Azure region where the resources will be created."
  default     = "North Europe"
}

variable "storage_account_name" {
  type        = string
  description = "Globally unique name of the storage account."
  default     = "matetask6savlp"
}

variable "tags" {
  type        = map(string)
  description = "Tags applied to the created resources."
  default = {
    project = "mate-terraform-task-6"
  }
}

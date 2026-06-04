variable "resource_group_name" {
  default = "tfvmexResourceGroupName"
  description = "Name of the resource group"
  type        = string
}
variable "storage_account_name" {
  default = "tfvmexstorage"
  description = "Name of the storage account"
  type        = string
}
variable "location" {
  description = "Azure region"
  type        = string
  default     = "centralus"
}
variable "account_tier" {
  description = "Storage account tier"
  type        = string
  default     = "Standard"
}
variable "account_replication_type" {
  description = "Replication type"
  type        = string
  default     = "LRS"
}

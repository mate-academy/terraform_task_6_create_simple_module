variable "resource_group_name" {
    type        = string
    default     = "value"
}

variable "location" {
    type        = string
    default     = "East US"
}

variable "storage_account_name" {
    type        = string
    default     = "valuestorageacct"
}

variable "account_tier" {
    type        = string
    default     = "Standard"
}

variable "account_replication_type" {
    type        = string
    default     = "LRS"
}
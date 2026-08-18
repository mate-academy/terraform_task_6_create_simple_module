variable "resource_group_name" {
  type = string
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "storage_account_name" {
  type = string
}

variable "container_name" {
  type    = string
  default = "data"
}

variable "tags" {
  type    = map(string)
  default = {}
}
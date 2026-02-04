variable "resource_group_name" {
  type    = string
  default = "tf-modules-whatislavx-rg"
}

variable "storage_account_name" {
  default = "tfmoduleswhatislavxsa"
  type    = string
}

variable "location" {
  type    = string
  default = "France Central"
}

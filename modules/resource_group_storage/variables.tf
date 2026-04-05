variable "resource_group_name" {
  description = "Имя группы ресурсов"
  type        = string
}

variable "location" {
  description = "Регион Azure (например, West Europe)"
  type        = string
  default     = "West Europe"
}

variable "storage_account_name" {
  description = "Уникальное имя Storage Account (только строчные буквы и цифры, 3-24 символа)"
  type        = string
}

locals {
  strg_acc_name = "${var.strg_ac_name_prefix}${random_string.strg_name.result}${random_integer.strg_name.result}"
}

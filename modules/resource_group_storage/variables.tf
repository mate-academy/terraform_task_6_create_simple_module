variable "res_gr_name" {
  description = "Resource group name"
  default     = "group1"
}

variable "region" {
  description = "Azure Region"
  default     = "uksouth"
  validation {
    condition = contains(
      [
        "eastus", "eastus2", "southcentralus", "westus2", "westus3", "australiaeast", "southeastasia", "northeurope", "swedencentral", "uksouth", "westeurope",
        "centralus", "southafricanorth", "centralindia", "eastasia", "japaneast", "koreacentral", "canadacentral", "francecentral", "germanywestcentral",
        "italynorth", "norwayeast", "polandcentral", "spaincentral", "switzerlandnorth", "mexicocentral", "uaenorth", "brazilsouth", "israelcentral", "qatarcentral",
        "centralusstage", "eastusstage", "eastus2stage", "northcentralusstage", "southcentralusstage", "westusstage", "westus2stage", "asia", "asiapacific",
        "australia", "brazil", "canada", "europe", "france", "germany", "global", "india", "israel", "italy", "japan", "korea", "newzealand", "norway",
        "poland", "qatar", "singapore", "southafrica", "sweden", "switzerland", "uae", "uk", "unitedstates", "unitedstateseuap", "eastasiastage",
        "southeastasiastage", "brazilus", "eastusstg", "northcentralus", "westus", "japanwest", "jioindiawest", "centraluseuap", "eastus2euap",
        "westcentralus", "southafricawest", "australiacentral", "australiacentral2", "australiasoutheast", "jioindiacentral", "koreasouth", "southindia",
        "westindia", "canadaeast", "francesouth", "germanynorth", "norwaywest", "switzerlandwest", "ukwest", "uaecentral", "brazilsoutheast"
      ], var.region
    )
    error_message = (
      <<EOF
      The region name must be one of the allowed regions.

      Follow the Link to see available region Names
      https://github.com/YegorVolkov/az_regions
      EOF
    )
  }
}

variable "strg_ac_name_prefix" {
  description = "Storage Account Name Prefix"
  type        = string
  default     = "storage"
  validation {
    condition = (
      length(var.strg_ac_name_prefix) <= 16 &&
      can(regex("^[a-z]+$", var.strg_ac_name_prefix))
    )
    error_message = "The storage account prefix must be up to 16 characters in length & contain only lowercase characters."
  }
}

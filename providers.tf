terraform {
  required_version = ">= 1.5.0"

  cloud {
    organization = "1ntact"
    workspaces {
      name = "resource-group-storage-demo"
    }
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

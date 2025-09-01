terraform {
  required_version = ">= 0.12"
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "<= 3.71.0"
    }        
  }

  backend "azurerm" {
    resource_group_name  = var.resource_group
    storage_account_name = var.storage_acct_name
    container_name       = var.storage_container_name
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
    skip_provider_registration = true
    features {}
}

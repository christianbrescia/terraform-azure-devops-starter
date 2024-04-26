#Set the terraform required version
terraform {
  required_version = ">= 0.12.6"
  required_providers {
    azurerm = {
      required_version = "~>1.44"
    }
  }
}

# Configure the Azure Provider
provider "azurerm" {
  features {}
}

# Data

# Make client_id, tenant_id, subscription_id and object_id variables
data "azurerm_client_config" "current" {}
# Settings Block
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.57.0"
    }
    
    random = {
      source = "hashicorp/random"
      version = "3.7.2"
    }
  }
}

# Provider Block
provider "azurerm" {
  features {}
  subscription_id = "xxxxxxxxxxxxxxxx"
  client_id       = "xxxxxxxxxxxxxxxx"
  client_secret   = "xxxxxxxxxxxxxxxx"
  tenant_id       = "xxxxxxxxxxxxxxxx"
}
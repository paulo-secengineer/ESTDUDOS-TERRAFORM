terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.57.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.7.2"
    }
  }
}



provider "azurerm" {
    features {}
    subscription_id = ""
  client_id       = ""
  client_secret   = ""
  tenant_id       = ""
  
}

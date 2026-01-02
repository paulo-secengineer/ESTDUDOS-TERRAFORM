# Settings Block
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.74.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
}


# Terraform Modules Block 
module "storage_module" {
  source = "./storage_module"
}

# Terraform Output Values Block
output "storage_account_id" {
  value = module.storage_module.storage_account_id
}

# Module Resource Group (Import)
module "rg_module" {
  source = "./resource_group"
}


#  Chamada do Módulo de DNS
module "dns_zone_module" {
  source   = "./dns_zone"
  dns_name = "lab03.com"
  rg_name  = "rg-lab03-data-block-portal" 
}

#  Output para aparecer na tela
output "dns_id" {
  value = module.dns_zone_module.dns_id
}
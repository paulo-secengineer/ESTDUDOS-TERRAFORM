

# Modulo Resource Group
module "rg-import" {
    source = "./resource_group"  
}

# Module Public Ip
module "pip-module" {
  source = "./public_ip"
}
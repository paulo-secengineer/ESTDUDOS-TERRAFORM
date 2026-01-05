# Terraform Data Block (Resource Group)
data "azurerm_resource_group" "rg_portal" {
  name = "rg-lab03-data-block-portal"
}

# Terraform Local Variables Block
locals {
  storage_account_sku = "Standard"
}


# Terraform Resource Block (Storage Account)
resource "azurerm_storage_account" "storage_tftec" {
  name                     = "lab03${random_string.resource_code.result}"
  resource_group_name      = data.azurerm_resource_group.rg_portal.name
  location                 = data.azurerm_resource_group.rg_portal.location
  account_tier             = local.storage_account_sku
  account_replication_type = var.account_replication_type

  tags = {
    environment = "staging"
  }
}

# Terraform Input Variables Block
variable "account_replication_type" {
  description = "Tipo da Replica da Storage"
  type        = string
  default     = "GRS"
}

# Terraform Output Values Block
output "storage_account_id" {
  value = azurerm_storage_account.storage_tftec.id
}

# Radom String Block
resource "random_string" "resource_code" {
  length  = 5
  special = false
  upper   = false
}




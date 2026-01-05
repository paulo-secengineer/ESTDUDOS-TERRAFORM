# Bloco de resource de DNS zone
resource "azurerm_dns_zone" "dns_zone" {
  name = var.dns_name
  resource_group_name = var.rg_name
}
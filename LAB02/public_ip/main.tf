resource "azurerm_public_ip" "pip-import" {
  allocation_method       = "Static"
  ddos_protection_mode    = "VirtualNetworkInherited"
  ddos_protection_plan_id = null
  domain_name_label       = null
  domain_name_label_scope = null
  edge_zone               = null
  idle_timeout_in_minutes = 4
  ip_tags                 = {}
  ip_version              = "IPv4"
  location                = "westeurope"
  name                    = "pip-lab-import-portal"
  public_ip_prefix_id     = null
  resource_group_name     = "rg-lab-import-portal"
  reverse_fqdn            = null
  sku                     = "Standard"
  sku_tier                = "Regional"
  tags                    = {
    funciona = "SIM"
  }
  zones                   = ["1", "2", "3"]
}

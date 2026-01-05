# Resource Group Import without automatic code generation 
import {
  to = module.rg_module.azurerm_resource_group.rg-import
  id = "/subscriptions/244b05e9-ea65-4ac7-bd12-d350c3cb265b/resourceGroups/rg-lab03-data-block-portal"
}

# Public IP Import with automatic code generation 
import {
  to = azurerm_public_ip.pip-lab03-import
  id = "/subscriptions/244b05e9-ea65-4ac7-bd12-d350c3cb265b/resourceGroups/rg-lab03-data-block-portal/providers/Microsoft.Network/publicIPAddresses/pip-lab03-import"
}
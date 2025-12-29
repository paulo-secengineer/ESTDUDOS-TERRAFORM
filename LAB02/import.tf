#Import do Resource Group
import {
    to = module.rg-import.azurerm_resource_group.rg-import
    id ="/subscriptions/244b05e9-ea65-4ac7-bd12-d350c3cb265b/resourceGroups/rg-lab-import-portal"
}

#Import Public Ip
import {
  to =  module.pip-module.azurerm_public_ip.pip-import
  id = "/subscriptions/244b05e9-ea65-4ac7-bd12-d350c3cb265b/resourceGroups/rg-lab-import-portal/providers/Microsoft.Network/publicIPAddresses/pip-lab-import-portal"
}
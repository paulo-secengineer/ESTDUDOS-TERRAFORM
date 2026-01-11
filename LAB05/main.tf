#Module Block
module "naming" {
  source  = "Azure/naming/azurerm"
  suffix = [ "LAB05" ]
}

#Resource Block
resource "azurerm_resource_group" "rg-lab" {
  name     = module.naming.resource_group.name
  location = var.location
}


#NSG Block
resource "azurerm_network_security_group" "NSG-lab" {
  name                = module.naming.network_security_group.name
  location            = azurerm_resource_group.rg-lab.location
  resource_group_name = azurerm_resource_group.rg-lab.name
  security_rule {
    name                       = "AllowSSH"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = var.my_public_ip
    destination_address_prefix = "*"
  }
  }

#Association Block
resource "azurerm_subnet_network_security_group_association" "dsn-subnet" {
  subnet_id                 = azurerm_subnet.subnet-lab.id
  network_security_group_id = azurerm_network_security_group.NSG-lab.id
}

#Vnet Block
resource "azurerm_virtual_network" "vnet-lab" {
  name                = module.naming.virtual_network.name
  location            = azurerm_resource_group.rg-lab.location
  resource_group_name = azurerm_resource_group.rg-lab.name
  address_space       = var.vnet_address_space
}

#Subnet Block
resource "azurerm_subnet" "subnet-lab" {
  name                 = module.naming.subnet.name
  resource_group_name  = azurerm_resource_group.rg-lab.name
  virtual_network_name = azurerm_virtual_network.vnet-lab.name
  address_prefixes     = var.subnet_address_prefix
}





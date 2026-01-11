#Output vnet Block
output "vnet_id" {
    value = azurerm_virtual_network.vnet-lab.id
    description = "Saída do ID da vnet"  
}

#Output SSH firewall_ip Block
output "my_public_ID" {
    value =  var.my_public_ip
    description = "Saída doo meu IP publico"
}
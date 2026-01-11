#variable Location

variable "location" {
    type = string
    default = "west europe"
    description = "região da Azure"     
}

#Variable space address IP VNET
variable "vnet_address_space" {
      type = list(string)
      default = [ "10.0.0.0/16" ]
}

#Variable space address 
variable "subnet_address_prefix" {
    type = list(string)
    default = [ "10.0.1.0/24" ]
  
}

#Variable source port my_IP
variable "my_public_ip" {
    type = string
    default = "89.114.66.247"
    description = "meu ip publico para acesso seguro"  
}
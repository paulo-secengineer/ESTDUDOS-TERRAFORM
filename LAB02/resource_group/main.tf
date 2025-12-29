resource "azurerm_resource_group" "rg-import" {
  name     = "rg-lab-import-portal"
  location = "West Europe"
  tags = {
     import = "OK"
  }
}


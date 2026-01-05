resource "azurerm_resource_group" "rg-import" {
  name = "rg-lab03-data-block-portal"
  location = "westeurope"
  tags = {
    import = "OK"
  }
}
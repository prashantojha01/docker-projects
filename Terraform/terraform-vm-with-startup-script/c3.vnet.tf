resource "azurerm_virtual_network" "mytestvnet" {
  name                = "mytestvnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.mytestrg.location
  resource_group_name = azurerm_resource_group.mytestrg.name
}
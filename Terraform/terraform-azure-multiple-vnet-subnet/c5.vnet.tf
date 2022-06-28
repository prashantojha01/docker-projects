resource "azurerm_virtual_network" "mytestvnet" {
  count               = 2
  name                = "mytestvnet-${count.index}"
  resource_group_name = azurerm_resource_group.mytestrg.name
  location            = azurerm_resource_group.mytestrg.location
  address_space       = ["10.0.0.0/16"]
}
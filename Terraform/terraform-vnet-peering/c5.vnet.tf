resource "azurerm_virtual_network" "prashantnet1" {
  name                = "prashantvnet1"
  resource_group_name = azurerm_resource_group.mytestrg.name
  location            = azurerm_resource_group.mytestrg.location
  address_space       = ["10.0.1.0/24"]
}

resource "azurerm_virtual_network" "prashantvnet2" {
  name                = "prashantvnet2"
  resource_group_name = azurerm_resource_group.mytestrg.name
  location            = azurerm_resource_group.mytestrg.location
  address_space       = ["10.0.2.0/24"]
}
resource "azurerm_subnet" "mytestsubnet" {
  count                = 2
  name                 = "mytestsubnet-${count.index}"
  virtual_network_name = azurerm_virtual_network.mytestvnet[count.index].name
  address_prefixes     = ["10.0.2.0/24"]
  resource_group_name  = azurerm_resource_group.mytestrg.name
}
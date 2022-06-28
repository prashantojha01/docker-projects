resource "azurerm_network_interface" "mynic" {
  name                = "mynic"
  location            = azurerm_resource_group.mytestrg.location
  resource_group_name = azurerm_resource_group.mytestrg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.mytestsubnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.myip.id
  }
}
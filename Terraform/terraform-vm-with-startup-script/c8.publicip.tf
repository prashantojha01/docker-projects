resource "azurerm_public_ip" "myip" {
  name                = "myip"
  resource_group_name = azurerm_resource_group.mytestrg.name
  location            = azurerm_resource_group.mytestrg.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}
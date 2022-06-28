resource "azurerm_subnet" "mytestsubnet" {
  name                 = "mytestsubnet"
  resource_group_name  = azurerm_resource_group.mytestrg.name
  virtual_network_name = azurerm_virtual_network.mytestvnet.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_network_security_group" "mynsg" {
  name                = "mynsg"
  location            = azurerm_resource_group.mytestrg.location
  resource_group_name = azurerm_resource_group.mytestrg.name
}

####asociate nsg and subnet
resource "azurerm_subnet_network_security_group_association" "nsg_association" {
  subnet_id                 = azurerm_subnet.mytestsubnet.id
  network_security_group_id = azurerm_network_security_group.mynsg.id
}

locals {
  web_inbound_ports_maps = {
    "100" : "80",
    "110" : "22"
  }
}

# nsg inbound rule
resource "azurerm_network_security_rule" "myrule" {
  for_each                    = local.web_inbound_ports_maps
  name                        = "port_${each.value}"
  priority                    = each.key
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = each.value
  source_address_prefix       = "20.120.96.145"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.mytestrg.name
  network_security_group_name = azurerm_network_security_group.mynsg.name
}
resource "azurerm_virtual_network_peering" "peer_example1" {
  name                      = "peer_example1"
  resource_group_name       = azurerm_resource_group.mytestrg.name
  virtual_network_name      = azurerm_virtual_network.mytestvnet.name
  remote_virtual_network_id = azurerm_virtual_network.mytestvnet1.id
}
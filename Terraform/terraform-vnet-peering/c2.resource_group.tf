resource "azurerm_resource_group" "mytestrg" {
  name     = var.resource_group_prefix
  location = var.resource_group_location
}
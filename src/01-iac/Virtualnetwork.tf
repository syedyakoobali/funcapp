resource "azurerm_virtual_network" "vnet" {
  name                = "abc-pi-vnet-${var.environment}-01"
  resource_group_name = azurerm_resource_group.RG.name
  location            = azurerm_resource_group.RG.location
  address_space       = var.vnet_cidr_range

  tags = {
    environment = var.environment
  }
}

resource "azurerm_subnet" "logicapp" {
 name                 = "abc-pi-la-${var.environment}-01"
 resource_group_name  = azurerm_resource_group.RG.name
 virtual_network_name = azurerm_virtual_network.vnet.name
 address_prefixes     = var.la
 enforce_private_link_endpoint_network_policies = true
}
resource "azurerm_subnet" "pep" {
  name                 = "abc-pi-pep-${var.environment}-01"
  resource_group_name  = azurerm_resource_group.RG.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.pep
  enforce_private_link_endpoint_network_policies = true
}
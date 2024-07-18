resource "azurerm_virtual_network" "this" {
  name                = "vnet-prod-we-csedemo"
  address_space       = ["10.0.0.0/20"]
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
}

resource "azurerm_subnet" "this" {
  name                 = "sn-prod-we-csedemo-server"
  resource_group_name  = azurerm_resource_group.this.name
  virtual_network_name = azurerm_virtual_network.this.name
  address_prefixes     = ["10.0.0.0/26"]

  service_endpoints = ["Microsoft.Storage"]
}

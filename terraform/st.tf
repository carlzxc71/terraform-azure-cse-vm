resource "azurerm_storage_account" "this" {
  name                     = "stprodwecsedemo"
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  network_rules {
    default_action             = "Deny"
    virtual_network_subnet_ids = [azurerm_subnet.this.id]
    ip_rules                   = [var.public_ip]
  }

}

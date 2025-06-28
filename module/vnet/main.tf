resource "azurerm_virtual_network" "vnet" {
  name                = "blg-vnet"
  location            = "Japan East"
  resource_group_name = "blg-rg"
  address_space       = ["10.0.0.0/16"]

}
resource "azurerm_subnet" "subnet" {
  name                 = "blg-subnet"
  resource_group_name  = "blg-rg"
  virtual_network_name = "blg-vnet"
  address_prefixes     = ["10.0.1.0/24"]

}
resource "azurerm_public_ip" "pip" {
  name                = "blg-pip"
  resource_group_name = "blg-rg"
  location            = "Japan East"
  allocation_method   = "Dynamic"
  sku                 = "Basic"
}

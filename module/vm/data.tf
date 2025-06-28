data "azurerm_public_ip" "pip" {
  name                = "blg-pip"
  resource_group_name = "blg-rg"
}

data "azurerm_subnet" "subnet" {
  name                 = "blg-subnet"
  virtual_network_name = "blg-vnet"
  resource_group_name  = "blg-rg"
}


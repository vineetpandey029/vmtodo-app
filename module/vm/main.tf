

resource "azurerm_network_interface" "nic" {
  name                = "blg-nic"
  location            = "Japan East"
  resource_group_name = "blg-rg"

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = data.azurerm_public_ip.pip.id
  }
}

resource "azurerm_linux_virtual_machine" "vm" {
  name                = "blg-frontendvm"
  resource_group_name = "blg-rg"
  location            = "Japan East"
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password      = "lucknow@123"
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.nic.id,
    

  ]



  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}

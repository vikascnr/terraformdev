resource "azurerm_network_interface" "devtestlb" {
  name                = "devtestlb-nic"
  location            = var.location
  resource_group_name = var.resource_group

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.devtestlb.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "devtestlb" {
  name                = "devtest"
  resource_group_name = var.resource_group
  location            = var.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password      = "Vikash@12345"
  network_interface_ids = [
    azurerm_network_interface.devtestlb.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}
resource "azurerm_virtual_network" "devtestlb" {
  name                = "Vnet1"
  location            = var.location
  resource_group_name = var.resource_group
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

    subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }
}
resource "azurerm_subnet" "devtestlb" {
  name                 = "internal"
  resource_group_name  = var.resource_group
  virtual_network_name = azurerm_virtual_network.devtestlb.name
  address_prefixes     = ["10.0.2.0/24"]
}
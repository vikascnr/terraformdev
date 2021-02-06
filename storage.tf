resource "azurerm_storage_account" "devtestlb" {
  name                     = "devtestlb"
  resource_group_name      = var.resource_group
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
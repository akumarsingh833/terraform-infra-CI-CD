resource "azurerm_network_interface" "nic01" {
  for_each = var.nic
  name                = each.value.nic_name
  location            = each.value.nic_location
  resource_group_name = each.value.resource_g_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.example.id
    private_ip_address_allocation = "Dynamic"
  }
}
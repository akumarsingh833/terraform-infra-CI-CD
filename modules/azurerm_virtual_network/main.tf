resource "azurerm_virtual_network" "vnet1" {

    for_each = var.vnet_ka_details
  name                = each.value.vnet_name
  location            = each.value.vnet_location
  resource_group_name = each.value.rg_name
  address_space       = each.value.add_space
#   dns_servers         = ["10.0.0.4", "10.0.0.5"]
}
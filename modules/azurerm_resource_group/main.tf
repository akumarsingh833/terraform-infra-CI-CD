resource "azurerm_resource_group" "RG1" {
  # mujhe value do mai resource create kar dunga
  for_each = var.rgs_adi

  name     = each.value.name
  location = each.value.location
}
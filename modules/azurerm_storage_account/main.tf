resource "azurerm_storage_account" "stg_account" {

  for_each = var.stgs_adi

  name                     = each.value.sa_name
  resource_group_name      = each.value.rg_name
  location                 = each.value.location
  account_tier             = each.value.tier
  account_replication_type = each.value.rep_type

}
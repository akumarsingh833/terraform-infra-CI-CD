module "rg_call" {
  source = "../../modules/azurerm_resource_group"
  rgs_adi = var.rgs


}

module "stg_call" {
    depends_on = [module.rg_call]
  source = "../../modules/azurerm_storage_account"
stgs_adi = var.stgs
}
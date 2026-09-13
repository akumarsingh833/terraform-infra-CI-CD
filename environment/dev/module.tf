module "rg_call" {
  source = "../../modules/azurerm_resource_group"
  #   Child module के rgs_adi variable में parent environment के var.rgs की value डाल दो
  rgs_adi = var.rgs


}

# module "stg_call" {
#     depends_on = [module.rg_call]
#   source = "../../modules/azurerm_storage_account"
# stgs_adi = var.stgs
# }

module "vnet_call" {
  depends_on      = [module.rg_call]
  source          = "../../modules/azurerm_virtual_network"
  vnet_ka_details = var.vnett
}

module "subnet_call" {
    depends_on = [module.vnet_call]
    source = "../../modules/azurerm_subnet"
    subnets = var.subnett
}

module "pip_call" {
  depends_on      = [module.rg_call]
    source = "../../modules/azurerm_public_ip"
    pip = var.pip_details
}


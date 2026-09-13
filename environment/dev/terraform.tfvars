rgs = {
  rg1 = {
    name     = "rg-addy"
    location = "east us"
  }

}

stgs = {
  sa1 = {
    sa_name  = "adityasa8"
    rg_name  = "rg-addy"
    location = "eastus"
    tier     = "Standard"
    rep_type = "LRS"

  }

}


vnett = {
  vnet1 = {
    vnet_name     = "vnet_04"
    vnet_location = "central india"
    rg_name       = "rg-addy"
    add_space     = ["10.0.0.0/16"]
  }
}

subnett = {
  subnet01 = {
  subnet_name = "subnet_04"
  rg_name = "rg-addy"
  vnet_name = "vnet_04"
  add_prefix = ["10.0.1.0/24"]
  }
}

nic_details = {
    nic1 = {
        nic_name = "nic-04"
        nic_location = "central india"
        resource_g_name = "rg-addy"
    }
}

pip_details = {
        pip1 = {
            pip_name = "pip-04"
            rg_name = "rg-addy"
            pip_location = "central india"
            method = "Static"
        }
    }
tusharRGvarsM = {
  tusharRG1_Prod = {
    name     = "tusharRG1_Prod"
    location = "France Central"
  }
}

tusharstoragevarsM = {
  tusharstorage193p = {
    name                = "tusharstorage193p"
    location            = "France Central"
    resource_group_name = "tusharRG1_Prod"
  }
#   tusharstorage194p = {
#     name                = "tusharstorage194p"
#     location            = "France Central"
#     resource_group_name = "tusharRG1_Prod"
#   }
}

tusharContainervarsM = {
  tusharcontainer1p = {
    name                 = "tusharcontainer1p"
    storage_account_id   = ""
    storage_account_name = "tusharstorage193p"
  }
#   tusharcontainer2p = {
#     name                 = "tusharcontainer2p"
#     storage_account_id   = ""
#     storage_account_name = "tusharstorage194p"
#   }
}

tusharvnetvarsM = {
  tusharvnet1_Prod = {
    name                = "tusharvnet1_Prod"
    location            = "France Central"
    resource_group_name = "tusharRG1_Prod"
    address_space       = ["10.1.0.0/16"]
  }
}

tusharsubnetsvarM = {
  tusharsubnet1_Prod = {
    name                 = "tusharsubnet1_Prod"
    resource_group_name  = "tusharRG1_Prod"
    virtual_network_name = "tusharvnet1_Prod"
    address_prefixes     = ["10.1.1.0/24"]
  }
  # tusharsubnet2_Prod = {
  #   name                 = "tusharsubnet2_Prod"
  #   resource_group_name  = "tusharRG1_Prod"
  #   virtual_network_name = "tusharvnet1_Prod"
  #   address_prefixes     = ["10.1.2.0/24"]
  # }
  AzureBastionSubnet = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "tusharRG1_Prod"
    virtual_network_name = "tusharvnet1_Prod"
    address_prefixes     = ["10.1.3.0/24"]
  }
  tusharsubnet3_Prod = {
    name                 = "tusharsubnet3_Prod"
    resource_group_name  = "tusharRG1_Prod"
    virtual_network_name = "tusharvnet1_Prod"
    address_prefixes     = ["10.1.4.0/24"]
  }
  tusharwindowvmsubnet1_Prod = {
    name                 = "tusharwindowvmsubnet1_Prod"
    resource_group_name  = "tusharRG1_Prod"
    virtual_network_name = "tusharvnet1_Prod"
    address_prefixes     = ["10.1.5.0/24"]
  }
  tusharsubnetwindowsvmss_Prod = {
    name                 = "tusharsubnetwindowsvmss_Prod"
    resource_group_name  = "tusharRG1_Prod"
    virtual_network_name = "tusharvnet1_Prod"
    address_prefixes     = ["10.1.6.0/24"]
  }
}

tusharkeyvaultsvarsM = {
  tusharkeyvault2Prod = {
    name                = "tusharkeyvault2Prod"
    location            = "France Central"
    sku_name            = "standard"
    resource_group_name = "tusharRG1_Prod"
    tenant_id           = ""
    object_id           = ""
    value               = ""
    key_vault_id        = ""
  }
}

tusharvmvarsM = {
  tusharvm1Prod = {
    name                            = "tusharvm1Prod"
    value                           = ""
    key_vault_id                    = ""
    resource_group_name             = "tusharRG1_Prod"
    location                        = "France Central"
    size                            = "Standard_F1"
    nic_name                        = "tusharnic1_Prod"
    admin_username                  = ""
    admin_password                  = ""
    disable_password_authentication = false
    network_interface_ids           = []
    keyvault_name                   = "tusharkeyvault2Prod"
    nic_name                        = "tusharnic1_Prod"
  }
  # tusharvm2Prod = {
  #   name                            = "tusharvm2Prod"
  #   value                           = ""
  #   key_vault_id                    = ""
  #   keyvault_name                   = "tusharkeyvault2Prod"
  #   resource_group_name             = "tusharRG1_Prod"
  #   location                        = "France Central"
  #   size                            = "Standard_F1"
  #   nic_name                        = "tusharnic2_Prod"
  #   admin_password                  = ""
  #   admin_username                  = ""
  #   disable_password_authentication = false
  #   network_interface_ids           = []
  #   nic_name                        = "tusharnic2_Prod"
  # }
}

tusharnicvarsM = {
  tusharnic1_Prod = {
    name                          = "tusharnic1_Prod"
    location                      = "France Central"
    resource_group_name           = "tusharRG1_Prod"
    ip_configuration_name         = "tusharnic1_Prodip"
    private_ip_address_allocation = ""
    # public_ip_address_id          = ""
    subnet_id   = ""
    subnet_name = "tusharsubnet1_Prod"
    # public_ip_name                = "tusharpublicip1"
    nsg_name = "tusharnsgallowssh22"
  }
  # tusharnic2_Prod = {
  #   name                          = "tusharnic2_Prod"
  #   location                      = "France Central"
  #   resource_group_name           = "tusharRG1_Prod"
  #   ip_configuration_name         = "tusharnic2_Prodip"
  #   private_ip_address_allocation = ""
  #   # public_ip_address_id          = ""
  #   subnet_id   = ""
  #   subnet_name = "tusharsubnet2_Prod"
  #   # public_ip_name                = "tusharpublicip2"
  #   # nsg_name = "tusharnsgallowssh22"
  # }
  tusharlinuxvmssnic_Prod = {
    name                          = "tusharlinuxvmssnic_Prod"
    location                      = "France Central"
    resource_group_name           = "tusharRG1_Prod"
    ip_configuration_name         = "tusharlinuxvmssip_config_Prod"
    private_ip_address_allocation = ""
    subnet_id                     = ""
    subnet_name                   = "tusharsubnet3_Prod"
    # nsg_name                      = "tusharnsgallowssh22"
  }
  tusharwindowsvmnic1_Prod = {
    name                          = "tusharwindowsvmnic1_Prod"
    location                      = "France Central"
    resource_group_name           = "tusharRG1_Prod"
    ip_configuration_name         = "tusharwindowsvm1ipconfig_Prod"
    private_ip_address_allocation = ""
    subnet_id                     = ""
    subnet_name                   = "tusharwindowvmsubnet1_Prod"
    # nsg_name                      = "tusharnsgallowssh22"
  }
  tusharwinvmssnic1_Prod = {
    name                          = "tusharwinvmssnic1_Prod"
    location                      = "France Central"
    resource_group_name           = "tusharRG1_Prod"
    ip_configuration_name         = "tusharwinvmss1ipconfig_Prod"
    private_ip_address_allocation = ""
    subnet_id                     = ""
    subnet_name                   = "tusharsubnetwindowsvmss_Prod"
  }
}

tusharpublicipvarsM = {
  #   tusharpublicip1_Prod = {
  #     name                = "tusharpublicip1_Prod"
  #     location            = "France Central"
  #     resource_group_name = "tusharRG1_Prod"
  #     allocation_method   = ""
  #   }
  #   tusharpublicip2_Prod = {
  #     name                = "tusharpublicip2_Prod"
  #     location            = "France Central"
  #     resource_group_name = "tusharRG1_Prod"
  #     allocation_method   = ""
  #   }
  tusharpublicipbastion = {
    name                = "tusharbastionpublicip"
    location            = "France Central"
    resource_group_name = "tusharRG1_Prod"
    allocation_method   = ""
  }
  tusharlbpublicip_Prod = {
    name                = "tusharlbpublicip_Prod"
    location            = "France Central"
    resource_group_name = "tusharRG1_Prod"
    allocation_method   = ""
  }
}

tusharnsgvarsM = {
  tusharnsgallowssh22_Prod = {
    name                         = "tusharnsgallowssh22_Prod"
    location                     = "France Central"
    resource_group_name          = "tusharRG1_Prod"
    rule_name                    = "allowsshvM"
    priority                     = 101
    direction                    = "Inbound"
    access                       = "Allow"
    protocol                     = "*"
    source_port_ranges           = "0-65535"
    destination_port_ranges      = "22"
    source_address_prefixes      = "0.0.0.0/0"
    destination_address_prefixes = "0.0.0.0/0"
  }
}

tusharbastionhostsvarsM = {
  tusharbastion1 = {
    name                  = "tusharbastion1"
    location              = "France Central"
    resource_group_name   = "tusharRG1_Prod"
    subnet_name           = "AzureBastionSubnet"
    public_ip_name        = "tusharbastionpublicip"
    virtual_network_name  = "tusharvnet1_Prod"
    ipconfig_bastion_name = "tusharbastionipconfig"
    public_ip_address_id  = ""
    subnet_id             = ""
  }
}


tusharlbvarsM = {
  tusharlb1_Prod = {
    name                 = "tusharlb1_Prod"
    location             = "France Central"
    resource_group_name  = "tusharRG1_Prod"
    publicip_name        = "tusharlbpublicip_Prod"
    public_ip_address_id = ""
  }
}

tusharlb_backendpool_varM = {
  tusharlb_backendpool1_Prod = {
    name            = "tusharlb_backendpool1_Prod"
    loadbalancer_id = ""
    lb_name         = "tusharlb1_Prod"
  }
}

tusharlb_backendpool_addressvarsM = {
  tusharbackend_address1_Prod = {
    name                    = "tusharbackend_address1_Prod"
    backend_address_pool_id = ""
    backendpool_name        = "tusharlb_backendpool1_Prod"
    ip_address              = ""
    virtual_network_id      = ""
    vm_name                 = "tusharvm1Prod"
    virtual_network_name    = "tusharvnet1_Prod"
  }
  # tusharbackend_address2_Prod= {
  #   name                    = "tusharbackend_address2_Prod"
  #   backend_address_pool_id = ""
  #   backendpool_name        = "tusharlb_backendpool1_Prod"
  #   ip_address              = ""
  #   virtual_network_id      = ""
  #   vm_name                 = "tusharvm2Prod"
  #   virtual_network_name    = "tusharvnet1_Prod"
  # }
}

tusharlb_VMs_backendvarsM = {
  tusharvm1Prod = {
    name                = "tusharvm1Prod"
    resource_group_name = "tusharRG1_Prod"
  }
  # tusharvm2Prod = {
  #   name                = "tusharvm2Prod"
  #   resource_group_name = "tusharRG1_Prod"
  # }
}

tusharvnet_lbvarsM = {
  tusharvnet1_Prod = {
    name                = "tusharvnet1_Prod"
    resource_group_name = "tusharRG1_Prod"
  }
}

tusharlb_healthprobevarsM = {
 tushar_http-probe_Prod = {
    name                = "tushar_http-probe_Prod"
    port                = 80
    lb_name             = "tusharlb1_Prod"
    protocol            = "Http"
    number_of_probes    = 2
    request_path        = "/health"
    interval_in_seconds = 10
    loadbalancer_id     = ""
  }
  tushar_tcp-probe_Prod = {
    name                = "tushar_tcp-probe_Prod"
    port                = 443
    protocol            = "Tcp"
    lb_name             = "tusharlb1_Prod"
    number_of_probes    = null
    request_path        = ""
    interval_in_seconds = null
    loadbalancer_id     = ""
  }
}

tusharlb_rulevarsM = {
  rule1 = {
    name                           = "tushar-rule-http_Prod"
    protocol                       = "Tcp"
    lb_name                        = "tusharlb1_Prod"
    frontend_ip_configuration_name = "tusharlb1_Prod-frontend_ip_config"
    frontend_port                  = 80
    backend_port                   = 80
    enable_tcp_reset               = true
    idle_timeout_in_minutes        = 4
    load_distribution              = "Default"
    loadbalancer_id                = ""
    backend_address_pool_ids       = []
    probe_id                       = ""
    probe_name                     = "tushar_tcp-probe_Prod"
    backendpool_name               = "tusharlb_backendpool1_Prod"
  }
  rule2 = {
    name                           = "tushar-rule-https_Prod"
    protocol                       = "Tcp"
    lb_name                        = "tusharlb1_Prod"
    frontend_ip_configuration_name = "tusharlb1_Prod-frontend_ip_config"
    frontend_port                  = 443
    backend_port                   = 443
    enable_tcp_reset               = false
    idle_timeout_in_minutes        = 4
    load_distribution              = "Default"
    loadbalancer_id                = ""
    backend_address_pool_ids       = []
    probe_id                       = ""
    probe_name                     = "tushar_tcp-probe_Prod"
    backendpool_name               = "tusharlb_backendpool1_Prod"
  }
}


tusharlinuxvmssvarsM = {
  linuxvmss1Prod = {
    name                            = "linuxvmss1Prod"
    resource_group_name             = "tusharRG1_Prod"
    location                        = "France Central"
    admin_username                  = ""
    admin_password                  = "tusharlinuxvmss1pass@21"
    disable_password_authentication = false
    sku                             = "Standard_F1"
    instances                       = 1
    nic_name                        = "tusharlinuxvmssnic_Prod"
    ip_configuration_name           = "tusharlinuxvmssip_config_Prod"
    primary                         = true
    subnet_id                       = ""
    subnet_name                     = "tusharsubnet3_Prod"
  }
}

tusharwindowsvmvarM = {
  winvm1Prod = {
    name                  = "winvm1Prod"
    resource_group_name   = "tusharRG1_Prod"
    location              = "France Central"
    size                  = "Standard_F1"
    admin_username        = ""
    admin_password        = "tusharwindowvm1@21pass"
    network_interface_ids = []
    nic_name              = "tusharwindowsvmnic1_Prod"
  }
}

tusharwindowsvmssvarsM = {
  wvmss1P= {
    name                  = "wvmss1P"
    resource_group_name   = "tusharRG1_Prod"
    location              = "France Central"
    sku                   = "Standard_F1"
    instances             = 1
    admin_username        = ""
    admin_password        = "tusharwinvmss1@21"
    nic_name              = "tusharwinvmssnic1_Prod"
    subnet_id             = ""
    subnet_name           = "tusharsubnetwindowsvmss_Prod"
    ip_configuration_name = "tusharwinvmss1ip_config_Prod"
    primary               = true
  }
}
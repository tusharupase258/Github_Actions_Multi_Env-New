tusharRGvarsM = {
  tusharRG1_dev = {
    name     = "tusharRG1_dev"
    location = "France Central"
  }
}

tusharstoragevarsM = {
  tusharstorage193dev = {
    name                = "tusharstorage193dev"
    location            = "France Central"
    resource_group_name = "tusharRG1_dev"
  }
  tusharstorage194dev = {
    name                = "tusharstorage194dev"
    location            = "France Central"
    resource_group_name = "tusharRG1_dev"
  }
}

tusharContainervarsM = {
  tusharcontainer1dev = {
    name                 = "tusharcontainer1dev"
    storage_account_id   = ""
    storage_account_name = "tusharstorage193dev"
  }
  tusharcontainer2dev = {
    name                 = "tusharcontainer2dev"
    storage_account_id   = ""
    storage_account_name = "tusharstorage194dev"
  }
}

tusharvnetvarsM = {
  tusharvnet1_dev = {
    name                = "tusharvnet1_dev"
    location            = "France Central"
    resource_group_name = "tusharRG1_dev"
    address_space       = ["10.1.0.0/16"]
  }
}

tusharsubnetsvarM = {
  tusharsubnet1_dev = {
    name                 = "tusharsubnet1_dev"
    resource_group_name  = "tusharRG1_dev"
    virtual_network_name = "tusharvnet1_dev"
    address_prefixes     = ["10.1.1.0/24"]
  }
  tusharsubnet2_dev = {
    name                 = "tusharsubnet2_dev"
    resource_group_name  = "tusharRG1_dev"
    virtual_network_name = "tusharvnet1_dev"
    address_prefixes     = ["10.1.2.0/24"]
  }
  AzureBastionSubnet = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "tusharRG1_dev"
    virtual_network_name = "tusharvnet1_dev"
    address_prefixes     = ["10.1.3.0/24"]
  }
  tusharsubnet3_dev = {
    name                 = "tusharsubnet3_dev"
    resource_group_name  = "tusharRG1_dev"
    virtual_network_name = "tusharvnet1_dev"
    address_prefixes     = ["10.1.4.0/24"]
  }
  tusharwindowvmsubnet1_dev = {
    name                 = "tusharwindowvmsubnet1_dev"
    resource_group_name  = "tusharRG1_dev"
    virtual_network_name = "tusharvnet1_dev"
    address_prefixes     = ["10.1.5.0/24"]
  }
  tusharsubnetwindowsvmss_dev = {
    name                 = "tusharsubnetwindowsvmss_dev"
    resource_group_name  = "tusharRG1_dev"
    virtual_network_name = "tusharvnet1_dev"
    address_prefixes     = ["10.1.6.0/24"]
  }
}

tusharkeyvaultsvarsM = {
  tusharkeyvault2dev = {
    name                = "tusharkeyvault2dev"
    location            = "France Central"
    sku_name            = "standard"
    resource_group_name = "tusharRG1_dev"
    tenant_id           = ""
    object_id           = ""
    value               = ""
    key_vault_id        = ""
  }
}

tusharvmvarsM = {
  tusharvm1dev = {
    name                            = "tusharvm1dev"
    value                           = ""
    key_vault_id                    = ""
    resource_group_name             = "tusharRG1_dev"
    location                        = "France Central"
    size                            = "Standard_F1"
    nic_name                        = "tusharnic1_dev"
    admin_username                  = ""
    admin_password                  = ""
    disable_password_authentication = false
    network_interface_ids           = []
    keyvault_name                   = "tusharkeyvault2dev"
    nic_name                        = "tusharnic1_dev"
  }
  # tusharvm2dev = {
  #   name                            = "tusharvm2dev"
  #   value                           = ""
  #   key_vault_id                    = ""
  #   keyvault_name                   = "tusharkeyvault2dev"
  #   resource_group_name             = "tusharRG1_dev"
  #   location                        = "France Central"
  #   size                            = "Standard_F1"
  #   nic_name                        = "tusharnic2_dev"
  #   admin_password                  = ""
  #   admin_username                  = ""
  #   disable_password_authentication = false
  #   network_interface_ids           = []
  #   nic_name                        = "tusharnic2_dev"
  # }
}

tusharnicvarsM = {
  tusharnic1_dev = {
    name                          = "tusharnic1_dev"
    location                      = "France Central"
    resource_group_name           = "tusharRG1_dev"
    ip_configuration_name         = "tusharnic1_devip"
    private_ip_address_allocation = ""
    # public_ip_address_id          = ""
    subnet_id   = ""
    subnet_name = "tusharsubnet1_dev"
    # public_ip_name                = "tusharpublicip1"
    nsg_name = "tusharnsgallowssh22"
  }
  tusharnic2_dev = {
    name                          = "tusharnic2_dev"
    location                      = "France Central"
    resource_group_name           = "tusharRG1_dev"
    ip_configuration_name         = "tusharnic2_devip"
    private_ip_address_allocation = ""
    # public_ip_address_id          = ""
    subnet_id   = ""
    subnet_name = "tusharsubnet2_dev"
    # public_ip_name                = "tusharpublicip2"
    # nsg_name = "tusharnsgallowssh22"
  }
  tusharlinuxvmssnic_dev = {
    name                          = "tusharlinuxvmssnic_dev"
    location                      = "France Central"
    resource_group_name           = "tusharRG1_dev"
    ip_configuration_name         = "tusharlinuxvmssip_config_dev"
    private_ip_address_allocation = ""
    subnet_id                     = ""
    subnet_name                   = "tusharsubnet3_dev"
    # nsg_name                      = "tusharnsgallowssh22"
  }
  tusharwindowsvmnic1_dev = {
    name                          = "tusharwindowsvmnic1_dev"
    location                      = "France Central"
    resource_group_name           = "tusharRG1_dev"
    ip_configuration_name         = "tusharwindowsvm1ipconfig_dev"
    private_ip_address_allocation = ""
    subnet_id                     = ""
    subnet_name                   = "tusharwindowvmsubnet1_dev"
    # nsg_name                      = "tusharnsgallowssh22"
  }
  tusharwinvmssnic1_dev = {
    name                          = "tusharwinvmssnic1_dev"
    location                      = "France Central"
    resource_group_name           = "tusharRG1_dev"
    ip_configuration_name         = "tusharwinvmss1ipconfig_dev"
    private_ip_address_allocation = ""
    subnet_id                     = ""
    subnet_name                   = "tusharsubnetwindowsvmss_dev"
  }
}

tusharpublicipvarsM = {
  #   tusharpublicip1_dev = {
  #     name                = "tusharpublicip1_dev"
  #     location            = "France Central"
  #     resource_group_name = "tusharRG1_dev"
  #     allocation_method   = ""
  #   }
  #   tusharpublicip2_dev = {
  #     name                = "tusharpublicip2_dev"
  #     location            = "France Central"
  #     resource_group_name = "tusharRG1_dev"
  #     allocation_method   = ""
  #   }
  tusharpublicipbastion = {
    name                = "tusharbastionpublicip"
    location            = "France Central"
    resource_group_name = "tusharRG1_dev"
    allocation_method   = ""
  }
  tusharlbpublicip_dev = {
    name                = "tusharlbpublicip_dev"
    location            = "France Central"
    resource_group_name = "tusharRG1_dev"
    allocation_method   = ""
  }
}

tusharnsgvarsM = {
  tusharnsgallowssh22_dev = {
    name                         = "tusharnsgallowssh22_dev"
    location                     = "France Central"
    resource_group_name          = "tusharRG1_dev"
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
    resource_group_name   = "tusharRG1_dev"
    subnet_name           = "AzureBastionSubnet"
    public_ip_name        = "tusharbastionpublicip"
    virtual_network_name  = "tusharvnet1_dev"
    ipconfig_bastion_name = "tusharbastionipconfig"
    public_ip_address_id  = ""
    subnet_id             = ""
  }
}


tusharlbvarsM = {
  tusharlb1_dev = {
    name                 = "tusharlb1_dev"
    location             = "France Central"
    resource_group_name  = "tusharRG1_dev"
    publicip_name        = "tusharlbpublicip_dev"
    public_ip_address_id = ""
  }
}

tusharlb_backendpool_varM = {
  tusharlb_backendpool1_dev = {
    name            = "tusharlb_backendpool1_dev"
    loadbalancer_id = ""
    lb_name         = "tusharlb1_dev"
  }
}

tusharlb_backendpool_addressvarsM = {
  tusharbackend_address1_dev = {
    name                    = "tusharbackend_address1_dev"
    backend_address_pool_id = ""
    backendpool_name        = "tusharlb_backendpool1_dev"
    ip_address              = ""
    virtual_network_id      = ""
    vm_name                 = "tusharvm1dev"
    virtual_network_name    = "tusharvnet1_dev"
  }
  # tusharbackend_address2_dev= {
  #   name                    = "tusharbackend_address2_dev"
  #   backend_address_pool_id = ""
  #   backendpool_name        = "tusharlb_backendpool1_dev"
  #   ip_address              = ""
  #   virtual_network_id      = ""
  #   vm_name                 = "tusharvm2dev"
  #   virtual_network_name    = "tusharvnet1_dev"
  # }
}

tusharlb_VMs_backendvarsM = {
  tusharvm1dev = {
    name                = "tusharvm1dev"
    resource_group_name = "tusharRG1_dev"
  }
  # tusharvm2dev = {
  #   name                = "tusharvm2dev"
  #   resource_group_name = "tusharRG1_dev"
  # }
}

tusharvnet_lbvarsM = {
  tusharvnet1_dev = {
    name                = "tusharvnet1_dev"
    resource_group_name = "tusharRG1_dev"
  }
}

tusharlb_healthprobevarsM = {
 tushar_http-probe_dev = {
    name                = "tushar_http-probe_dev"
    port                = 80
    lb_name             = "tusharlb1_dev"
    protocol            = "Http"
    number_of_probes    = 2
    request_path        = "/health"
    interval_in_seconds = 10
    loadbalancer_id     = ""
  }
  tushar_tcp-probe_dev = {
    name                = "tushar_tcp-probe_dev"
    port                = 443
    protocol            = "Tcp"
    lb_name             = "tusharlb1_dev"
    number_of_probes    = null
    request_path        = ""
    interval_in_seconds = null
    loadbalancer_id     = ""
  }
}

tusharlb_rulevarsM = {
  rule1 = {
    name                           = "tushar-rule-http_dev"
    protocol                       = "Tcp"
    lb_name                        = "tusharlb1_dev"
    frontend_ip_configuration_name = "tusharlb1_dev-frontend_ip_config"
    frontend_port                  = 80
    backend_port                   = 80
    enable_tcp_reset               = true
    idle_timeout_in_minutes        = 4
    load_distribution              = "Default"
    loadbalancer_id                = ""
    backend_address_pool_ids       = []
    probe_id                       = ""
    probe_name                     = "tushar_tcp-probe_dev"
    backendpool_name               = "tusharlb_backendpool1_dev"
  }
  rule2 = {
    name                           = "tushar-rule-https_dev"
    protocol                       = "Tcp"
    lb_name                        = "tusharlb1_dev"
    frontend_ip_configuration_name = "tusharlb1_dev-frontend_ip_config"
    frontend_port                  = 443
    backend_port                   = 443
    enable_tcp_reset               = false
    idle_timeout_in_minutes        = 4
    load_distribution              = "Default"
    loadbalancer_id                = ""
    backend_address_pool_ids       = []
    probe_id                       = ""
    probe_name                     = "tushar_tcp-probe_dev"
    backendpool_name               = "tusharlb_backendpool1_dev"
  }
}


tusharlinuxvmssvarsM = {
  linuxvmss1dev = {
    name                            = "linuxvmss1dev"
    resource_group_name             = "tusharRG1_dev"
    location                        = "France Central"
    admin_username                  = ""
    admin_password                  = "tusharlinuxvmss1pass@21"
    disable_password_authentication = false
    sku                             = "Standard_F1"
    instances                       = 1
    nic_name                        = "tusharlinuxvmssnic_dev"
    ip_configuration_name           = "tusharlinuxvmssip_config_dev"
    primary                         = true
    subnet_id                       = ""
    subnet_name                     = "tusharsubnet3_dev"
  }
}

tusharwindowsvmvarM = {
  winvm1dev = {
    name                  = "winvm1dev"
    resource_group_name   = "tusharRG1_dev"
    location              = "France Central"
    size                  = "Standard_F1"
    admin_username        = ""
    admin_password        = "tusharwindowvm1@21pass"
    network_interface_ids = []
    nic_name              = "tusharwindowsvmnic1_dev"
  }
}

tusharwindowsvmssvarsM = {
  wvmss1dev= {
    name                  = "wvmss1dev"
    resource_group_name   = "tusharRG1_dev"
    location              = "France Central"
    sku                   = "Standard_F1"
    instances             = 1
    admin_username        = ""
    admin_password        = "tusharwinvmss1@21"
    nic_name              = "tusharwinvmssnic1_dev"
    subnet_id             = ""
    subnet_name           = "tusharsubnetwindowsvmss_dev"
    ip_configuration_name = "tusharwinvmss1ip_config_dev"
    primary               = true
  }
}
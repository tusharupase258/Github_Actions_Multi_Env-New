tusharRGvarsM = {
  tusharRG1_preprod = {
    name     = "tusharRG1_preprod"
    location = "France Central"
  }
}

tusharstoragevarsM = {
  tusharstorage193p = {
    name                = "tusharstorage193pp"
    location            = "France Central"
    resource_group_name = "tusharRG1_preprod"
  }
  tusharstorage194p = {
    name                = "tusharstorage194pp"
    location            = "France Central"
    resource_group_name = "tusharRG1_preprod"
  }
}

tusharContainervarsM = {
  tusharcontainer1pp = {
    name                 = "tusharcontainer1pp"
    storage_account_id   = ""
    storage_account_name = "tusharstorage193pp"
  }
  # tusharcontainer2p = {
  #   name                 = "tusharcontainer2p"
  #   storage_account_id   = ""
  #   storage_account_name = "tusharstorage194p"
  # }
}

tusharvnetvarsM = {
  tusharvnet1_preprod = {
    name                = "tusharvnet1_preprod"
    location            = "France Central"
    resource_group_name = "tusharRG1_preprod"
    address_space       = ["10.1.0.0/16"]
  }
}

tusharsubnetsvarM = {
  tusharsubnet1_preprod = {
    name                 = "tusharsubnet1_preprod"
    resource_group_name  = "tusharRG1_preprod"
    virtual_network_name = "tusharvnet1_preprod"
    address_prefixes     = ["10.1.1.0/24"]
  }
  # tusharsubnet2_preprod = {
  #   name                 = "tusharsubnet2_preprod"
  #   resource_group_name  = "tusharRG1_preprod"
  #   virtual_network_name = "tusharvnet1_preprod"
  #   address_prefixes     = ["10.1.2.0/24"]
  # }
  AzureBastionSubnet = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "tusharRG1_preprod"
    virtual_network_name = "tusharvnet1_preprod"
    address_prefixes     = ["10.1.3.0/24"]
  }
  tusharsubnet3_preprod = {
    name                 = "tusharsubnet3_preprod"
    resource_group_name  = "tusharRG1_preprod"
    virtual_network_name = "tusharvnet1_preprod"
    address_prefixes     = ["10.1.4.0/24"]
  }
  tusharwindowvmsubnet1_preprod = {
    name                 = "tusharwindowvmsubnet1_preprod"
    resource_group_name  = "tusharRG1_preprod"
    virtual_network_name = "tusharvnet1_preprod"
    address_prefixes     = ["10.1.5.0/24"]
  }
  tusharsubnetwindowsvmss_preprod = {
    name                 = "tusharsubnetwindowsvmss_preprod"
    resource_group_name  = "tusharRG1_preprod"
    virtual_network_name = "tusharvnet1_preprod"
    address_prefixes     = ["10.1.6.0/24"]
  }
}

tusharkeyvaultsvarsM = {
  tusharkeyvault2preprod = {
    name                = "tusharkeyvault2preprod"
    location            = "France Central"
    sku_name            = "standard"
    resource_group_name = "tusharRG1_preprod"
    tenant_id           = ""
    object_id           = ""
    value               = ""
    key_vault_id        = ""
  }
}

tusharvmvarsM = {
  tusharvm1preprod = {
    name                            = "tusharvm1preprod"
    value                           = ""
    key_vault_id                    = ""
    resource_group_name             = "tusharRG1_preprod"
    location                        = "France Central"
    size                            = "Standard_F1"
    nic_name                        = "tusharnic1_preprod"
    admin_username                  = ""
    admin_password                  = ""
    disable_password_authentication = false
    network_interface_ids           = []
    keyvault_name                   = "tusharkeyvault2preprod"
    nic_name                        = "tusharnic1_preprod"
  }
  # tusharvm2preprod = {
  #   name                            = "tusharvm2preprod"
  #   value                           = ""
  #   key_vault_id                    = ""
  #   keyvault_name                   = "tusharkeyvault2preprod"
  #   resource_group_name             = "tusharRG1_preprod"
  #   location                        = "France Central"
  #   size                            = "Standard_F1"
  #   nic_name                        = "tusharnic2_preprod"
  #   admin_password                  = ""
  #   admin_username                  = ""
  #   disable_password_authentication = false
  #   network_interface_ids           = []
  #   nic_name                        = "tusharnic2_preprod"
  # }
}

tusharnicvarsM = {
  tusharnic1_preprod = {
    name                          = "tusharnic1_preprod"
    location                      = "France Central"
    resource_group_name           = "tusharRG1_preprod"
    ip_configuration_name         = "tusharnic1_preprodip"
    private_ip_address_allocation = ""
    # public_ip_address_id          = ""
    subnet_id   = ""
    subnet_name = "tusharsubnet1_preprod"
    # public_ip_name                = "tusharpublicip1"
    nsg_name = "tusharnsgallowssh22"
  }
  # tusharnic2_preprod = {
  #   name                          = "tusharnic2_preprod"
  #   location                      = "France Central"
  #   resource_group_name           = "tusharRG1_preprod"
  #   ip_configuration_name         = "tusharnic2_preprodip"
  #   private_ip_address_allocation = ""
  #   # public_ip_address_id          = ""
  #   subnet_id   = ""
  #   subnet_name = "tusharsubnet2_preprod"
  #   # public_ip_name                = "tusharpublicip2"
  #   # nsg_name = "tusharnsgallowssh22"
  # }
  tusharlinuxvmssnic_preprod = {
    name                          = "tusharlinuxvmssnic_preprod"
    location                      = "France Central"
    resource_group_name           = "tusharRG1_preprod"
    ip_configuration_name         = "tusharlinuxvmssip_config_preprod"
    private_ip_address_allocation = ""
    subnet_id                     = ""
    subnet_name                   = "tusharsubnet3_preprod"
    # nsg_name                      = "tusharnsgallowssh22"
  }
  tusharwindowsvmnic1_preprod = {
    name                          = "tusharwindowsvmnic1_preprod"
    location                      = "France Central"
    resource_group_name           = "tusharRG1_preprod"
    ip_configuration_name         = "tusharwindowsvm1ipconfig_preprod"
    private_ip_address_allocation = ""
    subnet_id                     = ""
    subnet_name                   = "tusharwindowvmsubnet1_preprod"
    # nsg_name                      = "tusharnsgallowssh22"
  }
  tusharwinvmssnic1_preprod = {
    name                          = "tusharwinvmssnic1_preprod"
    location                      = "France Central"
    resource_group_name           = "tusharRG1_preprod"
    ip_configuration_name         = "tusharwinvmss1ipconfig_preprod"
    private_ip_address_allocation = ""
    subnet_id                     = ""
    subnet_name                   = "tusharsubnetwindowsvmss_preprod"
  }
}

tusharpublicipvarsM = {
  #   tusharpublicip1_preprod = {
  #     name                = "tusharpublicip1_preprod"
  #     location            = "France Central"
  #     resource_group_name = "tusharRG1_preprod"
  #     allocation_method   = ""
  #   }
  #   tusharpublicip2_preprod = {
  #     name                = "tusharpublicip2_preprod"
  #     location            = "France Central"
  #     resource_group_name = "tusharRG1_preprod"
  #     allocation_method   = ""
  #   }
  tusharpublicipbastion = {
    name                = "tusharbastionpublicip"
    location            = "France Central"
    resource_group_name = "tusharRG1_preprod"
    allocation_method   = ""
  }
  tusharlbpublicip_preprod = {
    name                = "tusharlbpublicip_preprod"
    location            = "France Central"
    resource_group_name = "tusharRG1_preprod"
    allocation_method   = ""
  }
}

tusharnsgvarsM = {
  tusharnsgallowssh22_preprod = {
    name                         = "tusharnsgallowssh22_preprod"
    location                     = "France Central"
    resource_group_name          = "tusharRG1_preprod"
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
    resource_group_name   = "tusharRG1_preprod"
    subnet_name           = "AzureBastionSubnet"
    public_ip_name        = "tusharbastionpublicip"
    virtual_network_name  = "tusharvnet1_preprod"
    ipconfig_bastion_name = "tusharbastionipconfig"
    public_ip_address_id  = ""
    subnet_id             = ""
  }
}


tusharlbvarsM = {
  tusharlb1_preprod = {
    name                 = "tusharlb1_preprod"
    location             = "France Central"
    resource_group_name  = "tusharRG1_preprod"
    publicip_name        = "tusharlbpublicip_preprod"
    public_ip_address_id = ""
  }
}

tusharlb_backendpool_varM = {
  tusharlb_backendpool1_preprod = {
    name            = "tusharlb_backendpool1_preprod"
    loadbalancer_id = ""
    lb_name         = "tusharlb1_preprod"
  }
}

tusharlb_backendpool_addressvarsM = {
  tusharbackend_address1_preprod = {
    name                    = "tusharbackend_address1_preprod"
    backend_address_pool_id = ""
    backendpool_name        = "tusharlb_backendpool1_preprod"
    ip_address              = ""
    virtual_network_id      = ""
    vm_name                 = "tusharvm1preprod"
    virtual_network_name    = "tusharvnet1_preprod"
  }
  # tusharbackend_address2_preprod= {
  #   name                    = "tusharbackend_address2_preprod"
  #   backend_address_pool_id = ""
  #   backendpool_name        = "tusharlb_backendpool1_preprod"
  #   ip_address              = ""
  #   virtual_network_id      = ""
  #   vm_name                 = "tusharvm2preprod"
  #   virtual_network_name    = "tusharvnet1_preprod"
  # }
}

tusharlb_VMs_backendvarsM = {
  tusharvm1preprod = {
    name                = "tusharvm1preprod"
    resource_group_name = "tusharRG1_preprod"
  }
  # tusharvm2preprod = {
  #   name                = "tusharvm2preprod"
  #   resource_group_name = "tusharRG1_preprod"
  # }
}

tusharvnet_lbvarsM = {
  tusharvnet1_preprod = {
    name                = "tusharvnet1_preprod"
    resource_group_name = "tusharRG1_preprod"
  }
}

tusharlb_healthprobevarsM = {
 tushar_http-probe_preprod = {
    name                = "tushar_http-probe_preprod"
    port                = 80
    lb_name             = "tusharlb1_preprod"
    protocol            = "Http"
    number_of_probes    = 2
    request_path        = "/health"
    interval_in_seconds = 10
    loadbalancer_id     = ""
  }
  tushar_tcp-probe_preprod = {
    name                = "tushar_tcp-probe_preprod"
    port                = 443
    protocol            = "Tcp"
    lb_name             = "tusharlb1_preprod"
    number_of_probes    = null
    request_path        = ""
    interval_in_seconds = null
    loadbalancer_id     = ""
  }
}

tusharlb_rulevarsM = {
  rule1 = {
    name                           = "tushar-rule-http_preprod"
    protocol                       = "Tcp"
    lb_name                        = "tusharlb1_preprod"
    frontend_ip_configuration_name = "tusharlb1_preprod-frontend_ip_config"
    frontend_port                  = 80
    backend_port                   = 80
    enable_tcp_reset               = true
    idle_timeout_in_minutes        = 4
    load_distribution              = "Default"
    loadbalancer_id                = ""
    backend_address_pool_ids       = []
    probe_id                       = ""
    probe_name                     = "tushar_tcp-probe_preprod"
    backendpool_name               = "tusharlb_backendpool1_preprod"
  }
  rule2 = {
    name                           = "tushar-rule-https_preprod"
    protocol                       = "Tcp"
    lb_name                        = "tusharlb1_preprod"
    frontend_ip_configuration_name = "tusharlb1_preprod-frontend_ip_config"
    frontend_port                  = 443
    backend_port                   = 443
    enable_tcp_reset               = false
    idle_timeout_in_minutes        = 4
    load_distribution              = "Default"
    loadbalancer_id                = ""
    backend_address_pool_ids       = []
    probe_id                       = ""
    probe_name                     = "tushar_tcp-probe_preprod"
    backendpool_name               = "tusharlb_backendpool1_preprod"
  }
}


tusharlinuxvmssvarsM = {
  linuxvmss1preprod = {
    name                            = "linuxvmss1preprod"
    resource_group_name             = "tusharRG1_preprod"
    location                        = "France Central"
    admin_username                  = ""
    admin_password                  = "tusharlinuxvmss1pass@21"
    disable_password_authentication = false
    sku                             = "Standard_F1"
    instances                       = 1
    nic_name                        = "tusharlinuxvmssnic_preprod"
    ip_configuration_name           = "tusharlinuxvmssip_config_preprod"
    primary                         = true
    subnet_id                       = ""
    subnet_name                     = "tusharsubnet3_preprod"
  }
}

tusharwindowsvmvarM = {
  winvm1preprod = {
    name                  = "winvm1preprod"
    resource_group_name   = "tusharRG1_preprod"
    location              = "France Central"
    size                  = "Standard_F1"
    admin_username        = ""
    admin_password        = "tusharwindowvm1@21pass"
    network_interface_ids = []
    nic_name              = "tusharwindowsvmnic1_preprod"
  }
}

tusharwindowsvmssvarsM = {
  wvmss1P= {
    name                  = "wvmss1P"
    resource_group_name   = "tusharRG1_preprod"
    location              = "France Central"
    sku                   = "Standard_F1"
    instances             = 1
    admin_username        = ""
    admin_password        = "tusharwinvmss1@21"
    nic_name              = "tusharwinvmssnic1_preprod"
    subnet_id             = ""
    subnet_name           = "tusharsubnetwindowsvmss_preprod"
    ip_configuration_name = "tusharwinvmss1ip_config_preprod"
    primary               = true
  }
}
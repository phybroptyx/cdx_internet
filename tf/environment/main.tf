# Set up VSphere provider and credentials

# provider "vsphere" {
#     user            = var.username
#     password        = var.password
#     vsphere_server  = var.vcenter

#     # For self-signed certificates
#     allow_unverified_ssl = true
# }

data "vsphere_datacenter" "dc" {
    name = var.dc
}

data "vsphere_host" "host_1" {
  name          = var.host_1
  datacenter_id = data.vsphere_datacenter.dc.id
}

# data "vsphere_host" "host_2" {
#   name          = var.host_2
#   datacenter_id = data.vsphere_datacenter.dc.id
# }

# data "vsphere_host" "host_3" {
#   name          = var.host_3
#   datacenter_id = data.vsphere_datacenter.dc.id
# }

data "vsphere_compute_cluster" "cluster" {
    name = var.cluster
    datacenter_id   = data.vsphere_datacenter.dc.id
}

###### VSPHERE FOLDERS #####

resource "vsphere_folder" "VM_parent" {
    path            = var.parent_folder
    type            = "vm"
    datacenter_id   = data.vsphere_datacenter.dc.id
}

# resource "vsphere_folder" "VM_parent" {
#     path            = "${vsphere_folder.parent_folder.path}/Internet"
#     type            = "vm"
#     datacenter_id   = data.vsphere_datacenter.dc.id
# }

resource "vsphere_folder" "CDX_Internet_Folder" {
    path            = "${vsphere_folder.VM_parent.path}/Internet"
    type            = "vm"
    datacenter_id   = data.vsphere_datacenter.dc.id
}

resource "vsphere_folder" "Core_Router_folder" {
    path            = "${vsphere_folder.CDX_Internet_Folder.path}/Core Routers"
    type            = "vm"
    datacenter_id   = data.vsphere_datacenter.dc.id
}

resource "vsphere_folder" "Tier_1_Router_folder" {
    path            = "${vsphere_folder.CDX_Internet_Folder.path}/Tier 1 Routers"
    type            = "vm"
    datacenter_id   = data.vsphere_datacenter.dc.id
}

resource "vsphere_folder" "Servers_folder" {
    path            = "${vsphere_folder.CDX_Internet_Folder.path}/Servers"
    type            = "vm"
    datacenter_id   = data.vsphere_datacenter.dc.id
}

###### NETWORKS ########

resource "vsphere_host_port_group" "CDX_Tier_0_Internet_h1_pg" {
  name                = "CDX - Tier 0 - Internet"
  host_system_id      = data.vsphere_host.host_1.id
  virtual_switch_name = "vSwitch0"

  vlan_id = 2901
}

# resource "vsphere_host_port_group" "CDX_Tier_0_Internet_h2_pg" {
#   name                = "CDX - Tier 0 - Internet"
#   host_system_id      = data.vsphere_host.host_2.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2901
# }

# resource "vsphere_host_port_group" "CDX_Tier_0_Internet_h3_pg" {
#   name                = "CDX - Tier 0 - Internet"
#   host_system_id      = data.vsphere_host.host_3.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2901
# }

resource "vsphere_host_port_group" "CDX_Tier_1_Asia-Pacific_h1_pg" {
  name                = "CDX - Tier 1 - Asia-Pacific"
  host_system_id      = data.vsphere_host.host_1.id
  virtual_switch_name = "vSwitch0"

  vlan_id = 2902
}

# resource "vsphere_host_port_group" "CDX_Tier_1_Asia-Pacific_h2_pg" {
#   name                = "CDX - Tier 1 - Asia-Pacific"
#   host_system_id      = data.vsphere_host.host_2.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2902
# }

# resource "vsphere_host_port_group" "CDX_Tier_1_Asia-Pacific_h3_pg" {
#   name                = "CDX - Tier 1 - Asia-Pacific"
#   host_system_id      = data.vsphere_host.host_3.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2902
# }

resource "vsphere_host_port_group" "CDX_Tier_1_Americas_h1_pg" {
  name                = "CDX - Tier 1 - Americas"
  host_system_id      = data.vsphere_host.host_1.id
  virtual_switch_name = "vSwitch0"

  vlan_id = 2903
}

# resource "vsphere_host_port_group" "CDX_Tier_1_Americas_h2_pg" {
#   name                = "CDX - Tier 1 - Americas"
#   host_system_id      = data.vsphere_host.host_2.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2903
# }

# resource "vsphere_host_port_group" "CDX_Tier_1_Americas_h3_pg" {
#   name                = "CDX - Tier 1 - Americas"
#   host_system_id      = data.vsphere_host.host_3.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2903
# }

resource "vsphere_host_port_group" "CDX_Tier_1_Europe-Africa_h1_pg" {
  name                = "CDX - Tier 1 - Europe-Africa"
  host_system_id      = data.vsphere_host.host_1.id
  virtual_switch_name = "vSwitch0"

  vlan_id = 2904
}

# resource "vsphere_host_port_group" "CDX_Tier_1_Europe-Africa_h2_pg" {
#   name                = "CDX - Tier 1 - Europe-Africa"
#   host_system_id      = data.vsphere_host.host_2.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2904
# }

# resource "vsphere_host_port_group" "CDX_Tier_1_Europe-Africa_h3_pg" {
#   name                = "CDX - Tier 1 - Europe-Africa"
#   host_system_id      = data.vsphere_host.host_3.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2904
# }

resource "vsphere_host_port_group" "CDX_Tier_2_Toronto_h1_pg" {
  name                = "CDX - Tier 2 - Toronto"
  host_system_id      = data.vsphere_host.host_1.id
  virtual_switch_name = "vSwitch0"

  vlan_id = 2905
}

# resource "vsphere_host_port_group" "CDX_Tier_2_Toronto_h2_pg" {
#   name                = "CDX - Tier 2 - Toronto"
#   host_system_id      = data.vsphere_host.host_2.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2905
# }

# resource "vsphere_host_port_group" "CDX_Tier_2_Toronto_h3_pg" {
#   name                = "CDX - Tier 2 - Toronto"
#   host_system_id      = data.vsphere_host.host_3.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2905
# }

resource "vsphere_host_port_group" "CDX_Tier_2_Seattle_h1_pg" {
  name                = "CDX - Tier 2 - Seattle"
  host_system_id      = data.vsphere_host.host_1.id
  virtual_switch_name = "vSwitch0"

  vlan_id = 2906
}

# resource "vsphere_host_port_group" "CDX_Tier_2_Seattle_h2_pg" {
#   name                = "CDX - Tier 2 - Seattle"
#   host_system_id      = data.vsphere_host.host_2.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2906
# }

# resource "vsphere_host_port_group" "CDX_Tier_2_Seattle_h3_pg" {
#   name                = "CDX - Tier 2 - Seattle"
#   host_system_id      = data.vsphere_host.host_3.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2906
# }

resource "vsphere_host_port_group" "CDX_Tier_2_Rio_de_Janerio_h1_pg" {
  name                = "CDX - Tier 2 - Rio de Janeiro"
  host_system_id      = data.vsphere_host.host_1.id
  virtual_switch_name = "vSwitch0"

  vlan_id = 2907
}

# resource "vsphere_host_port_group" "CDX_Tier_2_Rio_de_Janerio_h2_pg" {
#   name                = "CDX - Tier 2 - Rio de Janeiro"
#   host_system_id      = data.vsphere_host.host_2.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2907
# }

# resource "vsphere_host_port_group" "CDX_Tier_2_Rio_de_Janerio_h3_pg" {
#   name                = "CDX - Tier 2 - Rio de Janeiro"
#   host_system_id      = data.vsphere_host.host_3.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2907
# }

resource "vsphere_host_port_group" "CDX_Tier_2_Seoul_h1_pg" {
  name                = "CDX - Tier 2 - Seoul"
  host_system_id      = data.vsphere_host.host_1.id
  virtual_switch_name = "vSwitch0"

  vlan_id = 2908
}

# resource "vsphere_host_port_group" "CDX_Tier_2_Seoul_h2_pg" {
#   name                = "CDX - Tier 2 - Seoul"
#   host_system_id      = data.vsphere_host.host_2.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2908
# }

# resource "vsphere_host_port_group" "CDX_Tier_2_Seoul_h3_pg" {
#   name                = "CDX - Tier 2 - Seoul"
#   host_system_id      = data.vsphere_host.host_3.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2908
# }

resource "vsphere_host_port_group" "CDX_Tier_2_Dubai_h1_pg" {
  name                = "CDX - Tier 2 - Dubai"
  host_system_id      = data.vsphere_host.host_1.id
  virtual_switch_name = "vSwitch0"

  vlan_id = 2909
}

# resource "vsphere_host_port_group" "CDX_Tier_2_Dubai_h2_pg" {
#   name                = "CDX - Tier 2 - Dubai"
#   host_system_id      = data.vsphere_host.host_2.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2909
# }

# resource "vsphere_host_port_group" "CDX_Tier_2_Dubai_h3_pg" {
#   name                = "CDX - Tier 2 - Dubai"
#   host_system_id      = data.vsphere_host.host_3.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2909
# }

resource "vsphere_host_port_group" "CDX_Tier_2_Sydney_h1_pg" {
  name                = "CDX - Tier 2 - Sydney"
  host_system_id      = data.vsphere_host.host_1.id
  virtual_switch_name = "vSwitch0"

  vlan_id = 2910
}

# resource "vsphere_host_port_group" "CDX_Tier_2_Sydney_h2_pg" {
#   name                = "CDX - Tier 2 - Sydney"
#   host_system_id      = data.vsphere_host.host_2.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2910
# }

# resource "vsphere_host_port_group" "CDX_Tier_2_Sydney_h3_pg" {
#   name                = "CDX - Tier 2 - Sydney"
#   host_system_id      = data.vsphere_host.host_3.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2910
# }

resource "vsphere_host_port_group" "CDX_Tier_2_Vladivostok_h1_pg" {
  name                = "CDX - Tier 2 - Vladivostok"
  host_system_id      = data.vsphere_host.host_1.id
  virtual_switch_name = "vSwitch0"

  vlan_id = 2911
}

# resource "vsphere_host_port_group" "CDX_Tier_2_Vladivostok_h2_pg" {
#   name                = "CDX - Tier 2 - Vladivostok"
#   host_system_id      = data.vsphere_host.host_2.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2911
# }

# resource "vsphere_host_port_group" "CDX_Tier_2_Vladivostok_h3_pg" {
#   name                = "CDX - Tier 2 - Vladivostok"
#   host_system_id      = data.vsphere_host.host_3.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2911
# }

resource "vsphere_host_port_group" "CDX_Tier_2_Frankfurt_h1_pg" {
  name                = "CDX - Tier 2 - Frankfurt"
  host_system_id      = data.vsphere_host.host_1.id
  virtual_switch_name = "vSwitch0"

  vlan_id = 2912
}

# resource "vsphere_host_port_group" "CDX_Tier_2_Frankfurt_h2_pg" {
#   name                = "CDX - Tier 2 - Frankfurt"
#   host_system_id      = data.vsphere_host.host_2.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2912
# }

# resource "vsphere_host_port_group" "CDX_Tier_2_Frankfurt_h3_pg" {
#   name                = "CDX - Tier 2 - Frankfurt"
#   host_system_id      = data.vsphere_host.host_3.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2912
# }

resource "vsphere_host_port_group" "CDX_Tier_2_London_h1_pg" {
  name                = "CDX - Tier 2 - London"
  host_system_id      = data.vsphere_host.host_1.id
  virtual_switch_name = "vSwitch0"

  vlan_id = 2913
}

# resource "vsphere_host_port_group" "CDX_Tier_2_London_h2_pg" {
#   name                = "CDX - Tier 2 - London"
#   host_system_id      = data.vsphere_host.host_2.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2913
# }

# resource "vsphere_host_port_group" "CDX_Tier_2_London_h3_pg" {
#   name                = "CDX - Tier 2 - London"
#   host_system_id      = data.vsphere_host.host_3.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2913
# }

resource "vsphere_host_port_group" "CDX_Tier_2_Amsterdam_h1_pg" {
  name                = "CDX - Tier 2 - Amsterdam"
  host_system_id      = data.vsphere_host.host_1.id
  virtual_switch_name = "vSwitch0"

  vlan_id = 2914
}

# resource "vsphere_host_port_group" "CDX_Tier_2_Amsterdam_h2_pg" {
#   name                = "CDX - Tier 2 - Amsterdam"
#   host_system_id      = data.vsphere_host.host_2.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2914
# }

# resource "vsphere_host_port_group" "CDX_Tier_2_Amsterdam_h3_pg" {
#   name                = "CDX - Tier 2 - Amsterdam"
#   host_system_id      = data.vsphere_host.host_3.id
#   virtual_switch_name = "vSwitch0"

#   vlan_id = 2914
# }

# OUTPUTS

data "vsphere_datacenter" "dc" {
    name = var.dc
}

data "vsphere_datastore" "store" {
    name            = var.datastore
    datacenter_id   = data.vsphere_datacenter.dc.id
}

data "vsphere_compute_cluster" "cluster" {
    name = var.cluster
    datacenter_id   = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "pg_tier_0" {
    name = var.Tier_0
    datacenter_id   = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "pg_tier_1_ap" {
    name = var.Tier_1_AP
    datacenter_id   = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "pg_tier_1_ea" {
    name = var.Tier_1_EA
    datacenter_id   = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "pg_tier_1_am" {
    name = var.Tier_1_AM
    datacenter_id   = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "pg_toronto" {
    name = var.TOR
    datacenter_id   = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "pg_seattle" {
    name = var.SEA
    datacenter_id   = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "pg_rio_de_janeiro" {
    name = var.RIO
    datacenter_id   = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "pg_seoul" {
    name = var.ROK
    datacenter_id   = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "pg_dubai" {
    name = var.DXB
    datacenter_id   = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "pg_sydney" {
    name = var.SYD
    datacenter_id   = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "pg_frankfurt" {
    name = var.DE
    datacenter_id   = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "pg_vladivostok" {
    name = var.VLV
    datacenter_id   = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "pg_london" {
    name = var.LON
    datacenter_id   = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "pg_amsterdam" {
    name = var.AMS
    datacenter_id   = data.vsphere_datacenter.dc.id
}

data "vsphere_virtual_machine" "template_vyos" {
  name          = "Base_VyOS_1.5"
  datacenter_id = data.vsphere_datacenter.dc.id
}

resource "vsphere_virtual_machine" "CORE-T0-R1" {
  name             = "CORE-T0-R1"
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.store.id
  num_cpus         = 1
  memory           = 1024
  guest_id         = data.vsphere_virtual_machine.template_vyos.guest_id
  folder           = var.tier_0_folder
  scsi_type        = data.vsphere_virtual_machine.template_vyos.scsi_type
  sync_time_with_host = true
  network_interface {
    network_id   = data.vsphere_network.pg_tier_1_am.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }
  network_interface {
    network_id   = data.vsphere_network.pg_tier_0.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }
  network_interface {
    network_id   = data.vsphere_network.pg_tier_0.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }

  disk {
    label            = "disk0"
    size             = data.vsphere_virtual_machine.template_vyos.disks.0.size
    eagerly_scrub    = data.vsphere_virtual_machine.template_vyos.disks.0.eagerly_scrub
    thin_provisioned = data.vsphere_virtual_machine.template_vyos.disks.0.thin_provisioned
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template_vyos.id
  }

  wait_for_guest_net_timeout = 0
}

resource "vsphere_virtual_machine" "CORE-T0-R2" {
  name             = "CORE-T0-R2"
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.store.id
  num_cpus         = 1
  memory           = 1024
  guest_id         = data.vsphere_virtual_machine.template_vyos.guest_id
  folder           = var.tier_0_folder
  scsi_type        = data.vsphere_virtual_machine.template_vyos.scsi_type
  sync_time_with_host = true
  network_interface {
    network_id   = data.vsphere_network.pg_tier_1_ea.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }
  network_interface {
    network_id   = data.vsphere_network.pg_tier_0.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }
  network_interface {
    network_id   = data.vsphere_network.pg_tier_0.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }

  disk {
    label            = "disk0"
    size             = data.vsphere_virtual_machine.template_vyos.disks.0.size
    eagerly_scrub    = data.vsphere_virtual_machine.template_vyos.disks.0.eagerly_scrub
    thin_provisioned = data.vsphere_virtual_machine.template_vyos.disks.0.thin_provisioned
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template_vyos.id
  }

  wait_for_guest_net_timeout = 0
}

resource "vsphere_virtual_machine" "CORE-T0-R3" {
  name             = "CORE-T0-R3"
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.store.id
  num_cpus         = 1
  memory           = 1024
  guest_id         = data.vsphere_virtual_machine.template_vyos.guest_id
  folder           = var.tier_0_folder
  scsi_type        = data.vsphere_virtual_machine.template_vyos.scsi_type
  sync_time_with_host = true
  network_interface {
    network_id   = data.vsphere_network.pg_tier_1_ap.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }
  network_interface {
    network_id   = data.vsphere_network.pg_tier_0.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }
  network_interface {
    network_id   = data.vsphere_network.pg_tier_0.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }

  disk {
    label            = "disk0"
    size             = data.vsphere_virtual_machine.template_vyos.disks.0.size
    eagerly_scrub    = data.vsphere_virtual_machine.template_vyos.disks.0.eagerly_scrub
    thin_provisioned = data.vsphere_virtual_machine.template_vyos.disks.0.thin_provisioned
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template_vyos.id
  }

  wait_for_guest_net_timeout = 0
}

resource "vsphere_virtual_machine" "IXP-EQIX-2" {
  name             = "IXP-EQIX-2"
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.store.id
  num_cpus         = 1
  memory           = 1024
  guest_id         = data.vsphere_virtual_machine.template_vyos.guest_id
  folder           = var.tier_1_folder
  scsi_type        = data.vsphere_virtual_machine.template_vyos.scsi_type
  sync_time_with_host = true
  network_interface {
    network_id   = data.vsphere_network.pg_amsterdam.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }
  network_interface {
    network_id   = data.vsphere_network.pg_tier_1_ea.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }

  disk {
    label            = "disk0"
    size             = data.vsphere_virtual_machine.template_vyos.disks.0.size
    eagerly_scrub    = data.vsphere_virtual_machine.template_vyos.disks.0.eagerly_scrub
    thin_provisioned = data.vsphere_virtual_machine.template_vyos.disks.0.thin_provisioned
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template_vyos.id
  }

  wait_for_guest_net_timeout = 0
}

resource "vsphere_virtual_machine" "IXP-EQIX-3" {
  name             = "IXP-EQIX-3"
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.store.id
  num_cpus         = 1
  memory           = 1024
  guest_id         = data.vsphere_virtual_machine.template_vyos.guest_id
  folder           = var.tier_1_folder
  scsi_type        = data.vsphere_virtual_machine.template_vyos.scsi_type
  sync_time_with_host = true
  network_interface {
    network_id   = data.vsphere_network.pg_sydney.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }
  network_interface {
    network_id   = data.vsphere_network.pg_tier_1_ap.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }

  disk {
    label            = "disk0"
    size             = data.vsphere_virtual_machine.template_vyos.disks.0.size
    eagerly_scrub    = data.vsphere_virtual_machine.template_vyos.disks.0.eagerly_scrub
    thin_provisioned = data.vsphere_virtual_machine.template_vyos.disks.0.thin_provisioned
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template_vyos.id
  }

  wait_for_guest_net_timeout = 0
}

resource "vsphere_virtual_machine" "IXP-EQIX-4" {
  name             = "IXP-EQIX-4"
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.store.id
  num_cpus         = 1
  memory           = 1024
  guest_id         = data.vsphere_virtual_machine.template_vyos.guest_id
  folder           = var.tier_1_folder
  scsi_type        = data.vsphere_virtual_machine.template_vyos.scsi_type
  sync_time_with_host = true
  network_interface {
    network_id   = data.vsphere_network.pg_seattle.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }
  network_interface {
    network_id   = data.vsphere_network.pg_tier_1_am.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }

  disk {
    label            = "disk0"
    size             = data.vsphere_virtual_machine.template_vyos.disks.0.size
    eagerly_scrub    = data.vsphere_virtual_machine.template_vyos.disks.0.eagerly_scrub
    thin_provisioned = data.vsphere_virtual_machine.template_vyos.disks.0.thin_provisioned
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template_vyos.id
  }

  wait_for_guest_net_timeout = 0
}

resource "vsphere_virtual_machine" "IXP-EQIX-5" {
  name             = "IXP-EQIX-5"
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.store.id
  num_cpus         = 1
  memory           = 1024
  guest_id         = data.vsphere_virtual_machine.template_vyos.guest_id
  folder           = var.tier_1_folder
  scsi_type        = data.vsphere_virtual_machine.template_vyos.scsi_type
  sync_time_with_host = true
  network_interface {
    network_id   = data.vsphere_network.pg_toronto.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }
  network_interface {
    network_id   = data.vsphere_network.pg_tier_1_am.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }

  disk {
    label            = "disk0"
    size             = data.vsphere_virtual_machine.template_vyos.disks.0.size
    eagerly_scrub    = data.vsphere_virtual_machine.template_vyos.disks.0.eagerly_scrub
    thin_provisioned = data.vsphere_virtual_machine.template_vyos.disks.0.thin_provisioned
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template_vyos.id
  }

  wait_for_guest_net_timeout = 0
}

resource "vsphere_virtual_machine" "IXP-EQIX-6" {
  name             = "IXP-EQIX-6"
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.store.id
  num_cpus         = 1
  memory           = 1024
  guest_id         = data.vsphere_virtual_machine.template_vyos.guest_id
  folder           = var.tier_1_folder
  scsi_type        = data.vsphere_virtual_machine.template_vyos.scsi_type
  sync_time_with_host = true
  network_interface {
    network_id   = data.vsphere_network.pg_frankfurt.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }
  network_interface {
    network_id   = data.vsphere_network.pg_tier_1_ea.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }

  disk {
    label            = "disk0"
    size             = data.vsphere_virtual_machine.template_vyos.disks.0.size
    eagerly_scrub    = data.vsphere_virtual_machine.template_vyos.disks.0.eagerly_scrub
    thin_provisioned = data.vsphere_virtual_machine.template_vyos.disks.0.thin_provisioned
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template_vyos.id
  }

  wait_for_guest_net_timeout = 0
}

resource "vsphere_virtual_machine" "IXP-EQIX-7" {
  name             = "IXP-EQIX-7"
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.store.id
  num_cpus         = 1
  memory           = 1024
  guest_id         = data.vsphere_virtual_machine.template_vyos.guest_id
  folder           = var.tier_1_folder
  scsi_type        = data.vsphere_virtual_machine.template_vyos.scsi_type
  sync_time_with_host = true
  network_interface {
    network_id   = data.vsphere_network.pg_vladivostok.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }
  network_interface {
    network_id   = data.vsphere_network.pg_tier_1_ap.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }

  disk {
    label            = "disk0"
    size             = data.vsphere_virtual_machine.template_vyos.disks.0.size
    eagerly_scrub    = data.vsphere_virtual_machine.template_vyos.disks.0.eagerly_scrub
    thin_provisioned = data.vsphere_virtual_machine.template_vyos.disks.0.thin_provisioned
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template_vyos.id
  }

  wait_for_guest_net_timeout = 0
}

resource "vsphere_virtual_machine" "IXP-EQIX-8" {
  name             = "IXP-EQIX-8"
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.store.id
  num_cpus         = 1
  memory           = 1024
  guest_id         = data.vsphere_virtual_machine.template_vyos.guest_id
  folder           = var.tier_1_folder
  scsi_type        = data.vsphere_virtual_machine.template_vyos.scsi_type
  sync_time_with_host = true
  network_interface {
    network_id   = data.vsphere_network.pg_dubai.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }
  network_interface {
    network_id   = data.vsphere_network.pg_tier_1_ap.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }

  disk {
    label            = "disk0"
    size             = data.vsphere_virtual_machine.template_vyos.disks.0.size
    eagerly_scrub    = data.vsphere_virtual_machine.template_vyos.disks.0.eagerly_scrub
    thin_provisioned = data.vsphere_virtual_machine.template_vyos.disks.0.thin_provisioned
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template_vyos.id
  }

  wait_for_guest_net_timeout = 0
}

resource "vsphere_virtual_machine" "IXP-EQIX-9" {
  name             = "IXP-EQIX-9"
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.store.id
  num_cpus         = 1
  memory           = 1024
  guest_id         = data.vsphere_virtual_machine.template_vyos.guest_id
  folder           = var.tier_1_folder
  scsi_type        = data.vsphere_virtual_machine.template_vyos.scsi_type
  sync_time_with_host = true
  network_interface {
    network_id   = data.vsphere_network.pg_rio_de_janeiro.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }
  network_interface {
    network_id   = data.vsphere_network.pg_tier_1_am.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }

  disk {
    label            = "disk0"
    size             = data.vsphere_virtual_machine.template_vyos.disks.0.size
    eagerly_scrub    = data.vsphere_virtual_machine.template_vyos.disks.0.eagerly_scrub
    thin_provisioned = data.vsphere_virtual_machine.template_vyos.disks.0.thin_provisioned
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template_vyos.id
  }

  wait_for_guest_net_timeout = 0
}

resource "vsphere_virtual_machine" "IXP-EQIX-10" {
  name             = "IXP-EQIX-10"
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.store.id
  num_cpus         = 1
  memory           = 1024
  guest_id         = data.vsphere_virtual_machine.template_vyos.guest_id
  folder           = var.tier_1_folder
  scsi_type        = data.vsphere_virtual_machine.template_vyos.scsi_type
  sync_time_with_host = true
  network_interface {
    network_id   = data.vsphere_network.pg_seoul.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }
  network_interface {
    network_id   = data.vsphere_network.pg_tier_1_ap.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }

  disk {
    label            = "disk0"
    size             = data.vsphere_virtual_machine.template_vyos.disks.0.size
    eagerly_scrub    = data.vsphere_virtual_machine.template_vyos.disks.0.eagerly_scrub
    thin_provisioned = data.vsphere_virtual_machine.template_vyos.disks.0.thin_provisioned
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template_vyos.id
  }

  wait_for_guest_net_timeout = 0
}

resource "vsphere_virtual_machine" "IXP-EQIX-11" {
  name             = "IXP-EQIX-11"
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.store.id
  num_cpus         = 1
  memory           = 1024
  guest_id         = data.vsphere_virtual_machine.template_vyos.guest_id
  folder           = var.tier_1_folder
  scsi_type        = data.vsphere_virtual_machine.template_vyos.scsi_type
  sync_time_with_host = true
  network_interface {
    network_id   = data.vsphere_network.pg_london.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }
  network_interface {
    network_id   = data.vsphere_network.pg_tier_1_ea.id
    # adapter_type = data.vsphere_virtual_machine.template_vyos.network_interface_types[0]
  }

  disk {
    label            = "disk0"
    size             = data.vsphere_virtual_machine.template_vyos.disks.0.size
    eagerly_scrub    = data.vsphere_virtual_machine.template_vyos.disks.0.eagerly_scrub
    thin_provisioned = data.vsphere_virtual_machine.template_vyos.disks.0.thin_provisioned
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template_vyos.id
  }

  wait_for_guest_net_timeout = 0
}
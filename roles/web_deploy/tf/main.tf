# Set up VSphere provider and credentials

provider "vsphere" {
    user            = var.username
    password        = var.password
    vsphere_server  = var.vcenter

    # For self-signed certificates
    allow_unverified_ssl = true
}

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

data "vsphere_network" "pg" {
    name = var.Datacenter_Net
    datacenter_id   = data.vsphere_datacenter.dc.id
}

data "vsphere_virtual_machine" "template_2022" {
  name          = "Base_Server2022"
  datacenter_id = data.vsphere_datacenter.dc.id
}

resource "vsphere_virtual_machine" "cdx-web-01" {
  name             = "cdx-web-01"
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.store.id
  num_cpus         = 2
  memory           = 4096
  guest_id         = data.vsphere_virtual_machine.template_2022.guest_id
  folder           = var.server_folder
  scsi_type        = data.vsphere_virtual_machine.template_2022.scsi_type
  network_interface {
    network_id   = "${data.vsphere_network.pg.id}"
    adapter_type = data.vsphere_virtual_machine.template_2022.network_interface_types[0]
  }

  disk {
    label            = "disk0"
    size             = data.vsphere_virtual_machine.template_2022.disks.0.size
    eagerly_scrub    = data.vsphere_virtual_machine.template_2022.disks.0.eagerly_scrub
    thin_provisioned = data.vsphere_virtual_machine.template_2022.disks.0.thin_provisioned
  }

  disk {
    label            = "disk1"
    unit_number      = 1
    size             = 400
    eagerly_scrub    = false
    thin_provisioned = true
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template_2022.id
    
    customize {
      windows_options {
        computer_name    = "cdx-temp-01"
        admin_password   = var.win_admin_password
        workgroup        = "WORKGROUP"
        auto_logon       = true
        auto_logon_count = 3

      }

      network_interface {

      }
    }
  }

  wait_for_guest_net_timeout = 0

}
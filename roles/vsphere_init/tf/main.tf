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

resource "vsphere_folder" "VM_parent" {
    path            = var.VM_parent_folder
    type            = "vm"
    datacenter_id   = data.vsphere_datacenter.dc.id
}

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

# OUTPUTS

output "Core_Router_path" {
    value = vsphere_folder.Core_Router_folder.path
}

output "Tier_1_Router_path" {
    value = vsphere_folder.Tier_1_Router_folder.path
}

output "Servers_path" {
    value = vsphere_folder.Servers_folder.path
}
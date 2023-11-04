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

module "environment" {
    source = "./environment"
    username        = var.username
    password        = var.password
    vcenter         = var.vcenter
}

module "routers" {
    source = "./routers"
    username        = var.username
    password        = var.password
    vcenter         = var.vcenter
}

module "servers" {
    source = "./servers"
    username        = var.username
    password        = var.password
    vcenter         = var.vcenter
}

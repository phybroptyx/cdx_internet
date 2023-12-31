variable "username" {
    description = "Vcenter Username"
    type        = string
    sensitive   = true
}

variable "password" {
    description = "Vcenter Password"
    type        = string
    sensitive   = true
}

variable "vcenter" {
    description = "VCenter FQDN"
    type        = string
    sensitive   = true
}

variable "dc" {
    default = "CDX Datacenter"
}

variable "server_folder" {
    default = "/CDX Environment/Internet/Servers"
}

variable "datastore" {
    default = "Datastore_1"
}

variable "cluster" {
    default = "CDX"
}

variable "Web_Net" {
    default = "CDX - Tier 2 - Seattle"
}

variable "NSTP_Net" {
    default = "CDX - Tier 2 - Frankfurt"
}
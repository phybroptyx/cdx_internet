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

variable "win_admin_password" {
    default = "P@ssw0rd303"
}

variable "vcenter" {
    description = "VCenter FQDN"
    type        = string
    sensitive   = true
}

variable "dc" {
    default = "CDX Datacenter"
}

variable "tier_0_folder" {
    default = "/CDX Environment/Internet/Core Routers"
}

variable "tier_1_folder" {
    default = "/CDX Environment/Internet/Tier 1 Routers"
}

variable "datastore" {
    default = "Datastore_1"
}

variable "cluster" {
    default = "CDX"
}

variable "Tier_0" {
    default = "CDX - Tier 0 - Internet"
}

variable "Tier_1_AP" {
    default = "CDX - Tier 1 - Asia-Pacific"
}

variable "Tier_1_EA" {
    default = "CDX - Tier 1 - Europe-Africa"
}

variable "Tier_1_AM" {
    default = "CDX - Tier 1 - Americas"
}

variable "TOR" {
    default = "CDX - Tier 2 - Toronto"
}

variable "SEA" {
    default = "CDX - Tier 2 - Seattle"
}

variable "RIO" {
    default = "CDX - Tier 2 - Rio de Janeiro"
}

variable "ROK" {
    default = "CDX - Tier 2 - Seoul"
}

variable "DXB" {
    default = "CDX - Tier 2 - Dubai"
}

variable "SYD" {
    default = "CDX - Tier 2 - Sydney"
}

variable "DE" {
    default = "CDX - Tier 2 - Frankfurt"
}

variable "VLV" {
    default = "CDX - Tier 2 - Vladivostok"
}

variable "LON" {
    default = "CDX - Tier 2 - London"
}

variable "AMS" {
    default = "CDX - Tier 2 - Amsterdam"
}
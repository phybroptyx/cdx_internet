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

data "vsphere_network" "pg_nstp" {
    name = var.NSTP_Net
    datacenter_id   = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "pg_web" {
    name = var.Web_Net
    datacenter_id   = data.vsphere_datacenter.dc.id
}

data "vsphere_virtual_machine" "template_2022" {
  name          = "Base_Server2022"
  datacenter_id = data.vsphere_datacenter.dc.id
}

resource "vsphere_virtual_machine" "cdx-nstp-01" {
  name             = "cdx-nstp-01"
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.store.id
  num_cpus         = 4
  memory           = 32768
  guest_id         = data.vsphere_virtual_machine.template_2022.guest_id
  folder           = var.server_folder
  scsi_type        = data.vsphere_virtual_machine.template_2022.scsi_type
  sync_time_with_host = true
  network_interface {
    network_id   = "${data.vsphere_network.pg_nstp.id}"
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
    size             = 120
    unit_number      = 1
    eagerly_scrub    = false
    thin_provisioned = true
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template_2022.id
    
    customize {
      windows_options {
        computer_name    = "cdx-nstp-01"
        admin_password   = var.password
        workgroup        = "WORKGROUP"
        auto_logon       = true
        auto_logon_count = 2
        # run_once_command_list = [
        #   "cmd.exe /K Powershell.exe Set-TimeZone -Id UTC",
        #   "cmd.exe /K Powershell.exe Get-NetConnectionProfile | Set-NetConnectionProfile -NetworkCategory Public",
        #   "cmd.exe /K Powershell.exe New-NetFirewallRule -DisplayName 'Allow ICMPv4-In' -Protocol ICMPv4",
        #   "cmd.exe /K Powershell.exe New-NetFirewallRule -DisplayName 'Allow ICMPv4-Out' -Protocol ICMPv4 -Direction Outbound",
        #   "cmd.exe /K Powershell.exe New-NetFirewallRule -Name 'NTP Server Port' -DisplayName 'NTP Server Port' -Description 'Allow NTP Server Port' -Profile Any -Direction Inbound -Action Allow -Protocol UDP -Program Any -LocalAddress Any -LocalPort 123",
        #   "cmd.exe /K Powershell.exe Disable-NetAdapterBinding -Name '*' -ComponentID ms_tcpip6 -PassThru | ForEach-Object { Disable-NetAdapter $_; Enable-NetAdapter $_ }",
        #   "cmd.exe /K Powershell.exe Set-Service -Name W32Time -StartupType Automatic",
        #   "cmd.exe /K Powershell.exe Set-ItemProperty -Path HKLM:\\SYSTEM\\CurrentControlSet\\Services\\W32Time\\TimeProviders\\NtpServer -Name 'Enabled' -Value 1; Set-ItemProperty -Path HKLM:\\System\\CurrentControlSet\\Services\\W32Time\\Config -name 'AnnounceFlags' -value 5",
        #   "cmd.exe /K Powershell.exe C:\\Windows\\System32\\cmd.exe /K 'w32tm /config /update'",
        #   "cmd.exe /K Powershell.exe Start-Service -Name W32Time",
        #   "cmd.exe /K Powershell.exe Install-WindowsFeature -name DNS -IncludeManagementTools",
        #   "cmd.exe /K Powershell.exe Restart-Computer"
        # ]
      }

      network_interface {
        ipv4_address    = "46.244.164.88"
        ipv4_netmask    = 24
        dns_server_list = [ "46.244.164.88" ]
      }

      ipv4_gateway = "46.244.164.194"
    }
  }

  wait_for_guest_net_timeout = 0
}

resource "vsphere_virtual_machine" "cdx-web-01" {
  name             = "cdx-web-01"
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.store.id
  num_cpus         = 4
  memory           = 32768
  guest_id         = data.vsphere_virtual_machine.template_2022.guest_id
  folder           = var.server_folder
  scsi_type        = data.vsphere_virtual_machine.template_2022.scsi_type
  sync_time_with_host = true
  network_interface {
    network_id   = "${data.vsphere_network.pg_web.id}"
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
    size             = 400
    unit_number      = 1
    eagerly_scrub    = false
    thin_provisioned = true
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template_2022.id
    
    customize {
      windows_options {
        computer_name    = "cdx-web-01"
        admin_password   = var.password
        workgroup        = "WORKGROUP"
        auto_logon       = true
        auto_logon_count = 2
        # run_once_command_list = [
        #   "cmd.exe /K Powershell.exe Disable-NetAdapterBinding -Name 'Ethernet*' -ComponentID 'ms_tcpip6'",
        #   "cmd.exe /K Powershell.exe Set-TimeZone -Id 'Pacific Standard Time'",
        #   "cmd.exe /K Powershell.exe Get-NetConnectionProfile | Set-NetConnectionProfile -NetworkCategory Public",
        #   "cmd.exe /K Powershell.exe New-NetFirewallRule -DisplayName 'Allow ICMPv4-In' -Protocol ICMPv4",
        #   "cmd.exe /K Powershell.exe New-NetFirewallRule -DisplayName 'Allow ICMPv4-Out' -Protocol ICMPv4 -Direction Outbound",
        #   "cmd.exe /K Powershell.exe Set-Service -Name W32Time -StartupType Automatic",
        #   "cmd.exe /K Powershell.exe Start-Service -Name W32Time",
        #   "cmd.exe /K Powershell.exe Get-Disk -Number 1 | Initialize-Disk -PartitionStyle MBR -PassThru | New-Partition -DriveLetter W -UseMaximumSize | Format-Volume -FileSystem NTFS -NewFileSystemLabel 'Web_Content' -Confirm:$false",
        #   "cmd.exe /K Powershell.exe New-Item -ItemType Directory -Path W:\\Web\\msftconnecttest.com; Add-Content -Path W:\\Web\\msftconnecttest.com\\connecttest.txt -Value 'Microsoft Connect Test'",
        #   "cmd.exe /K Powershell.exe New-Item -ItemType Directory -Path W:\\Web\\msftncsi.com; Add-Content -Path W:\\Web\\msftncsi.com\\ncsi.txt -Value 'Microsoft NCSI'",
        #   "cmd.exe /K Powershell.exe Install-WindowsFeature -name Web-Server,Web-Mgmt-Tools",
        #   "cmd.exe /K Powershell.exe Restart-Computer"
        # ]

      }

      network_interface {
        ipv4_address    = "23.96.0.60"
        ipv4_netmask    = 24
        dns_server_list = [ "46.244.164.88" ]
      }

      ipv4_gateway = "23.96.0.77"
    }
  }

  wait_for_guest_net_timeout = 0
}
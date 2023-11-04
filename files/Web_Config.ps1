Get-NetConnectionProfile | Set-NetConnectionProfile -NetworkCategory Public
Set-TimeZone -Id \"Pacific Standard Time\"
New-NetFirewallRule -DisplayName \"Allow ICMPv4-In\" -Protocol ICMPv4
New-NetFirewallRule -DisplayName \"Allow ICMPv4-Out\" -Protocol ICMPv4 -Direction Outbound
Disable-NetAdapterBinding -Name "*" -ComponentID ms_tcpip6 -PassThru | ForEach-Object { Disable-NetAdapter $_; Enable-NetAdapter $_ }
New-NetIPAddress -IPAddress 104.100.226.218 -PrefixLength 8 -DefaultGateway 104.0.0.49 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 143.84.78.18 -PrefixLength 16 -DefaultGateway 143.84.2.5 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 156.112.106.15 -PrefixLength 16 -DefaultGateway 156.112.87.4 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 172.226.176.220 -PrefixLength 16 -DefaultGateway 172.226.117.84 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 23.204.166.21 -PrefixLength 16 -DefaultGateway 23.204.107.102 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 23.211.39.103 -PrefixLength 16 -DefaultGateway 23.211.39.2 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 23.214.39.160 -PrefixLength 16 -DefaultGateway 23.214.0.71 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 13.33.255.55 -PrefixLength 24 -DefaultGateway 13.33.255.4 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 132.163.4.223 -PrefixLength 24 -DefaultGateway 132.163.4.5 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 136.160.88.139 -PrefixLength 24 -DefaultGateway 136.160.88.95 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 15.72.178.23 -PrefixLength 24 -DefaultGateway 15.72.178.100 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 151.101.1.67 -PrefixLength 24 -DefaultGateway 151.101.1.49 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 172.217.12.4 -PrefixLength 24 -DefaultGateway 172.217.12.79 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 172.232.3.42 -PrefixLength 24 -DefaultGateway 172.232.3.174 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 184.25.206.43 -PrefixLength 24 -DefaultGateway 184.25.206.124 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 184.31.198.51 -PrefixLength 24 -DefaultGateway 184.31.198.242 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 185.199.111.153 -PrefixLength 24 -DefaultGateway 185.199.111.89 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 192.124.249.10 -PrefixLength 24 -DefaultGateway 192.124.249.109 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 192.124.249.3 -PrefixLength 24 -DefaultGateway 192.124.249.109 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 204.79.197.200 -PrefixLength 24 -DefaultGateway 204.79.197.8 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 208.80.153.224 -PrefixLength 24 -DefaultGateway 208.80.153.1 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 214.3.16.180 -PrefixLength 24 -DefaultGateway 214.3.16.81 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 23.11.216.158 -PrefixLength 24 -DefaultGateway 23.11.216.55 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 23.208.159.201 -PrefixLength 24 -DefaultGateway 23.208.159.25 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 23.213.54.35 -PrefixLength 24 -DefaultGateway 23.213.54.117 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 3.212.51.88 -PrefixLength 24 -DefaultGateway 3.212.51.177 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 52.222.30.169 -PrefixLength 24 -DefaultGateway 52.222.30.244 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 52.61.85.77 -PrefixLength 24 -DefaultGateway 52.61.85.9 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 96.127.62.6 -PrefixLength 24 -DefaultGateway 96.127.62.74 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 98.138.219.231 -PrefixLength 24 -DefaultGateway 98.138.219.46 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 13.107.4.52 -PrefixLength 24 -DefaultGateway 13.107.4.113 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 172.232.4.139 -PrefixLength 24 -DefaultGateway 172.232.4.27 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 104.17.33.82 -PrefixLength 24 -DefaultGateway 104.17.33.125 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 23.96.0.45 -PrefixLength 24 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 104.100.233.170 -PrefixLength 8 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 104.100.234.69 -PrefixLength 8 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 104.72.48.87 -PrefixLength 8 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 143.84.78.18 -PrefixLength 16 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 143.84.99.20 -PrefixLength 16 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 156.112.106.15 -PrefixLength 16 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 156.112.108.76 -PrefixLength 16 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 172.226.176.220 -PrefixLength 16 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 172.226.181.65 -PrefixLength 16 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 23.204.70.60 -PrefixLength 16 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 23.204.166.21 -PrefixLength 16 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 23.211.39.103 -PrefixLength 16 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 23.211.93.125 -PrefixLength 16 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 23.211.18.40 -PrefixLength 16 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 23.214.39.160 -PrefixLength 16 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 23.214.40.141 -PrefixLength 16 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 23.214.42.140 -PrefixLength 16 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 204.79.197.203 -PrefixLength 24 -InterfaceAlias Ethernet0 -SkipAsSource $true
Set-Service -Name W32Time -StartupType Automatic
Start-Service -Name W32Time
Get-Disk -Number 1 | Initialize-Disk -PartitionStyle MBR -PassThru | New-Partition -DriveLetter W -UseMaximumSize | Format-Volume -FileSystem NTFS -NewFileSystemLabel "Web_Content" -Confirm:$false
New-Item -ItemType Directory -Path W:\Web\msftconnecttest.com; Add-Content -Path W:\Web\msftconnecttest.com\connecttest.txt -Value \"Microsoft Connect Test\"
New-Item -ItemType Directory -Path W:\Web\msftncsi.com; Add-Content -Path W:\Web\msftncsi.com\ncsi.txt -Value \"Microsoft NCSI\"
Install-WindowsFeature -name Web-Server,Web-Mgmt-Tools
Start-Sleep -Seconds 10
Remove-Website -Name \"Default Web Site\"
New-Website -Name MSFT_Connect_Test -HostHeader www.msftconnecttest.com -IPAddress 23.96.0.60 -PhysicalPath W:\Web\msftconnecttest.com -Port 80
New-Website -Name MSFT_NCSI -HostHeader www.msftncsi.com -IPAddress 23.96.0.45 -PhysicalPath W:\Web\msftncsi.com -Port 80
Add-WebConfigurationProperty -Filter '/system.webServer/defaultDocument/files' -Name '.' -Value @{value=\"connecttest.txt\"} -Location MSFT_Connect_Test
Add-WebConfigurationProperty -Filter '/system.webServer/defaultDocument/files' -Name '.' -Value @{value=\"ncsi.txt\"} -Location MSFT_NCSI

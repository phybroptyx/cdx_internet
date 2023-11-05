Get-NetConnectionProfile | Set-NetConnectionProfile -NetworkCategory Public
Set-TimeZone -Id UTC
New-NetFirewallRule -DisplayName \"Allow ICMPv4-In\" -Protocol ICMPv4
New-NetFirewallRule -DisplayName \"Allow ICMPv4-Out\" -Protocol ICMPv4 -Direction Outbound
New-NetFirewallRule -Name \"NTP Server Port\" -DisplayName \"NTP Server Port\" -Description \"Allow NTP Server Port\" -Profile Any -Direction Inbound -Action Allow -Protocol UDP -Program Any -LocalAddress Any -LocalPort 123
Disable-NetAdapterBinding -Name "*" -ComponentID ms_tcpip6 -PassThru | ForEach-Object { Disable-NetAdapter $_; Enable-NetAdapter $_ }
New-NetIPAddress -IPAddress 198.41.0.4 -PrefixLength 24 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 199.9.14.201 -PrefixLength 24 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 192.33.4.12 -PrefixLength 24 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 199.7.91.13 -PrefixLength 24 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 192.203.230.10 -PrefixLength 24 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 192.5.5.241 -PrefixLength 24 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 192.112.36.4 -PrefixLength 24 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 198.97.190.53 -PrefixLength 24 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 192.36.148.17 -PrefixLength 24 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 192.58.128.30 -PrefixLength 24 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 193.0.14.129 -PrefixLength 24 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 199.7.83.42 -PrefixLength 24 -InterfaceAlias Ethernet0 -SkipAsSource $true
New-NetIPAddress -IPAddress 202.12.27.33 -PrefixLength 24 -InterfaceAlias Ethernet0 -SkipAsSource $true
Set-Service -Name W32Time -StartupType Automatic
Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Services\W32Time\TimeProviders\NtpServer -Name "Enabled" -Value 1; Set-ItemProperty -Path HKLM:\System\CurrentControlSet\Services\W32Time\Config -name "AnnounceFlags" -value 5
C:\Windows\System32\cmd.exe /c "w32tm /config /update"
Start-Service -Name W32Time
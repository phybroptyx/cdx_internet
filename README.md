# Cyber Defense eXercise (CDX) Internet Environment Deployer
## kickstart.yml Playbook

- [ ] **PLAY:** Initialize VSphere Environment
  - [x] **TASK:** Create CDX VSphere Folder Structure (Terraform)
  - [ ] **TASK:** Create CDX Virtual Internet Networks (Terraform)
  - [ ] **TASK:** Create CDX Virtual APT/Red Team Networks (Terraform)
  - [ ] **TASK:** Create CDX Virtual Blue Team Networks (Terraform)
  - [ ] **TASK:** Generate OS Customization Specifications
  - [ ] **TASK:** Build Virtual Machine Templates (Packer)

- [ ] **PLAY:** Deploy Virtual Routing Infrastructure

- [x] **PLAY:** Generate Internet Web Services Server Configuration  (Powershell)
  - [x] **TASK:** Set Firewall Profile to Public
  - [x] **TASK:** Configure Windows Firewall Rules
  - [x] **TASK:** Disable IPv6
  - [x] **TASK:** Set IP Address and DNS information
  - [x] **TASK:** Establish Additional IP Gateways
  - [x] **TASK:** Set Additional IP addresses
  - [x] **TASK:** Set W32time Service Startup Type to Automatic
  - [x] **TASK:** Start W32Time Service
  - [x] **TASK:** Prepare Web Content Disk
  - [x] **TASK:** Add msftconnecttest and NCSI site data
  - [x] **TASK:** Install Microsoft IIS
  - [x] **TASK:** Configure Websites in Microsoft IIS
  - [x] **TASK:** Rename Server

- [x] **PLAY:** Generate CDX Internet DNS/NTP Server Configuration  (Powershell)
  - [x] **TASK:** Add Root DNS Zone Configuration
  - [x] **TASK:** Add Top-Level Domain DNS Zone Configuration
  - [x] **TASK:** Add Second-Level Domain DNS Zone Configuration
  - [x] **TASK:** Add Reverse Lookup DNS Zone Configuration
  - [x] **TASK:** Add Resource Record (Type - A) Configuration
  - [x] **TASK:** Add Resource Record (Type - CNAME) Configuration
  - [x] **TASK:** Set Firewall Profile to Public
  - [x] **TASK:** Configure Windows Firewall Rules
  - [x] **TASK:** Disable IPv6
  - [x] **TASK:** Set IP Address and DNS information
  - [x] **TASK:** Set Additional IP addresses
  - [x] **TASK:** Set W32time Service Startup Type to Automatic
  - [x] **TASK:** Set up NTP Service
  - [x] **TASK:** Update NTP Service
  - [x] **TASK:** Start W32Time Service
  - [x] **TASK:** Rename Server

- [x] **PLAY:** Deploy CDX Internet DNS/NTP Server
  - [x] **TASK:** Wait For Server To Be Available (Ansible)
  - [x] **TASK:** Set Time Zone (Powershell)
  - [x] **TASK:** Apply Server Configuration (Powershell)
  - [x] **TASK:** Shut Down (Powershell)
  - [x] **TASK:** Wait for Server to shut down (Ansible)
  - [x] **TASK:** Power On Server (Ansible)
  - [x] **TASK:** Install DNS (Powershell)
  - [x] **TASK:** Configure DNS (Powershell)

- [x] **PLAY:** Deploy Internet Web Services Server
  - [x] **TASK:** Wait For Server To Be Available (Ansible)
  - [x] **TASK:** Set Time Zone (Powershell)
  - [x] **TASK:** Apply Server Configuration (Powershell)
  - [x] **TASK:** Shut Down (Powershell)
  - [x] **TASK:** Wait for Server to shut down (Ansible)
  - [x] **TASK:** Power On Server (Ansible)

- [ ] **PLAY:** Deploy Windows Activation Service
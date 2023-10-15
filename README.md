# Cyber Defense eXercise (CDX) Internet Environment Deployer
## kickstart.yml Playbook

- [x] **PLAY:** Cleanup Previous Scenario

  - [x] **ROLE:** vsphere_reset
    - [x] **TASK:** Destroy Previous VMs (Terraform)
    - [x] **TASK:** Destroy Previous Networks (Terraform)
    - [x] **TASK:** Destroy Previous (Terraform)

- [x] **PLAY:** Choose Exercise to Deploy

  - [x] **ROLE:** gather_info
    - [x] **TASK:** Prompt user to choose exercise for deployment (Ansible)

- [x] **PLAY:** Initialize VSphere Environment

  - [x] **ROLE:** vsphere_init
    - [x] **TASK:** Initialize CDX Exercise VSphere Folders (Ansible)
      - [x] **TASK:** Initialize Terraform Environment (Terraform)
      - [x] **TASK:** Apply Terraform Configuration (Terraform)

- [x] **PLAY:** Deploy Virtual Internet Routing Infrastructure

  - [x] **ROLE:** internet_networks
    - [x] **TASK:** Initialize CDX Internet VSphere Folders (Ansible)
      - [x] **TASK:** Initialize Terraform Environment (Terraform)
      - [x] **TASK:** Apply Terraform Configuration (Terraform)

  - [x] **ROLE:** tier_0_routers
    - [x] **TASK:** Create Core Routers (Ansible)
      - [x] **TASK:** Create Router CORE-T0-R1 (Ansible)
      - [x] **TASK:** Create Router CORE-T0-R2 (Ansible)
      - [x] **TASK:** Create Router CORE-T0-R3  (Ansible)
    - [x] **TASK:** Add NICs to CORE-T0-R1 (Ansible)
    - [x] **TASK:** Add NICs to CORE-T0-R2 (Ansible)
    - [x] **TASK:** Add NICs to CORE-T0-R3 (Ansible)
    - [x] **TASK:** Add Tier 0 Redundant Link to Core Routers (Ansible)
    - [x] **TASK:** Power On Core Routers (Ansible)
    - [x] **TASK:** Wait for Core Routers to be available (Ansible)
    - [x] **TASK:** Wait 15 seconds before continuing (Ansible)
    - [x] **TASK:** Configure CORE-T0-R1 (Ansible/vbash)
    - [x] **TASK:** Configure CORE-T0-R2 (Ansible/vbash)
    - [x] **TASK:** Configure CORE-T0-R3 (Ansible/vbash)

  - [x] **ROLE:** tier_1_routers
    - [x] **TASK:** Create Tier 1 Routers (Ansible)
      - [x] **TASK:** Create Router IXP-EQIX-2 (Ansible)
      - [x] **TASK:** Create Router IXP-EQIX-3 (Ansible)
      - [x] **TASK:** Create Router IXP-EQIX-4 (Ansible)
      - [x] **TASK:** Create Router IXP-EQIX-5 (Ansible)
      - [x] **TASK:** Create Router IXP-EQIX-6 (Ansible)
      - [x] **TASK:** Create Router IXP-EQIX-7 (Ansible)
      - [x] **TASK:** Create Router IXP-EQIX-8 (Ansible)
      - [x] **TASK:** Create Router IXP-EQIX-9 (Ansible)
      - [x] **TASK:** Create Router IXP-EQIX-10 (Ansible)
      - [x] **TASK:** Create Router IXP-EQIX-11 (Ansible)
    - [x] **TASK:** Add NICs to IXP-EQIX-2 (Ansible)
    - [x] **TASK:** Add NICs to IXP-EQIX-3 (Ansible)
    - [x] **TASK:** Add NICs to IXP-EQIX-4 (Ansible)
    - [x] **TASK:** Add NICs to IXP-EQIX-5 (Ansible)
    - [x] **TASK:** Add NICs to IXP-EQIX-6 (Ansible)
    - [x] **TASK:** Add NICs to IXP-EQIX-7 (Ansible)
    - [x] **TASK:** Add NICs to IXP-EQIX-8 (Ansible)
    - [x] **TASK:** Add NICs to IXP-EQIX-9 (Ansible)
    - [x] **TASK:** Add NICs to IXP-EQIX-10 (Ansible)
    - [x] **TASK:** Add NICs to IXP-EQIX-11 (Ansible)
    - [x] **TASK:** Power On Tier 1 Routers (Ansible)
    - [x] **TASK:** Wait for Tier 1 Routers to be available (Ansible)
    - [x] **TASK:** Wait 15 seconds before continuing (Ansible)
    - [x] **TASK:** Configure IXP-EQIX-2 (Ansible/vbash)
    - [x] **TASK:** Configure IXP-EQIX-3 (Ansible/vbash)
    - [x] **TASK:** Configure IXP-EQIX-4 (Ansible/vbash)
    - [x] **TASK:** Configure IXP-EQIX-5 (Ansible/vbash)
    - [x] **TASK:** Configure IXP-EQIX-6 (Ansible/vbash)
    - [x] **TASK:** Configure IXP-EQIX-7 (Ansible/vbash)
    - [x] **TASK:** Configure IXP-EQIX-8 (Ansible/vbash)
    - [x] **TASK:** Configure IXP-EQIX-9 (Ansible/vbash)
    - [x] **TASK:** Configure IXP-EQIX-10 (Ansible/vbash)
    - [x] **TASK:** Configure IXP-EQIX-11 (Ansible/vbash)

<!-- - [ ] **PLAY:** Initialize VSphere Environment
  - [x] **TASK:** Create CDX VSphere Folder Structure (Terraform)
  - [ ] **TASK:** Create CDX Virtual Internet Networks (Terraform)
  - [ ] **TASK:** Create CDX Virtual APT/Red Team Networks (Terraform)
  - [ ] **TASK:** Create CDX Virtual Blue Team Networks (Terraform)
  - [ ] **TASK:** Generate OS Customization Specifications
  - [ ] **TASK:** Build Virtual Machine Templates (Packer)

- [ ] **PLAY:** Deploy Virtual Routing Infrastructure -->

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
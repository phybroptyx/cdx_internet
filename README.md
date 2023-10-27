# Cyber Defense eXercise (CDX) Internet Environment Deployer
## main.yml Playbook

- [x] **ROLE:** internet_networks
    - [x] **TASK:** Initialize CDX Internet VSphere Folders (Ansible)
      - [x] **TASK:** Initialize Terraform Environment (Terraform)
      - [x] **TASK:** Apply Terraform Configuration (Terraform)

- [x] **ROLE:** vsphere_init
    - [x] **TASK:** Initialize CDX Exercise VSphere Folders (Ansible)
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

- [x] **ROLE:** nstp_config (Ansible - Generates PowerShell Server and DNS Configuration Scripts)
  - [x] **TASK:** Add DNS Zone Configuration
  - [x] **TASK:** Add DNS Records Configuration
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

- [x] **ROLE:** web_config (Ansible - Generates PowerShell Server Configuration Script)
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

- [ ] **ROLE:** apt_deploy (Ansible)
    - [ ] **TASK:** Connect APT Repository to CDX-E Network
    - [ ] **TASK:** Relocate APT Repository in VSphere

- [x] **ROLE:** kms_deploy
    - [x] **TASK:** Connect KMS Repository to CDX-E Network

- [x] **ROLE:** nstp_deploy
  - [x] **TASK:** Create Internet NSTP Server (Terraform)
  - [x] **TASK:** Wait For Server To Be Available (Ansible)
  - [x] **TASK:** Set Time Zone (Powershell)
  - [x] **TASK:** Apply Server Configuration (Powershell)
  - [x] **TASK:** Shut Down (Powershell)
  - [x] **TASK:** Wait for Server to shut down (Ansible)
  - [x] **TASK:** Power On Server (Ansible)
  - [x] **TASK:** Install DNS (Powershell)
  - [x] **TASK:** Configure DNS (Powershell)

- [x] **ROLE:** sus_deploy
    - [x] **TASK:** Connect SUS Repository to CDX-E Network
    - [x] **TASK:** Relocate SUS Repository in VSphere

- [x] **ROLE:** web_deploy
  - [x] **TASK:** Create Internet Web Server (Terraform)
  - [x] **TASK:** Wait For Server To Be Available (Ansible)
  - [x] **TASK:** Set Time Zone (Powershell)
  - [x] **TASK:** Apply Server Configuration (Powershell)
  - [x] **TASK:** Shut Down (Powershell)
  - [x] **TASK:** Wait for Server to shut down (Ansible)
  - [x] **TASK:** Power On Server (Ansible)

- [x] **ROLE:** yum_deploy
    - [x] **TASK:** Connect YUM Repository to CDX-E Network
    - [x] **TASK:** Relocate YUM Repository in VSphere
# Cyber Defense eXercise (CDX) from Code Project
## TO DO LIST

- [ ] **PLAYBOOK: cdx_exercise:** Standardize Service Delivery Point (SDP) router deployments (Ansible), potentially integrating with Terraform

- [ ] **PLAYBOOK: all:** Research using the Terraform VSphere provider for deploying VyOS systems

- [ ] **vsphere:** Build Templates for OS deployments

    - [ ] Windows
    
        - [x] Windows Server 2022
        - [x] Windows Server 2019
        - [x] Windows Server 2016
        - [x] Windows Server 2012 R2
        - [x] Windows Server 2008 R2
        - [ ] Windows 10 Build 21H2
        - [x] Windows 10 Build 1809
        - [x] Windows 10 Build 1511
        - [x] Windows 8.1
        - [x] Windows 7 SP 1

    - [ ] Linux
    
        - [x] CentOS 9 Server
        - [x] CentOS 9 Dekstop
        - [x] CentOS 8 Server
        - [x] CentOS 8 Dekstop
        - [x] CentOS 7 Server
        - [x] CentOS 7 Dekstop
        - [ ] Fedora 38 Server
        - [x] Fedora 38 Workstation
        - [x] Ubuntu 22.04 Server
        - [x] Ubuntu 22.04 Desktop
        - [x] Ubuntu 20.04 Server
        - [x] Ubuntu 20.04 Desktop
        - [x] Ubuntu 18.04 Server
        - [x] Ubuntu 18.04 Desktop
        - [x] Ubuntu 16.04 Server
        - [x] Ubuntu 16.04 Desktop
        - [ ] Debian 12
        - [ ] Debian 11

- [ ] **PLAYBOOK: cdx_exercise:** Develop OS/software vulnerability deployment plays/tasks

- [ ] **PLAYBOOK: cdx_exercise:** Build Terraform exercise modules

    - [ ] **EXERCISES:**

        - [ ] OBSIDIAN DAGGER
        - [ ] DESERT CITADEL
        - [ ] HARDENED CHAMPION
        - [ ] GUARDIAN SENTINEL
        - [ ] SILENT KNIGHT
        - [ ] URBAN SWORD
        - [ ] BRASS DEMON
        - [ ] DEMON KNIGHT
        - [ ] DIAMOND REIGN
        - [ ] FUTURE JAEGER

- [ ] **PLAYBOOK: cdx_internet:** Develop Packer/Terraform code for repository creation and configuration

- [ ] **PLAYBOOK: all:** Author documentation

  - [ ] **PLAYBOOK:** cdx_internet

    - [ ] **PLAYS:** 
        - [ ] Deploy Virtual Internet Infrastructure
        - [ ] Tear Down Virtual Internet Infrastructure

    - [ ] **ROLES:**
        - [x] apt_deploy
        - [ ] internet_networks
        - [ ] kms_deploy
        - [ ] kms_reset
        - [ ] nstp_config
        - [ ] nstp_deploy
        - [ ] repo_reset
        - [x] sus_deploy
        - [ ] teardown_networks
        - [ ] teardown_routers
        - [ ] teardown_servers
        - [ ] teardown_vsphere
        - [ ] tier_0_routers
        - [ ] tier_1_routers
        - [ ] vsphere_init
        - [ ] web_config
        - [ ] web_deploy
        - [x] yum_deploy

  - [ ] **PLAYBOOK:** cdx_exercise

    - [ ] **PLAYS:**
        - [ ] Tear Down Previous Exercise Environment
        - [ ] Deploy Defended Network Environment
        - [ ] Deploy Blue Team SOC Environment
        - [ ] Deploy Red Team Environment

    - [ ] **ROLES:**
        - [ ] gather_info
        - [ ] folder_init
        - [ ] network_init
        - [ ] mpnet_init
        - [ ] blue_init
        - [ ] red_init

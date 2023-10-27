# Cyber Defense eXercise (CDX) from Code Project
## TO DO LIST

- [ ] **ITEM:** Standardize Service Delivery Point (SDP) router deployments (Ansible), potentially integrating with Terraform

- [ ] **ITEM:** Build Terraform exercise modules
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

- [ ] **ITEM:** Develop Packer/Terraform code for repository creation and configuration

- [ ] **ITEM:** Author documentation

  - [ ] **PLAYBOOKS:** 
    - [ ] cdx_internet

  - [ ] **PLAYS:** 
    - [ ] Deploy Virtual Internet Infrastructure
    - [ ] Tear Down Virtual Internet Infrastructure

  - [ ] **ROLES:**
    - **[x]** apt_deploy
    - [ ] gather_info
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
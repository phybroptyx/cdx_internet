# Cyber Defense eXercise (CDX) from Code Project
## TO DO LIST

- [ ] **cdx_exercise:** Standardize Service Delivery Point (SDP) router deployments (Ansible), potentially integrating with Terraform

- [ ] **cdx_exercise:** Build Terraform exercise modules

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

- [ ] **cdx_internet:** Develop Packer/Terraform code for repository creation and configuration

- [ ] **all:** Author documentation

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

yum_deploy
=========

This role handles deployment tasks for the CDX-E Linux Yellowdog Updater Modified (YUM) Software Repository.  This system is inteded to provide a centralized repository for software and updates for Linux systems that use YUM for software distribution and management.  As of 26 Oct 2023, I have pre-built this virtual machine and imported it into the VSphere environment.  I'll be looking to develop a Terraform/Packer solution to build the YUM repo, and I'll post it when completed and update this README file.

Requirements
------------

- A virtual machine named "yum-mirror" with at least one virtual network adapter.

- The "CDX - Tier 2 - Amsterdam" portgroup and "{ datacenter }/vm/CDX Environment/Internet/Servers" folder must exist in VSphere for this role to succeed.  These are created by the "internet_networks" and "vsphere_init" roles, respectively.  

Role Variables
--------------

This role has no role-specific variables defined.

Dependencies
------------

- The "move_yum_repo_to_cdxe.yml" task targets the specific MAC address of the network adapter that is to be moved to the CDX-E network.  This may need to be modified to fit your environment.  

- The "move_yum_repo_in_vsphere.yml" task targets the YUM repo VM by name ("yum-mirror").  This may need to be modified to fit your environment.

Example Playbook
----------------


License
-------

BSD

Author Information
------------------

Developed by Paul Yhonquea

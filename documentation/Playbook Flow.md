# Cyber Defense eXercise (CDX) Internet Environment Deployer
## main.yml Playbook

```mermaid
---
title: Ansible Playbook Grapher
---
%%{ init: { "flowchart": { "curve": "bumpX" } } }%%
flowchart LR
	%% Start of the playbook 'cdx_internet/main.yml'
	playbook_65414b0f("cdx_internet/main.yml")
		%% Start of the play 'Play: Initialize VSphere Environment (1)'
		play_1a4ba7a0["Play: Initialize VSphere Environment (1)"]
		style play_1a4ba7a0 fill:#21ab58,color:#ffffff
		playbook_65414b0f --> |"1"| play_1a4ba7a0
		linkStyle 0 stroke:#21ab58,color:#21ab58
			pre_task_55253b43["[pre_task]  include_vars"]
			style pre_task_55253b43 stroke:#21ab58,fill:#ffffff
			play_1a4ba7a0 --> |"1"| pre_task_55253b43
			linkStyle 1 stroke:#21ab58,color:#21ab58
			pre_task_757c85bb["[pre_task]  include_vars"]
			style pre_task_757c85bb stroke:#21ab58,fill:#ffffff
			play_1a4ba7a0 --> |"2"| pre_task_757c85bb
			linkStyle 2 stroke:#21ab58,color:#21ab58
			%% Start of the role 'vsphere_init'
			play_1a4ba7a0 --> |"3"| role_e87064f1
			linkStyle 3 stroke:#21ab58,color:#21ab58
			role_e87064f1("[role] vsphere_init")
			style role_e87064f1 fill:#21ab58,color:#ffffff,stroke:#21ab58
				task_196c5b5c[" vsphere_init : Initialize Terraform Environment"]
				style task_196c5b5c stroke:#21ab58,fill:#ffffff
				role_e87064f1 --> |"1"| task_196c5b5c
				linkStyle 4 stroke:#21ab58,color:#21ab58
				task_549e3ff7[" vsphere_init : DEPLOY: {{ task_title }}"]
				style task_549e3ff7 stroke:#21ab58,fill:#ffffff
				role_e87064f1 --> |"2"| task_549e3ff7
				linkStyle 5 stroke:#21ab58,color:#21ab58
			%% End of the role 'vsphere_init'
		%% End of the play 'Play: Initialize VSphere Environment (1)'
		%% Start of the play 'Play: Deploy CDX-E Internet Routing Infrastructure (1)'
		play_b37dd685["Play: Deploy CDX-E Internet Routing Infrastructure (1)"]
		style play_b37dd685 fill:#4e5e7e,color:#ffffff
		playbook_65414b0f --> |"2"| play_b37dd685
		linkStyle 6 stroke:#4e5e7e,color:#4e5e7e
			pre_task_76e047d6["[pre_task]  include_vars"]
			style pre_task_76e047d6 stroke:#4e5e7e,fill:#ffffff
			play_b37dd685 --> |"1"| pre_task_76e047d6
			linkStyle 7 stroke:#4e5e7e,color:#4e5e7e
			pre_task_0af1c0fd["[pre_task]  include_vars"]
			style pre_task_0af1c0fd stroke:#4e5e7e,fill:#ffffff
			play_b37dd685 --> |"2"| pre_task_0af1c0fd
			linkStyle 8 stroke:#4e5e7e,color:#4e5e7e
			%% Start of the role 'deploy_routers'
			play_b37dd685 --> |"3"| role_6ac54caf
			linkStyle 9 stroke:#4e5e7e,color:#4e5e7e
			role_6ac54caf("[role] deploy_routers")
			style role_6ac54caf fill:#4e5e7e,color:#ffffff,stroke:#4e5e7e
				task_88085d0c[" deploy_routers : Initialize Terraform Environment"]
				style task_88085d0c stroke:#4e5e7e,fill:#ffffff
				role_6ac54caf --> |"1"| task_88085d0c
				linkStyle 10 stroke:#4e5e7e,color:#4e5e7e
				task_f8d4e5e6[" deploy_routers : DEPLOY: {{ task_title }}"]
				style task_f8d4e5e6 stroke:#4e5e7e,fill:#ffffff
				role_6ac54caf --> |"2"| task_f8d4e5e6
				linkStyle 11 stroke:#4e5e7e,color:#4e5e7e
			%% End of the role 'deploy_routers'
			%% Start of the role 'configure_routers'
			play_b37dd685 --> |"4"| role_6a1139fb
			linkStyle 12 stroke:#4e5e7e,color:#4e5e7e
			role_6a1139fb("[role] configure_routers")
			style role_6a1139fb fill:#4e5e7e,color:#ffffff,stroke:#4e5e7e
				task_a3b9aa8d[" configure_routers : Wait for Core Routers to be available..."]
				style task_a3b9aa8d stroke:#4e5e7e,fill:#ffffff
				role_6a1139fb --> |"1"| task_a3b9aa8d
				linkStyle 13 stroke:#4e5e7e,color:#4e5e7e
				task_29cbb141[" configure_routers : Configure Internet Routers"]
				style task_29cbb141 stroke:#4e5e7e,fill:#ffffff
				role_6a1139fb --> |"2"| task_29cbb141
				linkStyle 14 stroke:#4e5e7e,color:#4e5e7e
			%% End of the role 'configure_routers'
		%% End of the play 'Play: Deploy CDX-E Internet Routing Infrastructure (1)'
		%% Start of the play 'Play: Deploy CDX-E Internet Services (1)'
		play_d19f66a2["Play: Deploy CDX-E Internet Services (1)"]
		style play_d19f66a2 fill:#b01c99,color:#ffffff
		playbook_65414b0f --> |"3"| play_d19f66a2
		linkStyle 15 stroke:#b01c99,color:#b01c99
			pre_task_27272106["[pre_task]  include_vars"]
			style pre_task_27272106 stroke:#b01c99,fill:#ffffff
			play_d19f66a2 --> |"1"| pre_task_27272106
			linkStyle 16 stroke:#b01c99,color:#b01c99
			pre_task_d6c39d82["[pre_task]  include_vars"]
			style pre_task_d6c39d82 stroke:#b01c99,fill:#ffffff
			play_d19f66a2 --> |"2"| pre_task_d6c39d82
			linkStyle 17 stroke:#b01c99,color:#b01c99
			%% Start of the role 'connect_repos'
			play_d19f66a2 --> |"3"| role_b16100b1
			linkStyle 18 stroke:#b01c99,color:#b01c99
			role_b16100b1("[role] connect_repos")
			style role_b16100b1 fill:#b01c99,color:#ffffff,stroke:#b01c99
				task_16581f15[" connect_repos : Connect Internet software repositories to CDX-E Network"]
				style task_16581f15 stroke:#b01c99,fill:#ffffff
				role_b16100b1 --> |"1"| task_16581f15
				linkStyle 19 stroke:#b01c99,color:#b01c99
				task_5cc4dd57[" connect_repos : Move Internet Repository VMs to Internet Servers VSphere Folder"]
				style task_5cc4dd57 stroke:#b01c99,fill:#ffffff
				role_b16100b1 --> |"2"| task_5cc4dd57
				linkStyle 20 stroke:#b01c99,color:#b01c99
			%% End of the role 'connect_repos'
			%% Start of the role 'connect_kms'
			play_d19f66a2 --> |"4"| role_e03546f0
			linkStyle 21 stroke:#b01c99,color:#b01c99
			role_e03546f0("[role] connect_kms")
			style role_e03546f0 fill:#b01c99,color:#ffffff,stroke:#b01c99
				task_b8231a67[" connect_kms : Connect Microsoft Windows Activation services to CDX-E Network"]
				style task_b8231a67 stroke:#b01c99,fill:#ffffff
				role_e03546f0 --> |"1"| task_b8231a67
				linkStyle 22 stroke:#b01c99,color:#b01c99
			%% End of the role 'connect_kms'
			%% Start of the role 'deploy_servers'
			play_d19f66a2 --> |"5"| role_74982d30
			linkStyle 23 stroke:#b01c99,color:#b01c99
			role_74982d30("[role] deploy_servers")
			style role_74982d30 fill:#b01c99,color:#ffffff,stroke:#b01c99
				task_caed6d8f[" deploy_servers : Initialize Terraform Environment"]
				style task_caed6d8f stroke:#b01c99,fill:#ffffff
				role_74982d30 --> |"1"| task_caed6d8f
				linkStyle 24 stroke:#b01c99,color:#b01c99
				task_2f1fcf97[" deploy_servers : DEPLOY: {{ task_title }}"]
				style task_2f1fcf97 stroke:#b01c99,fill:#ffffff
				role_74982d30 --> |"2"| task_2f1fcf97
				linkStyle 25 stroke:#b01c99,color:#b01c99
			%% End of the role 'deploy_servers'
			%% Start of the role 'configure_web_server'
			play_d19f66a2 --> |"6"| role_f24e82e1
			linkStyle 26 stroke:#b01c99,color:#b01c99
			role_f24e82e1("[role] configure_web_server")
			style role_f24e82e1 fill:#b01c99,color:#ffffff,stroke:#b01c99
				task_9f8b78ca[" configure_web_server : Wait for {{ vm }} to be available..."]
				style task_9f8b78ca stroke:#b01c99,fill:#ffffff
				role_f24e82e1 --> |"1"| task_9f8b78ca
				linkStyle 27 stroke:#b01c99,color:#b01c99
				task_18b96e40[" configure_web_server : {{ task_title }}"]
				style task_18b96e40 stroke:#b01c99,fill:#ffffff
				role_f24e82e1 --> |"2"| task_18b96e40
				linkStyle 28 stroke:#b01c99,color:#b01c99
			%% End of the role 'configure_web_server'
			%% Start of the role 'configure_nstp_server'
			play_d19f66a2 --> |"7"| role_ca8122d3
			linkStyle 29 stroke:#b01c99,color:#b01c99
			role_ca8122d3("[role] configure_nstp_server")
			style role_ca8122d3 fill:#b01c99,color:#ffffff,stroke:#b01c99
				task_3c111839[" configure_nstp_server : Wait for {{ vm }} to be available..."]
				style task_3c111839 stroke:#b01c99,fill:#ffffff
				role_ca8122d3 --> |"1"| task_3c111839
				linkStyle 30 stroke:#b01c99,color:#b01c99
				task_fe5af4db[" configure_nstp_server : {{ task_title }}"]
				style task_fe5af4db stroke:#b01c99,fill:#ffffff
				role_ca8122d3 --> |"2"| task_fe5af4db
				linkStyle 31 stroke:#b01c99,color:#b01c99
				task_17aeb4e0[" configure_nstp_server : Install {{ win_feature_name }}"]
				style task_17aeb4e0 stroke:#b01c99,fill:#ffffff
				role_ca8122d3 --> |"3"| task_17aeb4e0
				linkStyle 32 stroke:#b01c99,color:#b01c99
				task_6f0cc1e8[" configure_nstp_server : Display Results"]
				style task_6f0cc1e8 stroke:#b01c99,fill:#ffffff
				role_ca8122d3 --> |"4"| task_6f0cc1e8
				linkStyle 33 stroke:#b01c99,color:#b01c99
				task_6e079cba[" configure_nstp_server : {{ task_title }}"]
				style task_6e079cba stroke:#b01c99,fill:#ffffff
				role_ca8122d3 --> |"5"| task_6e079cba
				linkStyle 34 stroke:#b01c99,color:#b01c99
			%% End of the role 'configure_nstp_server'
			%% Start of the role 'activate_servers'
			play_d19f66a2 --> |"8"| role_e7d2fe4f
			linkStyle 35 stroke:#b01c99,color:#b01c99
			role_e7d2fe4f("[role] activate_servers")
			style role_e7d2fe4f fill:#b01c99,color:#ffffff,stroke:#b01c99
				task_a54e48cc[" activate_servers : Setting Microsoft Windows Activation Source for {{ vm }}..."]
				style task_a54e48cc stroke:#b01c99,fill:#ffffff
				role_e7d2fe4f --> |"1"| task_a54e48cc
				linkStyle 36 stroke:#b01c99,color:#b01c99
				task_38085dae[" activate_servers : Display Status"]
				style task_38085dae stroke:#b01c99,fill:#ffffff
				role_e7d2fe4f --> |"2"| task_38085dae
				linkStyle 37 stroke:#b01c99,color:#b01c99
				task_0be869f0[" activate_servers : Activate Microsoft Windows for {{ vm }}..."]
				style task_0be869f0 stroke:#b01c99,fill:#ffffff
				role_e7d2fe4f --> |"3"| task_0be869f0
				linkStyle 38 stroke:#b01c99,color:#b01c99
				task_d19effa8[" activate_servers : Display Status"]
				style task_d19effa8 stroke:#b01c99,fill:#ffffff
				role_e7d2fe4f --> |"4"| task_d19effa8
				linkStyle 39 stroke:#b01c99,color:#b01c99
				task_47d42931[" activate_servers : Setting Microsoft Windows Activation Source for {{ vm }}..."]
				style task_47d42931 stroke:#b01c99,fill:#ffffff
				role_e7d2fe4f --> |"5"| task_47d42931
				linkStyle 40 stroke:#b01c99,color:#b01c99
				task_aac887dc[" activate_servers : Display Status"]
				style task_aac887dc stroke:#b01c99,fill:#ffffff
				role_e7d2fe4f --> |"6"| task_aac887dc
				linkStyle 41 stroke:#b01c99,color:#b01c99
				task_6d89fe2c[" activate_servers : Activate Microsoft Windows for {{ vm }}..."]
				style task_6d89fe2c stroke:#b01c99,fill:#ffffff
				role_e7d2fe4f --> |"7"| task_6d89fe2c
				linkStyle 42 stroke:#b01c99,color:#b01c99
				task_aecb21c1[" activate_servers : Display Status"]
				style task_aecb21c1 stroke:#b01c99,fill:#ffffff
				role_e7d2fe4f --> |"8"| task_aecb21c1
				linkStyle 43 stroke:#b01c99,color:#b01c99
			%% End of the role 'activate_servers'
		%% End of the play 'Play: Deploy CDX-E Internet Services (1)'
	%% End of the playbook 'cdx_internet/main.yml'


```
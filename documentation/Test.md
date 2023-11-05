# Cyber Defense eXercise (CDX) Internet Environment Deployer
## main.yml Playbook

```mermaid
---
title: TEST
---
%%{ init: { "flowchart": { "curve": "bumpX" } } }%%
flowchart LR
	%% Start of the playbook 'cdx_internet/main.yml'
	playbook_774bee34("cdx_internet/main.yml")
		%% Start of the play 'Play: Initialize VSphere Environment (1)'
		play_532277c6["Play: Initialize VSphere Environment (1)"]
		style play_532277c6 fill:#86b01c,color:#ffffff
		playbook_774bee34 --> |"1"| play_532277c6
		linkStyle 0 stroke:#86b01c,color:#86b01c
			pre_task_16e69e12["[pre_task]  include_vars"]
			style pre_task_16e69e12 stroke:#86b01c,fill:#ffffff
			play_532277c6 --> |"1"| pre_task_16e69e12
			linkStyle 1 stroke:#86b01c,color:#86b01c
			pre_task_1b84d76c["[pre_task]  include_vars"]
			style pre_task_1b84d76c stroke:#86b01c,fill:#ffffff
			play_532277c6 --> |"2"| pre_task_1b84d76c
			linkStyle 2 stroke:#86b01c,color:#86b01c
			%% Start of the role 'vsphere_init'
			play_532277c6 --> |"3"| role_7231b0d1
			linkStyle 3 stroke:#86b01c,color:#86b01c
			role_7231b0d1("[role] vsphere_init")
			style role_7231b0d1 fill:#86b01c,color:#ffffff,stroke:#86b01c
				task_15de3ced[" vsphere_init : Initialize Terraform Environment"]
				style task_15de3ced stroke:#86b01c,fill:#ffffff
				role_7231b0d1 --> |"1"| task_15de3ced
				linkStyle 4 stroke:#86b01c,color:#86b01c
				task_0e1becc8[" vsphere_init : DEPLOY: {{ task_title }}"]
				style task_0e1becc8 stroke:#86b01c,fill:#ffffff
				role_7231b0d1 --> |"2"| task_0e1becc8
				linkStyle 5 stroke:#86b01c,color:#86b01c
			%% End of the role 'vsphere_init'
		%% End of the play 'Play: Initialize VSphere Environment (1)'
		%% Start of the play 'Play: Deploy CDX-E Internet Routing Infrastructure (1)'
		play_6aabb55d["Play: Deploy CDX-E Internet Routing Infrastructure (1)"]
		style play_6aabb55d fill:#0bc14e,color:#ffffff
		playbook_774bee34 --> |"2"| play_6aabb55d
		linkStyle 6 stroke:#0bc14e,color:#0bc14e
			pre_task_3b171de0["[pre_task]  include_vars"]
			style pre_task_3b171de0 stroke:#0bc14e,fill:#ffffff
			play_6aabb55d --> |"1"| pre_task_3b171de0
			linkStyle 7 stroke:#0bc14e,color:#0bc14e
			pre_task_907f9c40["[pre_task]  include_vars"]
			style pre_task_907f9c40 stroke:#0bc14e,fill:#ffffff
			play_6aabb55d --> |"2"| pre_task_907f9c40
			linkStyle 8 stroke:#0bc14e,color:#0bc14e
			%% Start of the role 'deploy_routers'
			play_6aabb55d --> |"3"| role_476df001
			linkStyle 9 stroke:#0bc14e,color:#0bc14e
			role_476df001("[role] deploy_routers")
			style role_476df001 fill:#0bc14e,color:#ffffff,stroke:#0bc14e
				task_9f7e0428[" deploy_routers : Initialize Terraform Environment"]
				style task_9f7e0428 stroke:#0bc14e,fill:#ffffff
				role_476df001 --> |"1"| task_9f7e0428
				linkStyle 10 stroke:#0bc14e,color:#0bc14e
				task_6ec5b752[" deploy_routers : DEPLOY: {{ task_title }}"]
				style task_6ec5b752 stroke:#0bc14e,fill:#ffffff
				role_476df001 --> |"2"| task_6ec5b752
				linkStyle 11 stroke:#0bc14e,color:#0bc14e
			%% End of the role 'deploy_routers'
			%% Start of the role 'configure_routers'
			play_6aabb55d --> |"4"| role_86f38763
			linkStyle 12 stroke:#0bc14e,color:#0bc14e
			role_86f38763("[role] configure_routers")
			style role_86f38763 fill:#0bc14e,color:#ffffff,stroke:#0bc14e
				task_ea762816[" configure_routers : Wait for Core Routers to be available..."]
				style task_ea762816 stroke:#0bc14e,fill:#ffffff
				role_86f38763 --> |"1"| task_ea762816
				linkStyle 13 stroke:#0bc14e,color:#0bc14e
				task_80311633[" configure_routers : Configure Internet Routers"]
				style task_80311633 stroke:#0bc14e,fill:#ffffff
				role_86f38763 --> |"2"| task_80311633
				linkStyle 14 stroke:#0bc14e,color:#0bc14e
			%% End of the role 'configure_routers'
		%% End of the play 'Play: Deploy CDX-E Internet Routing Infrastructure (1)'
		%% Start of the play 'Play: Deploy CDX-E Internet Services (1)'
		play_78e2550e["Play: Deploy CDX-E Internet Services (1)"]
		style play_78e2550e fill:#06c696,color:#ffffff
		playbook_774bee34 --> |"3"| play_78e2550e
		linkStyle 15 stroke:#06c696,color:#06c696
			pre_task_eeda9d90["[pre_task]  include_vars"]
			style pre_task_eeda9d90 stroke:#06c696,fill:#ffffff
			play_78e2550e --> |"1"| pre_task_eeda9d90
			linkStyle 16 stroke:#06c696,color:#06c696
			pre_task_fb0d3935["[pre_task]  include_vars"]
			style pre_task_fb0d3935 stroke:#06c696,fill:#ffffff
			play_78e2550e --> |"2"| pre_task_fb0d3935
			linkStyle 17 stroke:#06c696,color:#06c696
			%% Start of the role 'connect_repos'
			play_78e2550e --> |"3"| role_59609aa0
			linkStyle 18 stroke:#06c696,color:#06c696
			role_59609aa0("[role] connect_repos")
			style role_59609aa0 fill:#06c696,color:#ffffff,stroke:#06c696
				task_402903dc[" connect_repos : Connect Internet software repositories to CDX-E Network"]
				style task_402903dc stroke:#06c696,fill:#ffffff
				role_59609aa0 --> |"1"| task_402903dc
				linkStyle 19 stroke:#06c696,color:#06c696
				task_7e1ecc69[" connect_repos : Move Internet Repository VMs to Internet Servers VSphere Folder"]
				style task_7e1ecc69 stroke:#06c696,fill:#ffffff
				role_59609aa0 --> |"2"| task_7e1ecc69
				linkStyle 20 stroke:#06c696,color:#06c696
			%% End of the role 'connect_repos'
			%% Start of the role 'connect_kms'
			play_78e2550e --> |"4"| role_e893a5a2
			linkStyle 21 stroke:#06c696,color:#06c696
			role_e893a5a2("[role] connect_kms")
			style role_e893a5a2 fill:#06c696,color:#ffffff,stroke:#06c696
				task_a3d83906[" connect_kms : Connect Microsoft Windows Activation services to CDX-E Network"]
				style task_a3d83906 stroke:#06c696,fill:#ffffff
				role_e893a5a2 --> |"1"| task_a3d83906
				linkStyle 22 stroke:#06c696,color:#06c696
			%% End of the role 'connect_kms'
			%% Start of the role 'deploy_servers'
			play_78e2550e --> |"5"| role_2fc4efd0
			linkStyle 23 stroke:#06c696,color:#06c696
			role_2fc4efd0("[role] deploy_servers")
			style role_2fc4efd0 fill:#06c696,color:#ffffff,stroke:#06c696
				task_aedd5446[" deploy_servers : Initialize Terraform Environment"]
				style task_aedd5446 stroke:#06c696,fill:#ffffff
				role_2fc4efd0 --> |"1"| task_aedd5446
				linkStyle 24 stroke:#06c696,color:#06c696
				task_f0f134bb[" deploy_servers : DEPLOY: {{ task_title }}"]
				style task_f0f134bb stroke:#06c696,fill:#ffffff
				role_2fc4efd0 --> |"2"| task_f0f134bb
				linkStyle 25 stroke:#06c696,color:#06c696
			%% End of the role 'deploy_servers'
			%% Start of the role 'configure_web_server'
			play_78e2550e --> |"6"| role_a51ca601
			linkStyle 26 stroke:#06c696,color:#06c696
			role_a51ca601("[role] configure_web_server")
			style role_a51ca601 fill:#06c696,color:#ffffff,stroke:#06c696
				task_b8249d48[" configure_web_server : Wait for {{ vm }} to be available..."]
				style task_b8249d48 stroke:#06c696,fill:#ffffff
				role_a51ca601 --> |"1"| task_b8249d48
				linkStyle 27 stroke:#06c696,color:#06c696
				task_d8f329a1[" configure_web_server : {{ task_title }}"]
				style task_d8f329a1 stroke:#06c696,fill:#ffffff
				role_a51ca601 --> |"2"| task_d8f329a1
				linkStyle 28 stroke:#06c696,color:#06c696
			%% End of the role 'configure_web_server'
			%% Start of the role 'configure_nstp_server'
			play_78e2550e --> |"7"| role_ce4c14e1
			linkStyle 29 stroke:#06c696,color:#06c696
			role_ce4c14e1("[role] configure_nstp_server")
			style role_ce4c14e1 fill:#06c696,color:#ffffff,stroke:#06c696
				task_9ce5956c[" configure_nstp_server : Wait for {{ vm }} to be available..."]
				style task_9ce5956c stroke:#06c696,fill:#ffffff
				role_ce4c14e1 --> |"1"| task_9ce5956c
				linkStyle 30 stroke:#06c696,color:#06c696
				task_bf1910a9[" configure_nstp_server : {{ task_title }}"]
				style task_bf1910a9 stroke:#06c696,fill:#ffffff
				role_ce4c14e1 --> |"2"| task_bf1910a9
				linkStyle 31 stroke:#06c696,color:#06c696
				task_43189c49[" configure_nstp_server : Install {{ win_feature_name }}"]
				style task_43189c49 stroke:#06c696,fill:#ffffff
				role_ce4c14e1 --> |"3"| task_43189c49
				linkStyle 32 stroke:#06c696,color:#06c696
				task_3b7f7b19[" configure_nstp_server : Display Results"]
				style task_3b7f7b19 stroke:#06c696,fill:#ffffff
				role_ce4c14e1 --> |"4"| task_3b7f7b19
				linkStyle 33 stroke:#06c696,color:#06c696
				task_dcba0957[" configure_nstp_server : {{ task_title }}"]
				style task_dcba0957 stroke:#06c696,fill:#ffffff
				role_ce4c14e1 --> |"5"| task_dcba0957
				linkStyle 34 stroke:#06c696,color:#06c696
			%% End of the role 'configure_nstp_server'
			%% Start of the role 'activate_servers'
			play_78e2550e --> |"8"| role_56086898
			linkStyle 35 stroke:#06c696,color:#06c696
			role_56086898("[role] activate_servers")
			style role_56086898 fill:#06c696,color:#ffffff,stroke:#06c696
				task_1f2d21f7[" activate_servers : Setting Microsoft Windows Activation Source for {{ vm }}..."]
				style task_1f2d21f7 stroke:#06c696,fill:#ffffff
				role_56086898 --> |"1"| task_1f2d21f7
				linkStyle 36 stroke:#06c696,color:#06c696
				task_d8e0bd39[" activate_servers : Display Status"]
				style task_d8e0bd39 stroke:#06c696,fill:#ffffff
				role_56086898 --> |"2"| task_d8e0bd39
				linkStyle 37 stroke:#06c696,color:#06c696
				task_28499489[" activate_servers : Activate Microsoft Windows for {{ vm }}..."]
				style task_28499489 stroke:#06c696,fill:#ffffff
				role_56086898 --> |"3"| task_28499489
				linkStyle 38 stroke:#06c696,color:#06c696
				task_1d6ba19e[" activate_servers : Display Status"]
				style task_1d6ba19e stroke:#06c696,fill:#ffffff
				role_56086898 --> |"4"| task_1d6ba19e
				linkStyle 39 stroke:#06c696,color:#06c696
				task_c532d78c[" activate_servers : Setting Microsoft Windows Activation Source for {{ vm }}..."]
				style task_c532d78c stroke:#06c696,fill:#ffffff
				role_56086898 --> |"5"| task_c532d78c
				linkStyle 40 stroke:#06c696,color:#06c696
				task_4a0239b0[" activate_servers : Display Status"]
				style task_4a0239b0 stroke:#06c696,fill:#ffffff
				role_56086898 --> |"6"| task_4a0239b0
				linkStyle 41 stroke:#06c696,color:#06c696
				task_4eff7f39[" activate_servers : Activate Microsoft Windows for {{ vm }}..."]
				style task_4eff7f39 stroke:#06c696,fill:#ffffff
				role_56086898 --> |"7"| task_4eff7f39
				linkStyle 42 stroke:#06c696,color:#06c696
				task_b8e401f7[" activate_servers : Display Status"]
				style task_b8e401f7 stroke:#06c696,fill:#ffffff
				role_56086898 --> |"8"| task_b8e401f7
				linkStyle 43 stroke:#06c696,color:#06c696
			%% End of the role 'activate_servers'
		%% End of the play 'Play: Deploy CDX-E Internet Services (1)'
	%% End of the playbook 'cdx_internet/main.yml'


```
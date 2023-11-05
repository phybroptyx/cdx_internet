# Cyber Defense eXercise (CDX) Internet Environment Deployer
## main.yml Playbook

```mermaid
---
title: CDX-E Deployment Playbook Flowchart
---
%%{ init: { "flowchart": { "curve": "bumpX" } } }%%
flowchart LR
	%% Start of the playbook 'cdx_internet/main.yml'
	playbook_7872a04f("cdx_internet/main.yml")
		%% Start of the play 'Play: Initialize VSphere Environment (1)'
		play_c1698340["Play: Initialize VSphere Environment (1)"]
		style play_c1698340 fill:#8a8e3e,color:#ffffff
		playbook_7872a04f --> |"1"| play_c1698340
		linkStyle 0 stroke:#8a8e3e,color:#8a8e3e
			pre_task_9d93a6e7["[pre_task]  include_vars"]
			style pre_task_9d93a6e7 stroke:#8a8e3e,fill:#ffffff
			play_c1698340 --> |"1"| pre_task_9d93a6e7
			linkStyle 1 stroke:#8a8e3e,color:#8a8e3e
			pre_task_1be5cc2a["[pre_task]  include_vars"]
			style pre_task_1be5cc2a stroke:#8a8e3e,fill:#ffffff
			play_c1698340 --> |"2"| pre_task_1be5cc2a
			linkStyle 2 stroke:#8a8e3e,color:#8a8e3e
			%% Start of the role 'vsphere_init'
			play_c1698340 --> |"3"| role_1b651a69
			linkStyle 3 stroke:#8a8e3e,color:#8a8e3e
			role_1b651a69("[role] vsphere_init")
			style role_1b651a69 fill:#8a8e3e,color:#ffffff,stroke:#8a8e3e
				task_e084c328[" vsphere_init : Initialize Terraform Environment"]
				style task_e084c328 stroke:#8a8e3e,fill:#ffffff
				role_1b651a69 --> |"1"| task_e084c328
				linkStyle 4 stroke:#8a8e3e,color:#8a8e3e
				task_7e982487[" vsphere_init : DEPLOY: {{ task_title }}"]
				style task_7e982487 stroke:#8a8e3e,fill:#ffffff
				role_1b651a69 --> |"2"| task_7e982487
				linkStyle 5 stroke:#8a8e3e,color:#8a8e3e
			%% End of the role 'vsphere_init'
		%% End of the play 'Play: Initialize VSphere Environment (1)'
		%% Start of the play 'Play: Deploy CDX-E Internet Routing Infrastructure (1)'
		play_ba60489b["Play: Deploy CDX-E Internet Routing Infrastructure (1)"]
		style play_ba60489b fill:#1ea5ae,color:#ffffff
		playbook_7872a04f --> |"2"| play_ba60489b
		linkStyle 6 stroke:#1ea5ae,color:#1ea5ae
			pre_task_a8d81341["[pre_task]  include_vars"]
			style pre_task_a8d81341 stroke:#1ea5ae,fill:#ffffff
			play_ba60489b --> |"1"| pre_task_a8d81341
			linkStyle 7 stroke:#1ea5ae,color:#1ea5ae
			pre_task_414484c7["[pre_task]  include_vars"]
			style pre_task_414484c7 stroke:#1ea5ae,fill:#ffffff
			play_ba60489b --> |"2"| pre_task_414484c7
			linkStyle 8 stroke:#1ea5ae,color:#1ea5ae
			%% Start of the role 'deploy_routers'
			play_ba60489b --> |"3"| role_82ec84c3
			linkStyle 9 stroke:#1ea5ae,color:#1ea5ae
			role_82ec84c3("[role] deploy_routers")
			style role_82ec84c3 fill:#1ea5ae,color:#ffffff,stroke:#1ea5ae
				task_0e8c4539[" deploy_routers : Initialize Terraform Environment"]
				style task_0e8c4539 stroke:#1ea5ae,fill:#ffffff
				role_82ec84c3 --> |"1"| task_0e8c4539
				linkStyle 10 stroke:#1ea5ae,color:#1ea5ae
				task_189dfabc[" deploy_routers : DEPLOY: {{ task_title }}"]
				style task_189dfabc stroke:#1ea5ae,fill:#ffffff
				role_82ec84c3 --> |"2"| task_189dfabc
				linkStyle 11 stroke:#1ea5ae,color:#1ea5ae
				task_f2a7774b[" deploy_routers : Wait for Core Routers to be available..."]
				style task_f2a7774b stroke:#1ea5ae,fill:#ffffff
				role_82ec84c3 --> |"3"| task_f2a7774b
				linkStyle 12 stroke:#1ea5ae,color:#1ea5ae
				task_ca695a8e[" deploy_routers : Configure Internet Routers"]
				style task_ca695a8e stroke:#1ea5ae,fill:#ffffff
				role_82ec84c3 --> |"4"| task_ca695a8e
				linkStyle 13 stroke:#1ea5ae,color:#1ea5ae
			%% End of the role 'deploy_routers'
		%% End of the play 'Play: Deploy CDX-E Internet Routing Infrastructure (1)'
		%% Start of the play 'Play: Deploy CDX-E Internet Services (1)'
		play_5f920711["Play: Deploy CDX-E Internet Services (1)"]
		style play_5f920711 fill:#34bc10,color:#ffffff
		playbook_7872a04f --> |"3"| play_5f920711
		linkStyle 14 stroke:#34bc10,color:#34bc10
			pre_task_7188f2c7["[pre_task]  include_vars"]
			style pre_task_7188f2c7 stroke:#34bc10,fill:#ffffff
			play_5f920711 --> |"1"| pre_task_7188f2c7
			linkStyle 15 stroke:#34bc10,color:#34bc10
			pre_task_de17e0ba["[pre_task]  include_vars"]
			style pre_task_de17e0ba stroke:#34bc10,fill:#ffffff
			play_5f920711 --> |"2"| pre_task_de17e0ba
			linkStyle 16 stroke:#34bc10,color:#34bc10
			%% Start of the role 'deploy_services'
			play_5f920711 --> |"3"| role_e2d59b70
			linkStyle 17 stroke:#34bc10,color:#34bc10
			role_e2d59b70("[role] deploy_services")
			style role_e2d59b70 fill:#34bc10,color:#ffffff,stroke:#34bc10
				task_76fae09a[" deploy_services : Connect Internet services to CDX-E Network"]
				style task_76fae09a stroke:#34bc10,fill:#ffffff
				role_e2d59b70 --> |"1"| task_76fae09a
				linkStyle 18 stroke:#34bc10,color:#34bc10
				task_79edf065[" deploy_services : Move Internet services VMs to Internet Servers VSphere Folder"]
				style task_79edf065 stroke:#34bc10,fill:#ffffff
				role_e2d59b70 --> |"2"| task_79edf065
				linkStyle 19 stroke:#34bc10,color:#34bc10
				task_cba4ac4b[" deploy_services : Initialize Terraform Environment"]
				style task_cba4ac4b stroke:#34bc10,fill:#ffffff
				role_e2d59b70 --> |"3"| task_cba4ac4b
				linkStyle 20 stroke:#34bc10,color:#34bc10
				task_7392d078[" deploy_services : DEPLOY: {{ task_title }}"]
				style task_7392d078 stroke:#34bc10,fill:#ffffff
				role_e2d59b70 --> |"4"| task_7392d078
				linkStyle 21 stroke:#34bc10,color:#34bc10
				task_3a589515[" deploy_services : Wait for {{ vm }} to be available..."]
				style task_3a589515 stroke:#34bc10,fill:#ffffff
				role_e2d59b70 --> |"5"| task_3a589515
				linkStyle 22 stroke:#34bc10,color:#34bc10
				task_e2544481[" deploy_services : {{ task_title }}"]
				style task_e2544481 stroke:#34bc10,fill:#ffffff
				role_e2d59b70 --> |"6"| task_e2544481
				linkStyle 23 stroke:#34bc10,color:#34bc10
				task_d08d6b68[" deploy_services : Install {{ win_feature_name }}"]
				style task_d08d6b68 stroke:#34bc10,fill:#ffffff
				role_e2d59b70 --> |"7"| task_d08d6b68
				linkStyle 24 stroke:#34bc10,color:#34bc10
				task_c3a39594[" deploy_services : Display Results"]
				style task_c3a39594 stroke:#34bc10,fill:#ffffff
				role_e2d59b70 --> |"8"| task_c3a39594
				linkStyle 25 stroke:#34bc10,color:#34bc10
				task_d601c3d5[" deploy_services : {{ task_title }}"]
				style task_d601c3d5 stroke:#34bc10,fill:#ffffff
				role_e2d59b70 --> |"9"| task_d601c3d5
				linkStyle 26 stroke:#34bc10,color:#34bc10
				task_e60e0229[" deploy_services : Wait for {{ vm }} to be available..."]
				style task_e60e0229 stroke:#34bc10,fill:#ffffff
				role_e2d59b70 --> |"10"| task_e60e0229
				linkStyle 27 stroke:#34bc10,color:#34bc10
				task_2bdc93f3[" deploy_services : {{ task_title }}"]
				style task_2bdc93f3 stroke:#34bc10,fill:#ffffff
				role_e2d59b70 --> |"11"| task_2bdc93f3
				linkStyle 28 stroke:#34bc10,color:#34bc10
				task_c3d2bea1[" deploy_services : Setting Microsoft Windows Activation Source for {{ vm }}..."]
				style task_c3d2bea1 stroke:#34bc10,fill:#ffffff
				role_e2d59b70 --> |"12"| task_c3d2bea1
				linkStyle 29 stroke:#34bc10,color:#34bc10
				task_fb7d18e2[" deploy_services : Display Status"]
				style task_fb7d18e2 stroke:#34bc10,fill:#ffffff
				role_e2d59b70 --> |"13"| task_fb7d18e2
				linkStyle 30 stroke:#34bc10,color:#34bc10
				task_1caeec22[" deploy_services : Activate Microsoft Windows for {{ vm }}..."]
				style task_1caeec22 stroke:#34bc10,fill:#ffffff
				role_e2d59b70 --> |"14"| task_1caeec22
				linkStyle 31 stroke:#34bc10,color:#34bc10
				task_e1835042[" deploy_services : Display Status"]
				style task_e1835042 stroke:#34bc10,fill:#ffffff
				role_e2d59b70 --> |"15"| task_e1835042
				linkStyle 32 stroke:#34bc10,color:#34bc10
				task_4935a7ca[" deploy_services : Setting Microsoft Windows Activation Source for {{ vm }}..."]
				style task_4935a7ca stroke:#34bc10,fill:#ffffff
				role_e2d59b70 --> |"16"| task_4935a7ca
				linkStyle 33 stroke:#34bc10,color:#34bc10
				task_93ac44cd[" deploy_services : Display Status"]
				style task_93ac44cd stroke:#34bc10,fill:#ffffff
				role_e2d59b70 --> |"17"| task_93ac44cd
				linkStyle 34 stroke:#34bc10,color:#34bc10
				task_6f8217ac[" deploy_services : Activate Microsoft Windows for {{ vm }}..."]
				style task_6f8217ac stroke:#34bc10,fill:#ffffff
				role_e2d59b70 --> |"18"| task_6f8217ac
				linkStyle 35 stroke:#34bc10,color:#34bc10
				task_02db850f[" deploy_services : Display Status"]
				style task_02db850f stroke:#34bc10,fill:#ffffff
				role_e2d59b70 --> |"19"| task_02db850f
				linkStyle 36 stroke:#34bc10,color:#34bc10
			%% End of the role 'deploy_services'
		%% End of the play 'Play: Deploy CDX-E Internet Services (1)'
	%% End of the playbook 'cdx_internet/main.yml'




```
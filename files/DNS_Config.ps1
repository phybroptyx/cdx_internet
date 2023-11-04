Install-WindowsFeature -name DNS -IncludeManagementTools
Add-DnsServerPrimaryZone -Name com -ZoneFile com.dns
Add-DnsServerPrimaryZone -Name net -ZoneFile net.dns
Add-DnsServerPrimaryZone -Name org -ZoneFile org.dns
Add-DnsServerPrimaryZone -Name edu -ZoneFile edu.dns
Add-DnsServerPrimaryZone -Name gov -ZoneFile gov.dns
Add-DnsServerPrimaryZone -Name int -ZoneFile int.dns
Add-DnsServerPrimaryZone -Name mrvl -ZoneFile mrvl.dns
Add-DnsServerPrimaryZone -Name mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name ctf -ZoneFile ctf.dns
Add-DnsServerPrimaryZone -Name lab -ZoneFile lab.dns
Add-DnsServerPrimaryZone -Name onion -ZoneFile onion.dns
Add-DnsServerPrimaryZone -Name training -ZoneFile training.dns
Add-DnsServerPrimaryZone -Name io -ZoneFile io.dns
Add-DnsServerPrimaryZone -Name cn -ZoneFile cn.dns
Add-DnsServerPrimaryZone -Name ca -ZoneFile ca.dns
Add-DnsServerPrimaryZone -Name ru -ZoneFile ru.dns
Add-DnsServerPrimaryZone -Name ae -ZoneFile ae.dns
Add-DnsServerPrimaryZone -Name au -ZoneFile au.dns
Add-DnsServerPrimaryZone -Name bh -ZoneFile bh.dns
Add-DnsServerPrimaryZone -Name br -ZoneFile br.dns
Add-DnsServerPrimaryZone -Name ch -ZoneFile ch.dns
Add-DnsServerPrimaryZone -Name de -ZoneFile de.dns
Add-DnsServerPrimaryZone -Name dk -ZoneFile dk.dns
Add-DnsServerPrimaryZone -Name ee -ZoneFile ee.dns
Add-DnsServerPrimaryZone -Name eg -ZoneFile eg.dns
Add-DnsServerPrimaryZone -Name es -ZoneFile es.dns
Add-DnsServerPrimaryZone -Name eu -ZoneFile eu.dns
Add-DnsServerPrimaryZone -Name fi -ZoneFile fi.dns
Add-DnsServerPrimaryZone -Name fr -ZoneFile fr.dns
Add-DnsServerPrimaryZone -Name gr -ZoneFile gr.dns
Add-DnsServerPrimaryZone -Name gu -ZoneFile gu.dns
Add-DnsServerPrimaryZone -Name hk -ZoneFile hk.dns
Add-DnsServerPrimaryZone -Name ie -ZoneFile ie.dns
Add-DnsServerPrimaryZone -Name il -ZoneFile il.dns
Add-DnsServerPrimaryZone -Name in -ZoneFile in.dns
Add-DnsServerPrimaryZone -Name jp -ZoneFile jp.dns
Add-DnsServerPrimaryZone -Name kp -ZoneFile kp.dns
Add-DnsServerPrimaryZone -Name kr -ZoneFile kr.dns
Add-DnsServerPrimaryZone -Name mu -ZoneFile mu.dns
Add-DnsServerPrimaryZone -Name ng -ZoneFile ng.dns
Add-DnsServerPrimaryZone -Name nl -ZoneFile nl.dns
Add-DnsServerPrimaryZone -Name ph -ZoneFile ph.dns
Add-DnsServerPrimaryZone -Name qa -ZoneFile qa.dns
Add-DnsServerPrimaryZone -Name ro -ZoneFile ro.dns
Add-DnsServerPrimaryZone -Name sa -ZoneFile sa.dns
Add-DnsServerPrimaryZone -Name se -ZoneFile se.dns
Add-DnsServerPrimaryZone -Name tr -ZoneFile tr.dns
Add-DnsServerPrimaryZone -Name tw -ZoneFile tw.dns
Add-DnsServerPrimaryZone -Name uk -ZoneFile uk.dns
Add-DnsServerPrimaryZone -Name us -ZoneFile us.dns
Add-DnsServerPrimaryZone -Name za -ZoneFile za.dns
Add-DnsServerPrimaryZone -Name  midgard.mrvl -ZoneFile mrvl.dns
Add-DnsServerPrimaryZone -Name  asgard.mrvl -ZoneFile mrvl.dns
Add-DnsServerPrimaryZone -Name  knowhere.mrvl -ZoneFile mrvl.dns
Add-DnsServerPrimaryZone -Name  jotunheim.mrvl -ZoneFile mrvl.dns
Add-DnsServerPrimaryZone -Name  nidavellir.mrvl -ZoneFile mrvl.dns
Add-DnsServerPrimaryZone -Name  svartalfheim.mrvl -ZoneFile mrvl.dns
Add-DnsServerPrimaryZone -Name  xandar.mrvl -ZoneFile mrvl.dns
Add-DnsServerPrimaryZone -Name  hala.mrvl -ZoneFile mrvl.dns
Add-DnsServerPrimaryZone -Name  sakaar.mrvl -ZoneFile mrvl.dns
Add-DnsServerPrimaryZone -Name  kree.mrvl -ZoneFile mrvl.dns
Add-DnsServerPrimaryZone -Name  titan.mrvl -ZoneFile mrvl.dns
Add-DnsServerPrimaryZone -Name  ta-lo.mrvl -ZoneFile mrvl.dns
Add-DnsServerPrimaryZone -Name  osu.edu -ZoneFile edu.dns
Add-DnsServerPrimaryZone -Name  denver.edu -ZoneFile edu.dns
Add-DnsServerPrimaryZone -Name  uc.edu -ZoneFile edu.dns
Add-DnsServerPrimaryZone -Name  denhac.edu -ZoneFile edu.dns
Add-DnsServerPrimaryZone -Name  phoenix.edu -ZoneFile edu.dns
Add-DnsServerPrimaryZone -Name  ucla.edu -ZoneFile edu.dns
Add-DnsServerPrimaryZone -Name  mit.edu -ZoneFile edu.dns
Add-DnsServerPrimaryZone -Name  caltech.edu -ZoneFile edu.dns
Add-DnsServerPrimaryZone -Name  cmu.edu -ZoneFile edu.dns
Add-DnsServerPrimaryZone -Name  usafa.edu -ZoneFile edu.dns
Add-DnsServerPrimaryZone -Name  westpoint.edu -ZoneFile edu.dns
Add-DnsServerPrimaryZone -Name  coloradostate.edu -ZoneFile edu.dns
Add-DnsServerPrimaryZone -Name  mines.edu -ZoneFile edu.dns
Add-DnsServerPrimaryZone -Name  nist.gov -ZoneFile gov.dns
Add-DnsServerPrimaryZone -Name  root-servers.net -ZoneFile net.dns
Add-DnsServerPrimaryZone -Name  microsoft.com -ZoneFile com.dns
Add-DnsServerPrimaryZone -Name  cnn.com -ZoneFile com.dns
Add-DnsServerPrimaryZone -Name  linux.org -ZoneFile org.dns
Add-DnsServerPrimaryZone -Name  foxnews.com -ZoneFile com.dns
Add-DnsServerPrimaryZone -Name  msnbc.com -ZoneFile com.dns
Add-DnsServerPrimaryZone -Name  windows.com -ZoneFile com.dns
Add-DnsServerPrimaryZone -Name  windowsupdate.com -ZoneFile com.dns
Add-DnsServerPrimaryZone -Name  msftconnecttest.com -ZoneFile com.dns
Add-DnsServerPrimaryZone -Name  msftncsi.com -ZoneFile com.dns
Add-DnsServerPrimaryZone -Name  nsa.gov -ZoneFile gov.dns
Add-DnsServerPrimaryZone -Name  nasa.gov -ZoneFile gov.dns
Add-DnsServerPrimaryZone -Name  nro.gov -ZoneFile gov.dns
Add-DnsServerPrimaryZone -Name  af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name  navy.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name  marines.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name  army.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name  dia.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name  nato.int -ZoneFile int.dns
Add-DnsServerPrimaryZone -Name  spaceforce.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name  defense.gov -ZoneFile gov.dns
Add-DnsServerPrimaryZone -Name  whitehouse.gov -ZoneFile gov.dns
Add-DnsServerPrimaryZone -Name  usna.edu -ZoneFile edu.dns
Add-DnsServerPrimaryZone -Name  indopacom.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name  ustranscom.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name  cybercom.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name  centcom.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name  eucom.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name  socom.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name  stratcom.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name  northcom.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name  southcom.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name  bing.com -ZoneFile com.dns
Add-DnsServerPrimaryZone -Name  google.com -ZoneFile com.dns
Add-DnsServerPrimaryZone -Name  hp.com -ZoneFile com.dns
Add-DnsServerPrimaryZone -Name  dell.com -ZoneFile com.dns
Add-DnsServerPrimaryZone -Name  kali.org -ZoneFile org.dns
Add-DnsServerPrimaryZone -Name  readthedocs.io -ZoneFile io.dns
Add-DnsServerPrimaryZone -Name  espn.com -ZoneFile com.dns
Add-DnsServerPrimaryZone -Name  cisco.com -ZoneFile com.dns
Add-DnsServerPrimaryZone -Name  equinix.com -ZoneFile com.dns
Add-DnsServerPrimaryZone -Name  mitre.org -ZoneFile org.dns
Add-DnsServerPrimaryZone -Name  msn.com -ZoneFile com.dns
Add-DnsServerPrimaryZone -Name glb.nist.gov -ZoneFile gov.dns
Add-DnsServerPrimaryZone -Name wakanda.midgard.mrvl -ZoneFile mrvl.dns
Add-DnsServerPrimaryZone -Name atlantis.midgard.mrvl -ZoneFile mrvl.dns
Add-DnsServerPrimaryZone -Name stark-industries.midgard.mrvl -ZoneFile mrvl.dns
Add-DnsServerPrimaryZone -Name sanctum-santorum.midgard.mrvl -ZoneFile mrvl.dns
Add-DnsServerPrimaryZone -Name madripoor.midgard.mrvl -ZoneFile mrvl.dns
Add-DnsServerPrimaryZone -Name sokovia.midgard.mrvl -ZoneFile mrvl.dns
Add-DnsServerPrimaryZone -Name alcatraz.midgard.mrvl -ZoneFile mrvl.dns
Add-DnsServerPrimaryZone -Name kamar-taj.midgard.mrvl -ZoneFile mrvl.dns
Add-DnsServerPrimaryZone -Name shield.midgard.mrvl -ZoneFile mrvl.dns
Add-DnsServerPrimaryZone -Name latveria.midgard.mrvl -ZoneFile mrvl.dns
Add-DnsServerPrimaryZone -Name hells-kitchen.midgard.mrvl -ZoneFile mrvl.dns
Add-DnsServerPrimaryZone -Name go.microsoft.com -ZoneFile com.dns
Add-DnsServerPrimaryZone -Name sls.microsoft.com -ZoneFile com.dns
Add-DnsServerPrimaryZone -Name activation.sls.microsoft.com -ZoneFile com.dns
Add-DnsServerPrimaryZone -Name validation.sls.microsoft.com -ZoneFile com.dns
Add-DnsServerPrimaryZone -Name activation-v2.sls.microsoft.com -ZoneFile com.dns
Add-DnsServerPrimaryZone -Name validation-v2.sls.microsoft.com -ZoneFile com.dns
Add-DnsServerPrimaryZone -Name support.microsoft.com -ZoneFile com.dns
Add-DnsServerPrimaryZone -Name ix.equinix.com -ZoneFile com.dns
Add-DnsServerPrimaryZone -Name usno.navy.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name usnogps.navy.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name arcyber.army.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name netcom.army.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name cybercoe.army.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name 1stiocmd.army.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name marforcyber.marines.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name 1af.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name 2af.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name 3af.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name 4af.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name 5af.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name 7af.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name 8af.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name 9af.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name 11af.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name 12af.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name 16af.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name 17af.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name 18af.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name 19af.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name 20af.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name 22af.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name afcyber.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name acc.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name amc.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name aetc.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name afsoc.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name afcent.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name afdw.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name afgsc.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name aflcmc.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name afotec.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name afpc.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name afrc.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name anderson.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name andrews.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name aviano.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name barksdale.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name beale.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name bolling.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name cannon.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name columbus.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name gcic.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name grandforks.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name gunter.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name hickam.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name hurlburt.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name homestead.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name jb-charleston.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name jber.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name jb-mdl.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name jbsa.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name kadena.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name keesler.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name kirtland.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name kunsan.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name lakenheath.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name langley.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name luke.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name malmstrom.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name maxwell.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name mcchord.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name minot.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name misawa.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name moody.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name moron.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name nellis.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name osan.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name pacaf.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name ramstein.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name robins.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name scott.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name seymourjohnson.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name shaw.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name tacc.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name travis.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name tyndall.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name whiteman.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name wright-patterson.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name yokota.af.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name buckley.spaceforce.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name peterson.spaceforce.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name patrick.spaceforce.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name schriever.spaceforce.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name losangeles.spaceforce.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name smc.spaceforce.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -Name vandenberg.spaceforce.mil -ZoneFile mil.dns
Add-DnsServerPrimaryZone -NetworkID 13.33.255.0/24 -ZoneFile 255.33.13.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 15.72.178.0/24 -ZoneFile 178.72.15.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 104.100.242.0/24 -ZoneFile 242.100.104.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 104.215.95.0/24 -ZoneFile 95.215.104.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 104.72.48.0/24 -ZoneFile 48.72.104.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 104.97.193.0/24 -ZoneFile 193.97.104.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 104.100.226.0/24 -ZoneFile 226.100.104.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 104.100.233.0/24 -ZoneFile 233.100.104.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 104.100.234.0/24 -ZoneFile 134.100.104.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 129.6.13.0/24 -ZoneFile 13.6.129.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 129.6.15.0/24 -ZoneFile 15.6.129.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 131.107.255.0/24 -ZoneFile 255.107.131.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 132.163.4.0/24 -ZoneFile 4.163.132.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 132.163.96.0/24 -ZoneFile 96.163.132.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 132.163.97.0/24 -ZoneFile 97.163.132.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 136.160.88.0/24 -ZoneFile 88.160.136.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 143.84.78.0/24 -ZoneFile 78.84.143.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 143.84.99.0/24 -ZoneFile 84.84.143.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 143.204.35.0/24 -ZoneFile 35.204.143.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 151.101.1.0/24 -ZoneFile 1.101.151.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 156.112.106.0/24 -ZoneFile 106.112.156.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 156.112.108.0/24 -ZoneFile 108.112.156.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 165.193.126.0/24 -ZoneFile 126.193.165.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 172.217.12.0/24 -ZoneFile 12.217.172.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 172.226.176.0/24 -ZoneFile 176.226.172.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 172.226.181.0/24 -ZoneFile 181.226.172.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 172.232.3.0/24 -ZoneFile 3.232.172.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 184.31.198.0/24 -ZoneFile 198.31.184.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 185.199.111.0/24 -ZoneFile 111.199.185.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 192.112.36.0/24 -ZoneFile 36.112.192.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 192.124.249.0/24 -ZoneFile 249.124.192.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 192.203.230.0/24 -ZoneFile 230.203.192.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 192.33.4.0/24 -ZoneFile 4.33.192.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 192.36.148.0/24 -ZoneFile 148.36.192.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 192.5.41.0/24 -ZoneFile 41.5.192.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 192.5.5.0/24 -ZoneFile 5.5.192.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 192.58.128.0/24 -ZoneFile 128.58.192.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 193.0.14.0/24 -ZoneFile 14.0.193.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 198.41.0.0/24 -ZoneFile 0.41.198.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 198.97.190.0/24 -ZoneFile 190.97.198.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 199.7.83.0/24 -ZoneFile 83.7.199.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 199.7.91.0/24 -ZoneFile 91.7.199.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 199.9.14.0/24 -ZoneFile 14.9.199.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 202.12.27.0/24 -ZoneFile 27.12.202.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 204.34.198.0/24 -ZoneFile 198.34.204.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 204.79.197.0/24 -ZoneFile 197.79.204.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 208.66.175.0/24 -ZoneFile 175.66.208.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 208.80.153.0/24 -ZoneFile 153.80.208.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 23.204.166.0/24 -ZoneFile 166.204.23.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 23.35.200.0/24 -ZoneFile 200.35.23.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 23.36.249.0/24 -ZoneFile 249.36.23.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 23.64.155.0/24 -ZoneFile 155.64.23.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 23.64.164.0/24 -ZoneFile 164.64.23.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 23.96.0.0/24 -ZoneFile 0.96.23.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 24.56.178.0/24 -ZoneFile 178.56.24.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 46.244.164.0/24 -ZoneFile 164.244.46.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 52.164.206.0/24 -ZoneFile 206.164.52.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 214.3.16.0/24 -ZoneFile 16.3.214.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 23.208.159.0/24 -ZoneFile 159.208.23.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 23.204.70.0/24 -ZoneFile 70.204.23.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 23.211.39.0/24 -ZoneFile 39.211.23.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 23.211.93.0/24 -ZoneFile 93.211.23.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 23.211.18.0/24 -ZoneFile 18.211.23.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 23.213.54.0/24 -ZoneFile 54.213.23.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 23.214.40.0/24 -ZoneFile 40.214.23.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 23.214.42.0/24 -ZoneFile 42.214.23.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 23.214.63.0/24 -ZoneFile 63.214.23.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 23.43.60.0/24 -ZoneFile 60.43.23.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 3.212.51.0/24 -ZoneFile 51.212.3.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 52.222.30.0/24 -ZoneFile 30.222.52.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 52.61.85.0/24 -ZoneFile 85.61.52.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 96.127.62.0/24 -ZoneFile 62.127.96.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 98.138.219.0/24 -ZoneFile 219.138.98.in-addr.arpa.dns
Add-DnsServerPrimaryZone -NetworkID 184.25.206.0/24 -ZoneFile 206.25.184.in-addr.arpa.dns
Add-DnsServerResourceRecordA -Name a -ZoneName root-servers.net -IPv4Address 198.41.0.4
Add-DnsServerResourceRecordA -Name b -ZoneName root-servers.net -IPv4Address 199.9.14.201
Add-DnsServerResourceRecordA -Name c -ZoneName root-servers.net -IPv4Address 192.33.4.12
Add-DnsServerResourceRecordA -Name d -ZoneName root-servers.net -IPv4Address 199.7.91.13
Add-DnsServerResourceRecordA -Name e -ZoneName root-servers.net -IPv4Address 192.203.230.10
Add-DnsServerResourceRecordA -Name f -ZoneName root-servers.net -IPv4Address 192.5.5.241
Add-DnsServerResourceRecordA -Name g -ZoneName root-servers.net -IPv4Address 192.112.36.4
Add-DnsServerResourceRecordA -Name h -ZoneName root-servers.net -IPv4Address 198.97.190.53
Add-DnsServerResourceRecordA -Name i -ZoneName root-servers.net -IPv4Address 192.36.148.17
Add-DnsServerResourceRecordA -Name j -ZoneName root-servers.net -IPv4Address 192.58.128.30
Add-DnsServerResourceRecordA -Name k -ZoneName root-servers.net -IPv4Address 193.0.14.129
Add-DnsServerResourceRecordA -Name l -ZoneName root-servers.net -IPv4Address 199.7.83.42
Add-DnsServerResourceRecordA -Name m -ZoneName root-servers.net -IPv4Address 202.12.27.33
Add-DnsServerResourceRecordA -Name time-c-g -ZoneName nist.gov -IPv4Address 129.6.15.30
Add-DnsServerResourceRecordA -Name time-a-b -ZoneName nist.gov -IPv4Address 132.163.96.1
Add-DnsServerResourceRecordA -Name time-b-b -ZoneName nist.gov -IPv4Address 132.163.96.2
Add-DnsServerResourceRecordA -Name time-c-b -ZoneName nist.gov -IPv4Address 132.163.96.3
Add-DnsServerResourceRecordA -Name time-d-b -ZoneName nist.gov -IPv4Address 132.163.96.4
Add-DnsServerResourceRecordA -Name ntp-b -ZoneName nist.gov -IPv4Address 132.163.96.5
Add-DnsServerResourceRecordA -Name time-e-b -ZoneName nist.gov -IPv4Address 132.163.96.6
Add-DnsServerResourceRecordA -Name time-a-wwv -ZoneName nist.gov -IPv4Address 132.163.97.1
Add-DnsServerResourceRecordA -Name time-b-wwv -ZoneName nist.gov -IPv4Address 132.163.97.2
Add-DnsServerResourceRecordA -Name time-c-wwv -ZoneName nist.gov -IPv4Address 132.163.97.3
Add-DnsServerResourceRecordA -Name time-d-wwv -ZoneName nist.gov -IPv4Address 132.163.97.4
Add-DnsServerResourceRecordA -Name ntp-wwv -ZoneName nist.gov -IPv4Address 132.163.97.5
Add-DnsServerResourceRecordA -Name time-e-wwv -ZoneName nist.gov -IPv4Address 132.163.97.6
Add-DnsServerResourceRecordA -Name cdx-16af-wfe-01 -ZoneName 16af.af.mil -IPv4Address 23.214.40.141
Add-DnsServerResourceRecordA -Name cdx-1io-wfe-01 -ZoneName 1stiocmd.army.mil -IPv4Address 143.84.99.20
Add-DnsServerResourceRecordA -Name cdx-acc-wfe-01 -ZoneName acc.af.mil -IPv4Address 23.211.39.103
Add-DnsServerResourceRecordA -Name tdkp-fe-15 -ZoneName af.mil -IPv4Address 104.100.226.218
Add-DnsServerResourceRecordA -Name cdx-lcmc-wfe-01 -ZoneName aflcmc.af.mil -IPv4Address 172.226.181.65
Add-DnsServerResourceRecordA -Name cdx-amc-wfe-01 -ZoneName amc.af.mil -IPv4Address 172.226.181.66
Add-DnsServerResourceRecordA -Name cdx-arcy-wfe-01 -ZoneName arcyber.army.mil -IPv4Address 23.214.63.65
Add-DnsServerResourceRecordA -Name sdlc-ws-01 -ZoneName army.mil -IPv4Address 172.232.3.42
Add-DnsServerResourceRecordA -Name cdx-mitr-wfe-01 -ZoneName attack.mitre.org -IPv4Address 185.199.111.153
Add-DnsServerResourceRecordA -Name cdx-apt-mr-01 -ZoneName linux.org -IPv4Address 8.224.171.44
Add-DnsServerResourceRecordA -Name cdx-yum-mr-01 -ZoneName linux.org -IPv4Address 62.59.130.67
Add-DnsServerResourceRecordA -Name cdx-msft-wfe-02 -ZoneName bing.com -IPv4Address 204.79.197.200
Add-DnsServerResourceRecordA -Name cdx-bkf-wfe-01 -ZoneName buckley.ussf.mil -IPv4Address 172.226.176.220
Add-DnsServerResourceRecordA -Name cdx-csc-wfe-01 -ZoneName cisco.com -IPv4Address 23.211.18.40
Add-DnsServerResourceRecordA -Name cdx-cnn-fe-01 -ZoneName cnn.com -IPv4Address 151.101.1.67
Add-DnsServerResourceRecordA -Name cdx-arcy-wfe-02 -ZoneName cybercoe.army.mil -IPv4Address 143.84.78.18
Add-DnsServerResourceRecordA -Name cdx-exf-fe-01 -ZoneName cybercom.mil -IPv4Address 23.204.166.21
Add-DnsServerResourceRecordA -Name cdx-dod-wfe-03 -ZoneName defense.gov -IPv4Address 23.214.39.160
Add-DnsServerResourceRecordA -Name cdx-dell-wfe-04 -ZoneName dell.com -IPv4Address 184.25.206.43
Add-DnsServerResourceRecordA -Name cdx-disa-wfe-01 -ZoneName disa.mil -IPv4Address 156.112.108.76
Add-DnsServerResourceRecordA -Name cdx-dsn-wfe-05 -ZoneName espn.com -IPv4Address 13.33.255.55
Add-DnsServerResourceRecordA -Name cdx-eu-wfe-02 -ZoneName eucom.mil -IPv4Address 52.222.30.169
Add-DnsServerResourceRecordA -Name cdx-fx-wfe-02 -ZoneName foxnews.com -IPv4Address 23.214.42.140
Add-DnsServerResourceRecordA -Name ntp1 -ZoneName glb.nist.gov -IPv4Address 132.163.96.6
Add-DnsServerResourceRecordA -Name ntp -ZoneName glb.nist.gov -IPv4Address 165.193.126.230
Add-DnsServerResourceRecordA -Name ntp -ZoneName glb.nist.gov -IPv4Address 208.66.175.36
Add-DnsServerResourceRecordA -Name ntp -ZoneName glb.nist.gov -IPv4Address 24.56.178.141
Add-DnsServerResourceRecordA -Name cdx-gg-wfe-01 -ZoneName google.com -IPv4Address 172.217.12.4
Add-DnsServerResourceRecordA -Name cdx-hp-wfe-03 -ZoneName hp.com -IPv4Address 15.72.178.23
Add-DnsServerResourceRecordA -Name cdx-eqi-wfe-01 -ZoneName ix.equinix.com -IPv4Address 23.208.159.201
Add-DnsServerResourceRecordA -Name cdx-kli-fe-01 -ZoneName kali.org -IPv4Address 192.124.249.10
Add-DnsServerResourceRecordA -Name cdx-kli-fe-02 -ZoneName kali.training -IPv4Address 192.124.249.3
Add-DnsServerResourceRecordA -Name cdx-mar-wfe-12 -ZoneName marforcyber.marines.mil -IPv4Address 23.211.93.125
Add-DnsServerResourceRecordA -Name cdx-mar-wfe-02 -ZoneName marines.mil -IPv4Address 184.31.198.51
Add-DnsServerResourceRecordA -Name cdx-msft-wfe-03 -ZoneName microsoft.com -IPv4Address 23.204.70.60
Add-DnsServerResourceRecordA -Name cdx-msft-sus -ZoneName microsoft.com -IPv4Address 23.96.0.65
Add-DnsServerResourceRecordA -Name vld-ws-01 -ZoneName moody.af.mil -IPv4Address 104.72.48.87
Add-DnsServerResourceRecordA -Name cdx-msft-01 -ZoneName msftconnecttest.com -IPv4Address 13.107.4.52
Add-DnsServerResourceRecordA -Name cdx-msft-02 -ZoneName msftconnecttest.com -IPv4Address 52.164.206.56
Add-DnsServerResourceRecordA -Name dns -ZoneName msftncsi.com -IPv4Address 131.107.255.255
Add-DnsServerResourceRecordA -Name cdx-msft-wfe-05 -ZoneName msn.com -IPv4Address 204.79.197.203
Add-DnsServerResourceRecordA -Name cdx-msft-wfe-04 -ZoneName msnbc.com -IPv4Address 104.100.234.69
Add-DnsServerResourceRecordA -Name cdx-nato-wfe-01 -ZoneName nato.int -IPv4Address 23.213.54.35
Add-DnsServerResourceRecordA -Name hnns-ws-01 -ZoneName navy.mil -IPv4Address 104.97.193.61
Add-DnsServerResourceRecordA -Name cdx-ar-wfe-03 -ZoneName netcom.army.mil -IPv4Address 156.112.106.15
Add-DnsServerResourceRecordA -Name time -ZoneName nist.gov -IPv4Address 129.6.13.35
Add-DnsServerResourceRecordA -Name time-e-g -ZoneName nist.gov -IPv4Address 129.6.15.26
Add-DnsServerResourceRecordA -Name time-d-g -ZoneName nist.gov -IPv4Address 129.6.15.27
Add-DnsServerResourceRecordA -Name time-a-g -ZoneName nist.gov -IPv4Address 129.6.15.28
Add-DnsServerResourceRecordA -Name time-b-g -ZoneName nist.gov -IPv4Address 129.6.15.29
Add-DnsServerResourceRecordA -Name cdx-nst-wfe-03 -ZoneName nist.time.gov -IPv4Address 132.163.4.223
Add-DnsServerResourceRecordA -Name tdkp-ws-01 -ZoneName peterson.ussf.mil -IPv4Address 104.100.233.170
Add-DnsServerResourceRecordA -Name cdx-docs-wfe-01 -ZoneName readthedocs.io -IPv4Address 104.17.33.82
Add-DnsServerResourceRecordA -Name cdx-soc-wfe-01 -ZoneName socom.mil -IPv4Address 52.61.85.77
Add-DnsServerResourceRecordA -Name cdx-msft-wfe-06 -ZoneName support.microsoft.com -IPv4Address 23.11.216.158
Add-DnsServerResourceRecordA -Name cdx-msft-kms-01 -ZoneName activation.sls.microsoft.com -IPv4Address 23.96.0.80
Add-DnsServerResourceRecordA -Name cdx-afa-wfe-01 -ZoneName usafa.edu -IPv4Address 96.127.62.6
Add-DnsServerResourceRecordA -Name cdx-nav-wfe-02 -ZoneName usna.edu -IPv4Address 136.160.88.139
Add-DnsServerResourceRecordA -Name ntp2 -ZoneName usno.navy.mil -IPv4Address 192.5.41.209
Add-DnsServerResourceRecordA -Name tick -ZoneName usno.navy.mil -IPv4Address 192.5.41.40
Add-DnsServerResourceRecordA -Name tock -ZoneName usno.navy.mil -IPv4Address 192.5.41.41
Add-DnsServerResourceRecordA -Name tick -ZoneName usnogps.navy.mil -IPv4Address 204.34.198.40
Add-DnsServerResourceRecordA -Name tock -ZoneName usnogps.navy.mil -IPv4Address 204.34.198.40
Add-DnsServerResourceRecordA -Name cdx-ustc-wfe-01 -ZoneName ustranscom.mil -IPv4Address 214.3.16.180
Add-DnsServerResourceRecordA -Name cdx-usma-wfe-01 -ZoneName westpoint.edu -IPv4Address 3.212.51.88
Add-DnsServerResourceRecordA -Name cdx-wiki-wfe-04 -ZoneName wikipedia.org -IPv4Address 208.80.153.224
Add-DnsServerResourceRecordA -Name cdx-msft-sus -ZoneName windows.com -IPv4Address 23.96.0.65
Add-DnsServerResourceRecordA -Name cdx-msft-sus -ZoneName windowsupdate.com -IPv4Address 23.96.0.65
Add-DnsServerResourceRecordA -Name cdx-yah-wfe-07 -ZoneName yahoo.com -IPv4Address 98.138.219.231
Add-DnsServerResourceRecordCName -Name www -ZoneName 16af.af.mil -HostNameAlias cdx-16af-wfe-01.16af.af.mil
Add-DnsServerResourceRecordCName -Name www -ZoneName 1stiocmd.army.mil -HostNameAlias cdx-1io-wfe-01.1stiocmd.army.mil
Add-DnsServerResourceRecordCName -Name www -ZoneName acc.af.mil -HostNameAlias cdx-acc-wfe-01.acc.af.mil
Add-DnsServerResourceRecordCName -Name www -ZoneName af.mil -HostNameAlias tdkp-fe-15.af.mil
Add-DnsServerResourceRecordCName -Name www -ZoneName aflcmc.af.mil -HostNameAlias cdx-lcmc-wfe-01.aflcmc.af.mil
Add-DnsServerResourceRecordCName -Name www -ZoneName amc.af.mil -HostNameAlias cdx-amc-wfe-01.amc.af.mil
Add-DnsServerResourceRecordCName -Name www -ZoneName arcyber.army.mil -HostNameAlias cdx-arcy-wfe-01.arcyber.army.mil
Add-DnsServerResourceRecordCName -Name www -ZoneName army.mil -HostNameAlias sdlc-ws-01.army.mil
Add-DnsServerResourceRecordCName -Name apt -ZoneName linux.org -HostNameAlias cdx-apt-mr-01.linux.org
Add-DnsServerResourceRecordCName -Name yum -ZoneName linux.org -HostNameAlias cdx-yum-mr-01.linux.org
Add-DnsServerResourceRecordCName -Name kms -ZoneName activation.sls.microsoft.com -HostNameAlias cdx-msft-kms-01.activation.sls.microsoft.com

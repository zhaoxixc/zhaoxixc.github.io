'*****************************************************
'***用于crt软件收集NetApp Ontap Cmode日志***
'*****************************************************
Sub Main
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "set admin;rows 0"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "metrocluster check run"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "node show -fields serialnumber,node,systemid,model,vendor,health"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "vserver show -type admin"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "date"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "system controller show -fields node,system-id,model,part-number,serial-number"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "network interface show -fields data-protocol,address,role"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "network interface show -fields data-protocol,address,role,home-node,home-port,wwpn"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "network interface show -role node-mgmt -fields lif,status-admin,status-oper,address,home-node"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "cifs share show -fields vserver,share-name,cifs-server,path,file-umask,volume"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "cluster image show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "net int show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "sp show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "network route show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "vol show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "version"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "disk show -fields type,model,physical-size"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "run -node * -command sysconfig -a"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "run -node * -command sysconfig -ca"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "node show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "node show -fields uptime"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "aggr show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "aggr show -fields size,usedsize,percent-used,availsize,root,maxraidsize,diskcount,mirror,raidtype,node,storage-type,availsize,volcount,state"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "aggr show -root false -fields size,usedsize,percent-used,availsize"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "aggr show -instance"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "aggregate efficiency cross-volume-dedupe show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "aggr show -r"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "aggr show -s -fields disk,disk-type,disk-rpm,checksum-style,usable-size,total-size,is-disk-zeroed"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "aggr show-status -aggregate *"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "storage aggregate object-store config show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "storage aggregate object-store show-space"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "storage aggregate show -fields composite"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "broadcast-domain show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "cluster show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "cluster time-service ntp server show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "set -c off;set d;cluster kernel-service config show;set admin"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "cifs share show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "df -g"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "df -i"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "disk show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "export-policy rule show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "igroup show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "igroup show -v"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "ifgrp show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "ifgrp show -instance"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "license show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "lun show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "lun show -fields ostype,vserver,size,state,mapped,size-used,serial-hex"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "lun show -v"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "lun show -fields vserver,volume,path,state,mapped,size,size-used,serial-hex,mapped,space-reserve,space-allocation,creation-timestamp,node,ostype"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "lun show -m"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "lun show -fields volume"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "sp network show -fields ip-address,netmask,gateway -address-family IPv4"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "net port show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "network fcp adapter show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "network interface failover-groups show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "net int show -instance"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "network interface show -failover"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "network interface show -fields data-protocol,address,role,home-node,home-port,wwpn"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "network interface show -role cluster-mgmt -fields lif,status-admin,status-oper,address"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "network interface show -role node-mgmt -fields lif,status-admin,status-oper,address"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "net port show -link up -fields node,port,ipspace,broadcast-domain,link,mtu,speed-admin,speed-oper,health-status"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "network fcp adapter show -instance"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "network fcp adapter show -fields sfp-rx-power,sfp-tx-power"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "network device-discovery show -instance"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "run -node * sasadmin expander_map"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "run -node * sasadmin shelf"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "run -node * -command disk show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "run -node * -command storage show disk -p"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "run -node * -command storage show fault -v"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "run -node * -command sysconfig -V"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "run -node * -command sysconfig -d"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "run -node * -command sysconfig -r"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "run -node * environment status"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "run -node * -command rdfile /etc/qual_devices_v3"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "snapmirror show -fields lag-time,total-progress,healthy,relationship-group-type,state,status,schedule"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "snapshot list"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "snapshot show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "storage disk show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "storage disk show -fields power-on-hours,model,rpm,type,firmware-revision,serial-number,physical-size,usable-size"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "storage disk show -ssd-wear"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "storage disk show -fields grown-defect-list-count"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "storage disk error show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "storage disk show -broken"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "storage disk option show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "storage errors show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "storage failover show -fields node,partner-name,possible,state-description"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "storage shelf show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "storage path show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "storage port show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "storage port show -instance"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "controller memory dimm show -fields pds-id,slotname,uecc-count,cecc-count"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "storage shelf location-led show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "storage shelf show -port"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "storage shelf show -fields psu-op-status,fan-op-status,module-op-status, module-fw-revision,module-type,node"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "storage shelf show -fields shelf,serial-number,module-type,disk-count,module-fw-revision,product-id"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "system environment sensors show -fields node,state,name -state !normal"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "system chassis show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "system chassis fru show -state !ok,!GOOD"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "system health subsystem show -health !ok"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "system health alert show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "system controller fru show -fields node,fru-name,subsystem,status"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "system controller service-event show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "security certificate show -fields expiratio -type server"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "ucadmin show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "vol show -fields vserver,volume,volume-style-extended,aggr-list,aggregate,size,available,state,junction-path,junction-active,type,create-time,fractional-reserve,space-guarantee,files,files-used"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "set -c off;set d;vol show -fields vserver,volume,volume-style-extended,aggr-list,aggregate,size,available,state,junction-path,junction-active,type,create-time,fractional-reserve,space-guarantee,files,files-used;set admin"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "vol show -fields junction-path,node,aggregate,state,junction-active"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "vol show -fields policy,junction-path,size,used,files,files-used,aggr-list,node,security-style"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "set -c off;set d;cluster kernel-service config show -fields kcs-enable-takeover;set admin"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "vol show -fields percent-used"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "vol show -fields state"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "vol show -fields fractional-reserve,snapshot-policy"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "vol show -is-constituent true"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "vserver cifs share show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "vserver cifs show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "vserver export-policy rule show -fields clientmatch,policyname,ruleindex,protocol,rorule,rwrule,anon,superuser"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "vserver fcp initiator show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "vserver iscsi initiator show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "vserver nfs show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "vserver show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "vserver show -type data -fields allowed-protocols,admin-state,operational-state,type"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "vserver iscsi show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "vserver cifs show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "vserver fcp show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "vserver nfs show -fields v3,v4.0,v4.1"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "vserver show-aggregates"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "vserver show-protocols"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "vserver services name-service dns show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "set -c off;set d;run -node * ha-config show;set admin"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "set -c off;set d;system controller fru led show;set admin"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "metrocluster show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "metrocluster node show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "metrocluster vserver show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "cluster peer show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "run -node * storage show switch"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "run -node * storage show bridge"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "event log show -severity EMERGENCY"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "event log show -severity ALERT"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "event log show -severity WARNING"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "event log show -severity ERROR"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "statistics node show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "qos statistics latency show -iterations 5"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "qos statistics performance show -iterations 5"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "run -node * -command sysstat -suc 9"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "metrocluster check show"
crt.Screen.Send vbCr
crt.Screen.waitForString "::>"
crt.Screen.Send "set admin"
crt.Screen.Send vbCr
End Sub

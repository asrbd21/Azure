#!/bin/bash
## Create ressource group 
azure group create --name "ResDevWebRG" --location "westeurope"
## Create storage account 
azure storage account create "resdevwebrgsa1" --kind "Storage" --sku-name "LRS" --location "westeurope" --resource-group "ResDevWebRG"
## Create Vnet 
azure network vnet create --resource-group "ResDevWebRG" --name "ResDevWebAS" -a 10.0.0.0/16 --location "westeurope"
## Create Vnet Subnet
azure network vnet subnet create --resource-group "ResDevWebRG" --vnet-name "ResDevWebAS" --name "ResDevWebRG-SubNet1" --address-prefix "10.0.0.0/24"
## Create availability group 
azure availset create --name "ResDevWebAS" --platform-fault-domain-count "3" --platform-update-domain-count "5" --resource-group "ResDevWebRG" --location "westeurope"
## Create VM1 
azure vm create --resource-group "ResDevWebRG" --name "ResDevWebVM1" --image-urn "Win2012R2Datacenter" --os-disk-vhd "resdevwebwm1.vhd" --location "westeurope" --vm-size "Standard_A1" --storage-account-name "resdevwebrgsa1" --os-type "Windows" --vnet-name "ResDevWebAS" --vnet-subnet-name "ResDevWebRG-SubNet1" --nic-name "ResDevWebVM1-ext" --public-ip-allocation-method "Dynamic" --public-ip-name "ResDevWebVM1" --public-ip-domain-name "resdevwebvm1" -u "Student" -p Pa$$w0rd1234#
## Create VM2
azure vm create --resource-group "ResDevWebRG" --name "ResDevWebVM2" --image-urn "Win2012R2Datacenter" --os-disk-vhd "resdevwebwm2.vhd" --location "westeurope" --vm-size "Standard_A1" --storage-account-name "resdevwebrgsa1" --os-type "Windows" --vnet-name "ResDevWebAS" --vnet-subnet-name "ResDevWebRG-SubNet1" --nic-name "ResDevWebVM2-ext" --public-ip-allocation-method "Dynamic" --public-ip-name "ResDevWebVM2" --public-ip-domain-name "resdevwebvm2" -u "Student" -p Pa$$w0rd1234#


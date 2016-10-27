#!/bin/bash
#EXO1
azure group create --name "AdatumLabRG" --location "westeurope"
azure network vnet create --resource-group "AdatumLabRG" -n "HQ" -a 10.0.0.0/16 --location "westeurope"
azure network vnet subnet create --resource-group AdatumLabRG --vnet-name HQ  --name Subnet1 --address-prefix 10.0.0.0/24
azure network vnet subnet create --resource-group AdatumLabRG --vnet-name HQ  --name Subnet2 --address-prefix 10.0.1.0/24
#Vérification
azure network vnet list
#EXO 2 
azure group create --name "AdatumtestRG" --location "westeurope"
azure network vnet create --resource-group AdatumLabRG --vnet-name AdatumtestVnet --address-prefix 192.168.0.0/24
azure network vnet subnet create --resource-group AdatumLabRG --vnet-name AdatumtestVnet --name FrontEnd --address-prefix 192.168.0.0/25
#Vérification
azure network vnet list


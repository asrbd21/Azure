#!/bin/bash
azure storage account create adatumlabrg1sa1 --kind Storage --sku-name LRS --location westeurope --resource-group adatumlabrg
azure vm create --resource-group adatumlabrg --name ResDevDB1 --image-urn Win2012R2Datacenter --os-disk-vhd ResDevDB1.vhd --location westeurope --vm-size Standard_A2 --storage-account-name adatumlabrg1sa1 --os-type Windows --vnet-name HQ --vnet-subnet-name Subnet1 --nic-name resdevdb1-ext -u Student -p Pa$$w0rd1234!

azure vm create --resource-group adatumlabrg --name ResDevDB2 --image-urn Win2012R2Datacenter --os-disk-vhd OSDisk.vhd --location westeurope --vm-size Standard_A4 --storage-account-name adatumlabrg1sa1 --os-type Windows --vnet-name HQ --vnet-subnet-name Subnet1 --nic-name HQnanor --public-ip-allocation-method Dynamic -u Student -p Pa$$w0rd1234!


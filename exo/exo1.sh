#!/bin/bash
azure login
azure group create --name "TestRG1" --location "westeurope"
azure group create --name "TestRG2" --location "westus"
azure appserviceplan create --name TestRG1AppServicePlan --location "west europe" --resource-group TestRG1 --sku S0 --instances 1
azure webapp create --name "TestWebApp20162710" --resource-group "TestRG1" --location "westeurope" TestRG1AppServicePlan
azure resource list -g TestRG1
azure appserviceplan create --name TestRG1AppServicePlan --location "west europe" --resource-group TestRG2 --sku P1 --instances 1
zure webapp config set --name nanorwebapp --resource-group TestRG2
azure resource list -g TestRG2

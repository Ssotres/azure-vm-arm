#!/bin/bash

# Variables
RESOURCE_GROUP="MyResourceGroup"
LOCATION="eastus"
TEMPLATE_FILE="templates/azuredeploy.json"

echo "Creando grupo de recursos..."
az group create --name $RESOURCE_GROUP --location $LOCATION

echo "Desplegando plantilla ARM..."
az deployment group create \
  --resource-group $RESOURCE_GROUP \
  --template-file $TEMPLATE_FILE \
  --parameters vmName=winserver-vm adminUsername=azureuser adminPassword='P@ssw0rd1234!'

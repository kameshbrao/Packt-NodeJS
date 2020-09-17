#!/bin/bash

export AKS_RESOURCE_GROUP=myResourceGroup
export AKS_CLUSTER_NAME=myAKSCluster
export ACR_RESOURCE_GROUP=DevopsTest-rg
export ACR_NAME=DevopsTestReg

# Get the id of the service principal configured for AKS
export CLIENT_ID=$(az aks show --resource-group $AKS_RESOURCE_GROUP --name $AKS_CLUSTER_NAME --query "servicePrincipalProfile.clientId" --output tsv)

# Get the ACR registry resource id
export ACR_ID=$(az acr show --name $ACR_NAME --resource-group $ACR_RESOURCE_GROUP --query "id" --output tsv)

# Create role assignment
az role assignment create --assignee $CLIENT_ID --role Reader --scope $ACR_ID
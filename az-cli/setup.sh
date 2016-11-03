#!/usr/bin/env bash
if ! az vm list ; then
  az login
fi

az account set --name azure-demos

if [ -z $(az resource group exists --name vmgroup1) ]; then
  az resource group create --name vmgroup1 --location westus
fi

history -r cmd.txt
# Azure Python CLI Demo
This demo will walk through the Python based Azure CLI illustrating VM creation and 
documentation.

## Setup
From this directory run `./setup.sh`. This script will ensure the `az` is logged in, the
correct subscription is selected and the expected resource group is created. The setup
script will also add all of the commands below into the bash history.

## Commands
- `az`
- `az vm list`
- `az vm list --out tsv | grep southcentralus | cut -f8`
- `az vm list --out jsonc`
- `az vm list --out json | jpterm # [].[name,storageProfile.osDisk.osType]`
- `az vm list --query "[].{name:name,os:storageProfile.osDisk.osType}"`
- `az vm list --query [0].id --out tsv`
- `az vm create -h`
- `az vm create -g [tabs] -n --image [tab]`
- `MyIP=$(az vm create -g vmgroup1 -n mydemovm3 --image ubuntults --admin-username ubuntu --query publicIpAddress --out tsv) && ssh ubuntu@$MyIP`

## Teardown
From this directory run `./teardown.sh`. This script will clean up the environment.
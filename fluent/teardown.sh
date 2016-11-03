#!/usr/bin/env bash

git checkout -- ./compute-java-manage-vm
az account set --name azure-demos
az resource group delete --name javaFluentDemo

#!/usr/bin/env bash

./teardown.sh
if [ -e '/Applications/IntelliJ IDEA.app' ]; then
  open -a 'IntelliJ IDEA' compute-java-manage-vm/
else
  open -a 'IntelliJ IDEA CE' compute-java-manage-vm/
fi
#!/bin/bash
set -e

# Create the required file.
sudo touch /home/demo.txt

# Owner: read/write/execute; group: read/write; others: read.
sudo chmod 764 /home/demo.txt

# Display the result.
ls -l /home/demo.txt
stat -c 'File: %n | Permissions: %a (%A) | Owner: %U | Group: %G' /home/demo.txt

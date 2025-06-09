#!/bin/bash

# Replace these with your actual values or use GitHub Secrets
VM_IP=$1
USERNAME="azureuser"
ENDPOINT=$2
API_KEY=$3

ssh ${USERNAME}@${VM_IP} << EOF
  docker run -d -p 5000:5000 \
    -e EULA=accept \
    -e BILLING_ENDPOINT=${ENDPOINT} \
    -e API_KEY=${API_KEY} \
    --name docint-layout \
    mcr.microsoft.com/azure-cognitive-services/form-recognizer/layout-4.0
EOF
